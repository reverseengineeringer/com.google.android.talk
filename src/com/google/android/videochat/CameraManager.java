package com.google.android.videochat;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.videochat.util.LogUtil;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

class CameraManager
{
  private static final int CAMERA_STATE_CLOSED = 0;
  private static final int CAMERA_STATE_NATIVE_WANTS = 1;
  private static final int CAMERA_STATE_RUNNING = 2;
  private static final int CAMERA_STATE_SUSPENDED = 3;
  private static final boolean DEBUG = false;
  private static final int DEFAULT_FRAME_RATE = 15;
  private static final int DELAY_BEFORE_FIRST_DIM_FRAME_PUSH_MS = 1000;
  private static final int DELAY_BETWEEN_DIM_FRAME_PUSH_MS = 1000;
  private static final int FRAME_PUSHER_MAX_WAIT_MS = 1000;
  private static final int FRAME_PUSHER_PUSH_FRAME_MSG = 100;
  private static final int FRAME_PUSHER_QUIT_MSG = 101;
  private static final String TAG = "vclib:CameraManager";
  private static final String TEST_STABILIZATION = null;
  private static volatile CameraManager sInstance;
  private static final Object sInstanceLock = new Object();
  private CameraManagerCallback mCallback;
  private Camera mCamera;
  private final Object mCameraLock = new Object();
  private CameraSpecificSettings[] mCameraSettings;
  private int mCameraState;
  private int mCurrentCameraIndex;
  private Object mCurrentCameraLock = new Object();
  private CameraSpecificSettings mCurrentCameraSettings;
  private CameraSpecification mDefaultCamera;
  private boolean mDisableCamera;
  private FrameOutputParameters mFinalOutputParams;
  private Handler mFramePusher;
  private final Object mFramePusherLock = new Object();
  private boolean mFramePusherPending;
  private final Runnable mFramePusherRunnable = new Runnable()
  {
    public void run()
    {
      
      synchronized (mFramePusherLock)
      {
        CameraManager.access$202(CameraManager.this, false);
        CameraManager.access$302(CameraManager.this, new Handler(new Handler.Callback()
        {
          public boolean handleMessage(Message paramAnonymous2Message)
          {
            int i = 0;
            synchronized (mFramePusherLock)
            {
              if ((what == 101) || (mFramePusher == null)) {
                Looper.myLooper().quit();
              }
              while (what != 100)
              {
                if (i != 0) {
                  CameraManager.this.nativePushPausedFrame(System.nanoTime());
                }
                return true;
              }
              i = 1;
              mFramePusher.sendEmptyMessageDelayed(100, 1000L);
            }
          }
        }));
        mFramePusher.sendEmptyMessageDelayed(100, 1000L);
        mFramePusherLock.notify();
        Looper.loop();
        return;
      }
    }
  };
  private boolean mHaveReadCameraIds = false;
  private FrameOutputParameters mLastReportedParameters;
  private long mLastSourceTimeNs;
  private long mLastTranslatedTimeNs;
  private long mLastWallClockTimeNs;
  private MediaPlayer mMediaPlayer;
  private int mNumAvailableCameras;
  private SurfaceTexture mSurfaceTexture;
  
  private CameraManager()
  {
    if (Log.isLoggable("Talk.disableCamera", 2))
    {
      Log.w("vclib:CameraManager", "Disabling camera");
      mDisableCamera = true;
    }
    mLastWallClockTimeNs = System.nanoTime();
    mLastTranslatedTimeNs = 0L;
    LogUtil.refreshTalkLogLevel();
    readCameraIds();
  }
  
  public static boolean acquireCameraNative()
  {
    return getInstance().openCameraForNative();
  }
  
  private void chooseDefaultCamera()
  {
    readCameraIds();
    if (mNumAvailableCameras == 0) {
      return;
    }
    int i;
    if (mDefaultCamera != null)
    {
      i = 0;
      if (i < mNumAvailableCameras)
      {
        if (mCameraSettings[i].cameraId != mDefaultCamera.cameraId) {
          break label103;
        }
        mCurrentCameraIndex = i;
        if (mDefaultCamera.previewSize != null)
        {
          mCameraSettings[i].previewSize = mDefaultCamera.previewSize;
          mCameraSettings[i].previewSizeIsValid = true;
        }
      }
    }
    label103:
    label145:
    for (;;)
    {
      mCurrentCameraSettings = mCameraSettings[mCurrentCameraIndex];
      return;
      i += 1;
      break;
      i = 0;
      for (;;)
      {
        if (i >= mNumAvailableCameras) {
          break label145;
        }
        if (mCameraSettings[i].cameraIsFrontFacing)
        {
          mCurrentCameraIndex = i;
          break;
        }
        i += 1;
      }
    }
  }
  
  private static int[] convertIntegerListToIntArray(List<Integer> paramList)
  {
    int[] arrayOfInt = new int[paramList.size()];
    int i = 0;
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      arrayOfInt[i] = ((Integer)paramList.next()).intValue();
      i += 1;
    }
    return arrayOfInt;
  }
  
  private void createLastFramePusher()
  {
    synchronized (mFramePusherLock)
    {
      Thread localThread = new Thread(mFramePusherRunnable);
      localThread.setName("frame push");
      localThread.start();
      mFramePusherPending = true;
      return;
    }
  }
  
  private void destroyLastFramePusher()
  {
    synchronized (mFramePusherLock)
    {
      if (mFramePusher == null)
      {
        boolean bool = mFramePusherPending;
        if (!bool) {}
      }
    }
    try
    {
      mFramePusherLock.wait(1000L);
      if (mFramePusher != null)
      {
        mFramePusher.removeMessages(0);
        mFramePusher.sendEmptyMessage(101);
        mFramePusher = null;
      }
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  private void ensureCameraChosen()
  {
    synchronized (mCurrentCameraLock)
    {
      if (mCurrentCameraSettings == null) {
        chooseDefaultCamera();
      }
      return;
    }
  }
  
  private void frameTimeBasisChanged()
  {
    mLastSourceTimeNs = 0L;
  }
  
  public static CameraManager getInstance()
  {
    if (sInstance == null) {}
    synchronized (sInstanceLock)
    {
      if (sInstance == null) {
        sInstance = new CameraManager();
      }
      return sInstance;
    }
  }
  
  private int[] getSupportedFrameRates()
  {
    synchronized (mCameraLock)
    {
      if (mCamera == null)
      {
        Log.e("vclib:CameraManager", "no camera, so returning null from getSupportedFrameRates");
        return null;
      }
      List localList1 = mCamera.getParameters().getSupportedPreviewFrameRates();
      if (localList1 == null)
      {
        LogUtil.LOGV("vclib:CameraManager", "Camera getSupportedPreviewFrameRates returned null");
        return new int[] { 15 };
      }
    }
    LogUtil.LOGD("vclib:CameraManager", "Camera getSupportedFrameRates " + localList2.size());
    return convertIntegerListToIntArray(localList2);
  }
  
  public static int[] getSupportedFrameRatesNative()
  {
    return getInstance().getSupportedFrameRates();
  }
  
  private final native void nativePushPausedFrame(long paramLong);
  
  private boolean openCameraForNative()
  {
    for (;;)
    {
      synchronized (mCameraLock)
      {
        if (mDisableCamera) {
          break label104;
        }
        LogUtil.LOGD("vclib:CameraManager", "openCameraForNative state: " + mCameraState);
        switch (mCameraState)
        {
        case 2: 
          return true;
        case 0: 
        case 3: 
          mCameraState = 1;
        }
      }
      LogUtil.Logwtf("vclib:CameraManager", "got openCameraForNative in state NATIVE_WANTS");
      continue;
      label104:
      return false;
    }
  }
  
  private void openCameraIfNeeded()
  {
    boolean bool = true;
    for (;;)
    {
      synchronized (mCameraLock)
      {
        if ((mCamera == null) && (!mDisableCamera))
        {
          ensureCameraChosen();
          Log.i("vclib:CameraManager", "Opening Camera " + mCurrentCameraSettings.cameraId);
          mCamera = Camera.open(mCurrentCameraSettings.cameraId);
          Camera.Parameters localParameters = mCamera.getParameters();
          if ("true".equals(localParameters.get("video-stabilization-supported"))) {
            localParameters.set("video-stabilization", "false");
          }
          Object localObject3;
          if (!mCurrentCameraSettings.haveReadCameraParameters)
          {
            localObject3 = mCurrentCameraSettings;
            if ((localParameters.isAutoExposureLockSupported()) && (localParameters.isAutoWhiteBalanceLockSupported()))
            {
              cameraSupports3ALocks = bool;
              mCurrentCameraSettings.haveReadCameraParameters = true;
            }
          }
          else
          {
            if (!mCurrentCameraSettings.previewSizeIsValid)
            {
              mCurrentCameraSettings.previewSize = mCallback.getCaptureSizeForCamera(localParameters.getSupportedPreviewSizes());
              mCurrentCameraSettings.previewSizeIsValid = true;
            }
            LogUtil.LOGV("vclib:CameraManager", "Setting camera preview size to " + mCurrentCameraSettings.previewSize.toString());
            localParameters.setPreviewSize(mCurrentCameraSettings.previewSize.width, mCurrentCameraSettings.previewSize.height);
            if (mFinalOutputParams == null) {
              break label368;
            }
            i = mFinalOutputParams.frameRate;
            localObject3 = localParameters.getSupportedPreviewFrameRates().iterator();
            if (((Iterator)localObject3).hasNext())
            {
              if (((Integer)((Iterator)localObject3).next()).intValue() != i) {
                continue;
              }
              localParameters.setPreviewFrameRate(i);
            }
            mCamera.setParameters(localParameters);
            mCallback.onCameraOpen(mCurrentCameraSettings.previewSize, mCurrentCameraSettings.orientation, mCurrentCameraSettings.cameraIsFrontFacing);
          }
        }
        else
        {
          return;
        }
      }
      bool = false;
      continue;
      label368:
      int i = 15;
    }
  }
  
  private void readCameraIds()
  {
    if (!mHaveReadCameraIds)
    {
      Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
      mNumAvailableCameras = Camera.getNumberOfCameras();
      mCameraSettings = new CameraSpecificSettings[mNumAvailableCameras];
      int i = 0;
      if (i < mNumAvailableCameras)
      {
        Camera.getCameraInfo(i, localCameraInfo);
        mCameraSettings[i] = new CameraSpecificSettings(null);
        mCameraSettings[i].cameraId = i;
        CameraSpecificSettings localCameraSpecificSettings = mCameraSettings[i];
        if (facing == 1) {}
        for (boolean bool = true;; bool = false)
        {
          cameraIsFrontFacing = bool;
          mCameraSettings[i].orientation = orientation;
          i += 1;
          break;
        }
      }
      mHaveReadCameraIds = true;
    }
  }
  
  private void releaseCamera()
  {
    synchronized (mCameraLock)
    {
      Log.i("vclib:CameraManager", "releaseCamera");
      if (mCamera != null)
      {
        mCamera.stopPreview();
        mCamera.release();
        mCamera = null;
      }
      return;
    }
  }
  
  private void releaseCameraForNative()
  {
    synchronized (mCameraLock)
    {
      if (!mDisableCamera)
      {
        LogUtil.LOGD("vclib:CameraManager", "releaseCameraForNative state: " + mCameraState);
        if (mCameraState == 1)
        {
          mCameraState = 0;
          releaseCamera();
          if (mCamera != null) {
            LogUtil.Logwtf("vclib:CameraManager", "releaseForNative called while in NATIVE_WANTS but camera didn't actually release");
          }
        }
      }
      return;
    }
  }
  
  public static void releaseCameraNative()
  {
    getInstance().releaseCameraForNative();
  }
  
  private void setCaptureParameters(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    LogUtil.LOGV("vclib:CameraManager", "Camera setCaptureParameters state: " + mCameraState + " " + paramInt1 + "x" + paramInt2 + " " + paramInt4 + " fps");
    synchronized (mCameraLock)
    {
      mFinalOutputParams = new FrameOutputParameters(new Size(paramInt1, paramInt2), paramInt4);
      if (mCallback != null) {
        mCallback.onFrameOutputSet(mFinalOutputParams);
      }
      return;
    }
  }
  
  public static void setCaptureParametersNative(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    getInstance().setCaptureParameters(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  private void useCameraInternal(int paramInt, Size paramSize)
  {
    for (;;)
    {
      synchronized (mCameraLock)
      {
        Log.i("vclib:CameraManager", "switchCamera state: " + mCameraState);
        releaseCamera();
        mCurrentCameraIndex = paramInt;
        synchronized (mCurrentCameraLock)
        {
          mCurrentCameraSettings = mCameraSettings[mCurrentCameraIndex];
          if (paramSize != null)
          {
            mCurrentCameraSettings.previewSize = paramSize;
            mCurrentCameraSettings.previewSizeIsValid = true;
          }
          switch (mCameraState)
          {
          case 2: 
            return;
          }
        }
      }
      openCameraIfNeeded();
      try
      {
        if (TEST_STABILIZATION != null)
        {
          if (1 == 0) {
            break label174;
          }
          throw new IOException("not supported");
        }
      }
      catch (IOException paramSize)
      {
        LogUtil.LOGE("vclib:CameraManager", "setPreviewTexture failed");
        return;
      }
      mCamera.setPreviewTexture(mSurfaceTexture);
      label174:
      LogUtil.LOGV("vclib:CameraManager", "switchCamera calling startPreview");
      mCamera.startPreview();
    }
  }
  
  public boolean arePreview3ALocksSupported()
  {
    synchronized (mCameraLock)
    {
      if (mCurrentCameraSettings == null)
      {
        LogUtil.LOGE("vclib:CameraManager", "Calling arePreview3ALocksSupported without a current camera!");
        return false;
      }
      if (!mCurrentCameraSettings.haveReadCameraParameters)
      {
        LogUtil.LOGE("vclib:CameraManager", "Calling arePreview3ALocksSupported before reading camera parameters!");
        return false;
      }
    }
    boolean bool = mCurrentCameraSettings.cameraSupports3ALocks;
    return bool;
  }
  
  public int getCurrentCameraId()
  {
    return mCameraSettings[mCurrentCameraIndex].cameraId;
  }
  
  public FrameOutputParameters getCurrentFrameOutputParameters()
  {
    return mFinalOutputParams;
  }
  
  public void reset()
  {
    synchronized (mCameraLock)
    {
      if (!mDisableCamera)
      {
        LogUtil.LOGD("vclib:CameraManager", "reset state: " + mCameraState);
        destroyLastFramePusher();
        mCameraState = 0;
        releaseCamera();
        chooseDefaultCamera();
        mFinalOutputParams = null;
      }
      return;
    }
  }
  
  public void setApplicationCallback(CameraManagerCallback paramCameraManagerCallback)
  {
    synchronized (mCameraLock)
    {
      mCallback = paramCameraManagerCallback;
      return;
    }
  }
  
  public void setDefaultCamera(CameraSpecification paramCameraSpecification)
  {
    mDefaultCamera = paramCameraSpecification;
    ensureCameraChosen();
  }
  
  public void setPreview3ALocks(boolean paramBoolean)
  {
    synchronized (mCameraLock)
    {
      if (mCameraState != 2)
      {
        LogUtil.LOGE("vclib:CameraManager", "Can't lock AE/AWB when camera not running!");
        return;
      }
      if (!mCurrentCameraSettings.cameraSupports3ALocks)
      {
        LogUtil.LOGD("vclib:CameraManager", "Current camera does not support AE/AWB locks.");
        return;
      }
    }
    Camera.Parameters localParameters = mCamera.getParameters();
    localParameters.setAutoExposureLock(paramBoolean);
    localParameters.setAutoWhiteBalanceLock(paramBoolean);
    mCamera.setParameters(localParameters);
  }
  
  /* Error */
  public void setPreviewSurfaceTexture(final SurfaceTexture paramSurfaceTexture)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: getfield 98	com/google/android/videochat/CameraManager:mCameraLock	Ljava/lang/Object;
    //   6: astore_3
    //   7: aload_3
    //   8: monitorenter
    //   9: ldc 47
    //   11: new 297	java/lang/StringBuilder
    //   14: dup
    //   15: invokespecial 298	java/lang/StringBuilder:<init>	()V
    //   18: ldc_w 539
    //   21: invokevirtual 304	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: aload_1
    //   25: invokevirtual 542	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   28: ldc_w 544
    //   31: invokevirtual 304	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: aload_0
    //   35: getfield 323	com/google/android/videochat/CameraManager:mCameraState	I
    //   38: invokevirtual 307	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   41: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokestatic 314	com/google/android/videochat/util/LogUtil:LOGD	(Ljava/lang/String;Ljava/lang/String;)V
    //   47: aload_0
    //   48: getfield 125	com/google/android/videochat/CameraManager:mDisableCamera	Z
    //   51: ifeq +6 -> 57
    //   54: aload_3
    //   55: monitorexit
    //   56: return
    //   57: aload_0
    //   58: invokespecial 546	com/google/android/videochat/CameraManager:frameTimeBasisChanged	()V
    //   61: aload_1
    //   62: ifnonnull +20 -> 82
    //   65: aload_0
    //   66: invokevirtual 549	com/google/android/videochat/CameraManager:suspendCamera	()V
    //   69: aload_0
    //   70: aconst_null
    //   71: putfield 492	com/google/android/videochat/CameraManager:mSurfaceTexture	Landroid/graphics/SurfaceTexture;
    //   74: aload_3
    //   75: monitorexit
    //   76: return
    //   77: astore_1
    //   78: aload_3
    //   79: monitorexit
    //   80: aload_1
    //   81: athrow
    //   82: aload_0
    //   83: aload_1
    //   84: putfield 492	com/google/android/videochat/CameraManager:mSurfaceTexture	Landroid/graphics/SurfaceTexture;
    //   87: aload_0
    //   88: getfield 323	com/google/android/videochat/CameraManager:mCameraState	I
    //   91: tableswitch	default:+250->341, 0:+186->277, 1:+186->277, 2:+193->284, 3:+186->277
    //   120: getstatic 90	com/google/android/videochat/CameraManager:TEST_STABILIZATION	Ljava/lang/String;
    //   123: ifnull +21 -> 144
    //   126: aload_0
    //   127: getfield 551	com/google/android/videochat/CameraManager:mMediaPlayer	Landroid/media/MediaPlayer;
    //   130: ifnonnull +14 -> 144
    //   133: aload_0
    //   134: new 553	android/media/MediaPlayer
    //   137: dup
    //   138: invokespecial 554	android/media/MediaPlayer:<init>	()V
    //   141: putfield 551	com/google/android/videochat/CameraManager:mMediaPlayer	Landroid/media/MediaPlayer;
    //   144: getstatic 90	com/google/android/videochat/CameraManager:TEST_STABILIZATION	Ljava/lang/String;
    //   147: ifnull +189 -> 336
    //   150: ldc_w 553
    //   153: ldc_w 556
    //   156: iconst_1
    //   157: anewarray 558	java/lang/Class
    //   160: dup
    //   161: iconst_0
    //   162: ldc_w 560
    //   165: aastore
    //   166: invokevirtual 564	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   169: aload_0
    //   170: getfield 551	com/google/android/videochat/CameraManager:mMediaPlayer	Landroid/media/MediaPlayer;
    //   173: iconst_1
    //   174: anewarray 4	java/lang/Object
    //   177: dup
    //   178: iconst_0
    //   179: aload_1
    //   180: aastore
    //   181: invokevirtual 570	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   184: pop
    //   185: iload_2
    //   186: ifeq +11 -> 197
    //   189: aload_0
    //   190: getfield 272	com/google/android/videochat/CameraManager:mCamera	Landroid/hardware/Camera;
    //   193: aload_1
    //   194: invokevirtual 496	android/hardware/Camera:setPreviewTexture	(Landroid/graphics/SurfaceTexture;)V
    //   197: getstatic 90	com/google/android/videochat/CameraManager:TEST_STABILIZATION	Ljava/lang/String;
    //   200: astore_1
    //   201: aload_1
    //   202: ifnull +56 -> 258
    //   205: aload_0
    //   206: getfield 551	com/google/android/videochat/CameraManager:mMediaPlayer	Landroid/media/MediaPlayer;
    //   209: getstatic 90	com/google/android/videochat/CameraManager:TEST_STABILIZATION	Ljava/lang/String;
    //   212: invokevirtual 573	android/media/MediaPlayer:setDataSource	(Ljava/lang/String;)V
    //   215: new 10	com/google/android/videochat/CameraManager$1Latch
    //   218: dup
    //   219: aload_0
    //   220: invokespecial 574	com/google/android/videochat/CameraManager$1Latch:<init>	(Lcom/google/android/videochat/CameraManager;)V
    //   223: astore_1
    //   224: aload_0
    //   225: getfield 551	com/google/android/videochat/CameraManager:mMediaPlayer	Landroid/media/MediaPlayer;
    //   228: new 13	com/google/android/videochat/CameraManager$2
    //   231: dup
    //   232: aload_0
    //   233: aload_1
    //   234: invokespecial 577	com/google/android/videochat/CameraManager$2:<init>	(Lcom/google/android/videochat/CameraManager;Lcom/google/android/videochat/CameraManager$1Latch;)V
    //   237: invokevirtual 581	android/media/MediaPlayer:setOnPreparedListener	(Landroid/media/MediaPlayer$OnPreparedListener;)V
    //   240: aload_0
    //   241: getfield 551	com/google/android/videochat/CameraManager:mMediaPlayer	Landroid/media/MediaPlayer;
    //   244: invokevirtual 584	android/media/MediaPlayer:prepareAsync	()V
    //   247: aload_1
    //   248: invokevirtual 587	com/google/android/videochat/CameraManager$1Latch:awaitSet	()V
    //   251: aload_0
    //   252: getfield 551	com/google/android/videochat/CameraManager:mMediaPlayer	Landroid/media/MediaPlayer;
    //   255: invokevirtual 588	android/media/MediaPlayer:start	()V
    //   258: aload_0
    //   259: getfield 272	com/google/android/videochat/CameraManager:mCamera	Landroid/hardware/Camera;
    //   262: invokevirtual 501	android/hardware/Camera:startPreview	()V
    //   265: aload_0
    //   266: iconst_2
    //   267: putfield 323	com/google/android/videochat/CameraManager:mCameraState	I
    //   270: aload_0
    //   271: invokespecial 514	com/google/android/videochat/CameraManager:destroyLastFramePusher	()V
    //   274: aload_3
    //   275: monitorexit
    //   276: return
    //   277: aload_0
    //   278: invokespecial 481	com/google/android/videochat/CameraManager:openCameraIfNeeded	()V
    //   281: goto -161 -> 120
    //   284: aload_0
    //   285: getfield 272	com/google/android/videochat/CameraManager:mCamera	Landroid/hardware/Camera;
    //   288: invokevirtual 438	android/hardware/Camera:stopPreview	()V
    //   291: goto -171 -> 120
    //   294: astore_1
    //   295: ldc 47
    //   297: ldc_w 487
    //   300: invokestatic 490	com/google/android/videochat/util/LogUtil:LOGE	(Ljava/lang/String;Ljava/lang/String;)V
    //   303: aload_3
    //   304: monitorexit
    //   305: return
    //   306: astore_1
    //   307: ldc 47
    //   309: new 297	java/lang/StringBuilder
    //   312: dup
    //   313: invokespecial 298	java/lang/StringBuilder:<init>	()V
    //   316: ldc_w 590
    //   319: invokevirtual 304	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: aload_1
    //   323: invokevirtual 542	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   326: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   329: invokestatic 277	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   332: pop
    //   333: goto -118 -> 215
    //   336: iconst_1
    //   337: istore_2
    //   338: goto -153 -> 185
    //   341: goto -221 -> 120
    //   344: astore 4
    //   346: iconst_1
    //   347: istore_2
    //   348: goto -163 -> 185
    //   351: astore 4
    //   353: iconst_1
    //   354: istore_2
    //   355: goto -170 -> 185
    //   358: astore 4
    //   360: iconst_1
    //   361: istore_2
    //   362: goto -177 -> 185
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	365	0	this	CameraManager
    //   0	365	1	paramSurfaceTexture	SurfaceTexture
    //   1	361	2	i	int
    //   6	298	3	localObject	Object
    //   344	1	4	localNoSuchMethodException	NoSuchMethodException
    //   351	1	4	localIllegalAccessException	IllegalAccessException
    //   358	1	4	localInvocationTargetException	java.lang.reflect.InvocationTargetException
    // Exception table:
    //   from	to	target	type
    //   9	56	77	finally
    //   57	61	77	finally
    //   65	76	77	finally
    //   78	80	77	finally
    //   82	120	77	finally
    //   120	144	77	finally
    //   144	150	77	finally
    //   150	185	77	finally
    //   189	197	77	finally
    //   197	201	77	finally
    //   205	215	77	finally
    //   215	258	77	finally
    //   258	276	77	finally
    //   277	281	77	finally
    //   284	291	77	finally
    //   295	305	77	finally
    //   307	333	77	finally
    //   144	150	294	java/io/IOException
    //   150	185	294	java/io/IOException
    //   189	197	294	java/io/IOException
    //   205	215	306	java/io/IOException
    //   150	185	344	java/lang/NoSuchMethodException
    //   150	185	351	java/lang/IllegalAccessException
    //   150	185	358	java/lang/reflect/InvocationTargetException
  }
  
  public void suspendCamera()
  {
    synchronized (mCameraLock)
    {
      LogUtil.LOGD("vclib:CameraManager", "suspendCamera state: " + mCameraState);
      if (mCameraState == 2)
      {
        mCameraState = 3;
        releaseCamera();
        frameTimeBasisChanged();
        createLastFramePusher();
      }
      return;
    }
  }
  
  public long translateFrameTime(long paramLong)
  {
    long l2 = mLastTranslatedTimeNs;
    long l1 = System.nanoTime();
    if (mLastSourceTimeNs > 0L) {}
    for (paramLong = l2 + (paramLong - mLastSourceTimeNs);; paramLong = l2 + (l1 - mLastWallClockTimeNs))
    {
      mLastTranslatedTimeNs = paramLong;
      mLastWallClockTimeNs = l1;
      return paramLong;
    }
  }
  
  public void useCamera(CameraSpecification paramCameraSpecification)
  {
    Object localObject = mCameraLock;
    int k = -1;
    int i = 0;
    for (;;)
    {
      int j = k;
      try
      {
        if (i < mNumAvailableCameras)
        {
          if (cameraId == mCameraSettings[i].cameraId) {
            j = i;
          }
        }
        else
        {
          if (j == -1)
          {
            Log.e("vclib:CameraManager", "Can't switch to camera " + cameraId + ". Invalid id.");
            return;
          }
          useCameraInternal(j, previewSize);
          return;
        }
      }
      finally {}
      i += 1;
    }
  }
  
  static abstract interface CameraManagerCallback
  {
    public abstract Size getCaptureSizeForCamera(List<Camera.Size> paramList);
    
    public abstract void onCameraOpen(Size paramSize, int paramInt, boolean paramBoolean);
    
    public abstract void onFrameOutputSet(CameraManager.FrameOutputParameters paramFrameOutputParameters);
  }
  
  private static class CameraSpecificSettings
  {
    public int cameraId;
    boolean cameraIsFrontFacing;
    boolean cameraSupports3ALocks;
    boolean haveReadCameraParameters = false;
    int orientation;
    public Size previewSize;
    boolean previewSizeIsValid;
  }
  
  static class FrameOutputParameters
  {
    public int frameRate;
    public Size size;
    
    public FrameOutputParameters(FrameOutputParameters paramFrameOutputParameters)
    {
      size = new Size(size);
      frameRate = frameRate;
    }
    
    public FrameOutputParameters(Size paramSize, int paramInt)
    {
      size = paramSize;
      frameRate = paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CameraManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */