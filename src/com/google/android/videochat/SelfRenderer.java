package com.google.android.videochat;

import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.hardware.Camera.Size;
import android.opengl.GLES20;
import android.util.Log;
import com.google.android.videochat.util.GLStopWatch;
import com.google.android.videochat.util.LogUtil;
import com.google.android.videochat.util.MatrixUtil;
import com.google.android.videochat.util.RendererUtil;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

public class SelfRenderer
  extends Renderer
{
  private final Renderer.SelfRendererThreadCallback mCallback;
  private CameraManager mCamera;
  private boolean mCameraCaptureFlip;
  private CameraInputData mCameraInputData = new CameraInputData(null);
  private final CameraInterface mCameraInterface;
  private int mCameraOrientation;
  private int mCameraOutputTextureName;
  private int mCameraRendererID = -1;
  private int mCameraRotation;
  private GLStopWatch mCameraStopWatch = new GLStopWatch("SelfVideo.camera");
  private SurfaceTexture mCameraSurfaceTexture;
  private float[] mCameraTransformMatrix = new float[16];
  private Size mCaptureSize;
  private int mCurrentImageStabilizationLevel = 0;
  private int mDeviceOrientation;
  private final Object mEffectsLock = new Object();
  private int mEncodeRendererID = -1;
  private GLStopWatch mEncodeStopWatch = new GLStopWatch("SelfVideo.encode");
  private CameraManager.FrameOutputParameters mFrameOutputParameters;
  private boolean mHaveInitializedCameraSettings;
  private volatile boolean mHaveSeenFirstFrame;
  private int mImageStabilizationRendererID = -1;
  private GLStopWatch mImageStabilizationStopWatch = new GLStopWatch("SelfVideo.stabilize");
  private int mImageStabilizationTextureName;
  private long mLastCameraFrameTime;
  private Size mMaxFrameOutputParameters;
  private int mOutputTextureName;
  private int mPendingImageStabilizationLevel = 0;
  private boolean mResetImageStabilization = false;
  private Size mRotatedCameraBufferSize;
  private Size mRotatedCaptureSize;
  private Size mRotatedFrameOutputSize;
  private Size mRotatedScaledCameraBufferSize;
  private float[] mRotationTransform;
  private volatile boolean mSelfFrameReady = false;
  private final Object mSelfFrameReadyLock = new Object();
  private SelfRendererInputData mSelfRendererInputData = new SelfRendererInputData(null);
  private float[] mSelfViewTransformMatrix = new float[16];
  private boolean mUseMaxSizeForCameraBuffer;
  
  SelfRenderer(RendererManager paramRendererManager, Renderer.SelfRendererThreadCallback paramSelfRendererThreadCallback, CameraSpecification paramCameraSpecification)
  {
    mRendererManager = paramRendererManager;
    mCallback = paramSelfRendererThreadCallback;
    mCameraRendererID = mRendererManager.instantiateRenderer(1);
    mEncodeRendererID = mRendererManager.instantiateRenderer(0);
    if (LogUtil.debugLoggable()) {
      Log.d("vclib:SelfRenderer", "construct cam " + mCameraRendererID + " encode " + mEncodeRendererID);
    }
    mCamera = CameraManager.getInstance();
    if ((paramCameraSpecification != null) && (cameraId != -1)) {
      mCamera.setDefaultCamera(paramCameraSpecification);
    }
    mCamera.setApplicationCallback(new CameraManager.CameraManagerCallback()
    {
      public Size getCaptureSizeForCamera(List<Camera.Size> paramAnonymousList)
      {
        if (paramAnonymousList.size() == 0) {
          throw new RuntimeException("empty previewSizes list");
        }
        Object localObject = mCallback.getIdealCaptureSize();
        int j;
        if (localObject != null) {
          j = width;
        }
        for (int i = height;; i = 400)
        {
          int k = Integer.MAX_VALUE;
          localObject = null;
          Iterator localIterator = paramAnonymousList.iterator();
          paramAnonymousList = (List<Camera.Size>)localObject;
          while (localIterator.hasNext())
          {
            localObject = (Camera.Size)localIterator.next();
            int n = width - j;
            int i1 = height - i;
            int m = n;
            if (n < 0) {
              m = n * -4;
            }
            n = i1;
            if (i1 < 0) {
              n = i1 * -4;
            }
            m += n;
            if (m < k)
            {
              k = m;
              paramAnonymousList = (List<Camera.Size>)localObject;
            }
          }
          j = 640;
        }
        return new Size(width, height);
      }
      
      public void onCameraOpen(final Size paramAnonymousSize, final int paramAnonymousInt, final boolean paramAnonymousBoolean)
      {
        if (LogUtil.verboseLoggable()) {
          Log.v("vclib:SelfRenderer", "onCameraOpen " + paramAnonymousSize + " orientation " + paramAnonymousInt + " flip " + paramAnonymousBoolean + " deviceOrientation " + mDeviceOrientation + " cameraOrientation " + mCameraRotation);
        }
        mCallback.queueEvent(new Runnable()
        {
          public void run()
          {
            SelfRenderer.access$702(SelfRenderer.this, new Size(paramAnonymousSize));
            SelfRenderer.access$802(SelfRenderer.this, paramAnonymousBoolean);
            SelfRenderer.access$902(SelfRenderer.this, paramAnonymousInt);
            SelfRenderer.this.recomputeCameraRotation();
            mCallback.onCameraOpened(paramAnonymousBoolean);
            SelfRenderer.this.onFrameSizesChanged();
          }
        });
        SelfRenderer.access$1102(SelfRenderer.this, false);
      }
      
      public void onFrameOutputSet(final CameraManager.FrameOutputParameters paramAnonymousFrameOutputParameters)
      {
        if (LogUtil.verboseLoggable()) {
          Log.v("vclib:SelfRenderer", "onFrameOutputSet " + size.width + "x" + size.height);
        }
        mCallback.queueEvent(new Runnable()
        {
          public void run()
          {
            SelfRenderer.access$202(SelfRenderer.this, new CameraManager.FrameOutputParameters(paramAnonymousFrameOutputParameters));
            SelfRenderer.this.onFrameSizesChanged();
          }
        });
      }
    });
    mCameraInterface = new CameraInterface(mCamera);
    mRendererManager.registerRendererForStats(this);
  }
  
  private void initializeImageStabilizationRenderer()
  {
    LogUtil.LOGV("vclib:SelfRenderer", "initializeImageStabilizationRenderer");
    mRendererManager.setIntParam(mImageStabilizationRendererID, "sub_intex", mCameraOutputTextureName);
    setSizeOnImageStabilizationRenderer();
    mRendererManager.initializeGLContext(mImageStabilizationRendererID);
    mImageStabilizationTextureName = mRendererManager.getIntParam(mImageStabilizationRendererID, "sub_outtex");
  }
  
  private void onFrameSizesChanged()
  {
    LogUtil.LOGV("vclib:SelfRenderer", "onFrameSizesChanged");
    if (mCaptureSize == null) {
      return;
    }
    Object localObject;
    int j;
    label95:
    float f2;
    float f3;
    float f1;
    if (mMaxFrameOutputParameters != null)
    {
      localObject = Size.scaleToMax(mFrameOutputParameters.size, mMaxFrameOutputParameters);
      if ((mCameraRotation != 0) && (mCameraRotation != 180)) {
        break label677;
      }
      mRotatedCaptureSize = new Size(mCaptureSize.width, mCaptureSize.height);
      j = width;
      i = height;
      mRotatedFrameOutputSize = new Size(j + 4 & 0xFFFFFFF8, i + 1 & 0xFFFFFFFE);
      f2 = mRotatedCaptureSize.width / mRotatedCaptureSize.height;
      f3 = mRotatedFrameOutputSize.width / mRotatedFrameOutputSize.height;
      if (f2 >= f3) {
        break label719;
      }
      f1 = mRotatedCaptureSize.width / mRotatedFrameOutputSize.width;
      label180:
      mRotatedScaledCameraBufferSize = Size.newWithScaleDown(mRotatedCaptureSize, f1);
      if (!mUseMaxSizeForCameraBuffer) {
        break label740;
      }
      mRotatedCameraBufferSize = new Size(mRotatedCaptureSize);
      label214:
      switch (mCameraRotation)
      {
      default: 
        mRotationTransform = MatrixUtil.getIdentityMatrix();
        label259:
        localObject = mRendererManager;
        j = mCameraRendererID;
        if (!mCameraCaptureFlip) {
          break;
        }
      }
    }
    for (int i = 1;; i = 0)
    {
      ((RendererManager)localObject).setIntParam(j, "sub_flipinput", i);
      mRendererManager.setIntParam(mEncodeRendererID, "c_rotation", mCameraRotation);
      mRendererManager.setIntParam(mEncodeRendererID, "sub_outdims", mRotatedFrameOutputSize.getEncodedDimensions());
      mRendererManager.setIntParam(mEncodeRendererID, "sub_indims", mRotatedScaledCameraBufferSize.getEncodedDimensions());
      if (LogUtil.verboseLoggable()) {
        Log.v("vclib:SelfRenderer", "Self dimensions - captureAspectRatio " + f2 + " outputAspectRatio " + f3 + " scale " + f1 + " mFrameOutputParameters = " + mFrameOutputParameters.size + " mMaxFrameOutputParameters = " + mMaxFrameOutputParameters + " mRotatedCaptureSize = " + mRotatedCaptureSize.toString() + " mRotatedCameraBufferSize = " + mRotatedCameraBufferSize.toString() + " mRotatedScaledDownCameraBufferSize = " + mRotatedScaledCameraBufferSize.toString() + " mRotatedFrameOutputSize = " + mRotatedFrameOutputSize.toString());
      }
      mRendererManager.setIntParam(mEncodeRendererID, "sub_inclip", mRotatedScaledCameraBufferSize.width - mRotatedFrameOutputSize.width << 16 | mRotatedScaledCameraBufferSize.height - mRotatedFrameOutputSize.height);
      mRendererManager.setIntParam(mCameraRendererID, "sub_outdims", mRotatedCameraBufferSize.getEncodedDimensions());
      mCallback.onFrameGeometryChanged(mRotatedFrameOutputSize.width / mRotatedFrameOutputSize.height, (mRotatedScaledCameraBufferSize.width - mRotatedFrameOutputSize.width) / mRotatedScaledCameraBufferSize.width / 2.0F, (mRotatedScaledCameraBufferSize.height - mRotatedFrameOutputSize.height) / mRotatedScaledCameraBufferSize.height / 2.0F);
      if (mImageStabilizationRendererID != -1) {
        setSizeOnImageStabilizationRenderer();
      }
      mHaveInitializedCameraSettings = true;
      return;
      localObject = mFrameOutputParameters.size;
      break;
      label677:
      mRotatedCaptureSize = new Size(mCaptureSize.height, mCaptureSize.width);
      j = height;
      i = width;
      break label95;
      label719:
      f1 = mRotatedCaptureSize.height / mRotatedFrameOutputSize.height;
      break label180;
      label740:
      mRotatedCameraBufferSize = new Size(mRotatedScaledCameraBufferSize);
      break label214;
      mRotationTransform = MatrixUtil.getRotate90Matrix();
      break label259;
      mRotationTransform = MatrixUtil.getRotate180Matrix();
      break label259;
      mRotationTransform = MatrixUtil.getRotate270Matrix();
      break label259;
    }
  }
  
  private void recomputeCameraRotation()
  {
    if (mCameraCaptureFlip)
    {
      mCameraRotation = ((mCameraOrientation + mDeviceOrientation) % 360);
      mCameraRotation = ((360 - mCameraRotation) % 360);
      return;
    }
    mCameraRotation = ((mCameraOrientation - mDeviceOrientation + 360) % 360);
  }
  
  private void setOutputTextureName(int paramInt)
  {
    if (paramInt != mOutputTextureName)
    {
      mOutputTextureName = paramInt;
      if (mCallback != null) {
        mCallback.onOutputTextureNameChanged(mOutputTextureName);
      }
    }
  }
  
  private void setSizeOnImageStabilizationRenderer()
  {
    mRendererManager.setIntParam(mImageStabilizationRendererID, "sub_indims", mRotatedCameraBufferSize.getEncodedDimensions());
    mRendererManager.setIntParam(mImageStabilizationRendererID, "sub_outdims", mRotatedScaledCameraBufferSize.getEncodedDimensions());
  }
  
  public void dump(PrintWriter paramPrintWriter) {}
  
  public void encodeFrame()
  {
    mEncodeStopWatch.start();
    mSelfRendererInputData.lastCameraFrameTimeNs = mLastCameraFrameTime;
    mRendererManager.renderFrame(mEncodeRendererID, mSelfRendererInputData, null);
    mEncodeStopWatch.stop();
  }
  
  public CameraInterface getCamera()
  {
    return mCameraInterface;
  }
  
  public Size getCameraBufferSize()
  {
    return new Size(mRotatedCameraBufferSize);
  }
  
  public long getMostRecentCameraFrameTime()
  {
    return mLastCameraFrameTime;
  }
  
  public int getOutputTextureName()
  {
    return mOutputTextureName;
  }
  
  public void initializeGLContext()
  {
    if (LogUtil.verboseLoggable()) {
      Log.v("vclib:SelfRenderer", "initializeGLContext " + mCameraRendererID);
    }
    mHaveSeenFirstFrame = false;
    mHaveInitializedCameraSettings = false;
    mSelfFrameReady = false;
    int[] arrayOfInt = new int[1];
    GLES20.glGenTextures(1, arrayOfInt, 0);
    RendererUtil.checkGlError("gen camera texture");
    int i = arrayOfInt[0];
    mCameraSurfaceTexture = new SurfaceTexture(i);
    mCameraSurfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener()
    {
      public void onFrameAvailable(SurfaceTexture arg1)
      {
        synchronized (mSelfFrameReadyLock)
        {
          SelfRenderer.access$1302(SelfRenderer.this, true);
          return;
        }
      }
    });
    mCamera.setPreviewSurfaceTexture(mCameraSurfaceTexture);
    mFrameOutputParameters = mCamera.getCurrentFrameOutputParameters();
    if (mFrameOutputParameters == null)
    {
      if (LogUtil.verboseLoggable()) {
        Log.v("vclib:SelfRenderer", "initializeGLContext -- no frameOutputParams yet");
      }
      mFrameOutputParameters = new CameraManager.FrameOutputParameters(new Size(320, 200), 15);
    }
    mRendererManager.setIntParam(mCameraRendererID, "sub_intex", i);
    mRendererManager.initializeGLContext(mCameraRendererID);
    mRendererManager.initializeGLContext(mEncodeRendererID);
    mCurrentImageStabilizationLevel = 0;
    if (mImageStabilizationRendererID != -1) {
      initializeImageStabilizationRenderer();
    }
    mCameraOutputTextureName = mRendererManager.getIntParam(mCameraRendererID, "sub_outtex");
    mRendererManager.setIntParam(mEncodeRendererID, "sub_intex", mCameraOutputTextureName);
    setOutputTextureName(mCameraOutputTextureName);
    mLastCameraFrameTime = -1L;
  }
  
  public void overrideEncodeTexture(int paramInt)
  {
    mRendererManager.setIntParam(mEncodeRendererID, "sub_intex", paramInt);
  }
  
  public void release()
  {
    if (LogUtil.verboseLoggable()) {
      Log.v("vclib:SelfRenderer", "release cam " + mCameraRendererID + " enc " + mEncodeRendererID + " is " + mImageStabilizationRendererID);
    }
    mCamera.setPreviewSurfaceTexture(null);
    if (mImageStabilizationRendererID != -1) {
      mRendererManager.releaseRenderer(mImageStabilizationRendererID);
    }
    mRendererManager.unregisterRendererForStats(this);
    mRendererManager.releaseRenderer(mEncodeRendererID);
    mRendererManager.releaseRenderer(mCameraRendererID);
    mCamera.setApplicationCallback(null);
  }
  
  public boolean renderSelfFrame()
  {
    boolean bool1 = false;
    if (mHaveInitializedCameraSettings) {}
    synchronized (mSelfFrameReadyLock)
    {
      bool1 = mSelfFrameReady;
      if (bool1) {
        mSelfFrameReady = false;
      }
      if (bool1)
      {
        mCameraStopWatch.start();
        mCameraSurfaceTexture.updateTexImage();
        mLastCameraFrameTime = mCamera.translateFrameTime(mCameraSurfaceTexture.getTimestamp());
        mCameraSurfaceTexture.getTransformMatrix(mCameraTransformMatrix);
        MatrixUtil.matrixMultiply4x4(mCameraTransformMatrix, mRotationTransform, mSelfViewTransformMatrix);
        mCameraInputData.selfFrameTransform = mSelfViewTransformMatrix;
        mRendererManager.renderFrame(mCameraRendererID, mCameraInputData, null);
        mCameraStopWatch.stop();
        if (!mHaveSeenFirstFrame)
        {
          if (mCallback != null) {
            mCallback.onInitialFrame();
          }
          mHaveSeenFirstFrame = true;
        }
      }
    }
    for (;;)
    {
      synchronized (mEffectsLock)
      {
        int k = mCurrentImageStabilizationLevel;
        int j = mPendingImageStabilizationLevel;
        mCurrentImageStabilizationLevel = mPendingImageStabilizationLevel;
        boolean bool2 = mResetImageStabilization;
        mResetImageStabilization = false;
        if (bool2) {
          mRendererManager.setIntParam(mImageStabilizationRendererID, "is_reset", 0);
        }
        i = k;
        if (j != k)
        {
          if (LogUtil.verboseLoggable()) {
            Log.v("vclib:SelfRenderer", "IS level was " + k + " now " + j);
          }
          if (j > 0)
          {
            if (mImageStabilizationRendererID == -1)
            {
              mImageStabilizationRendererID = mRendererManager.instantiateRenderer(2);
              initializeImageStabilizationRenderer();
            }
            mRendererManager.setIntParam(mImageStabilizationRendererID, "is_level", j);
            mRendererManager.setIntParam(mEncodeRendererID, "sub_intex", mImageStabilizationTextureName);
            i = mImageStabilizationTextureName;
            setOutputTextureName(i);
            i = j;
          }
        }
        else
        {
          if (i > 0)
          {
            mImageStabilizationStopWatch.start();
            mRendererManager.renderFrame(mImageStabilizationRendererID, null, null);
            mImageStabilizationStopWatch.stop();
          }
          return bool1;
          localObject2 = finally;
          throw ((Throwable)localObject2);
        }
      }
      mRendererManager.setIntParam(mEncodeRendererID, "sub_intex", mCameraOutputTextureName);
      int i = mCameraOutputTextureName;
    }
  }
  
  public void resetEncodeTexture()
  {
    mRendererManager.setIntParam(mEncodeRendererID, "sub_intex", mOutputTextureName);
  }
  
  public void resetImageStabilization()
  {
    synchronized (mEffectsLock)
    {
      mResetImageStabilization = true;
      return;
    }
  }
  
  public void setDeviceOrientation(int paramInt)
  {
    mDeviceOrientation = paramInt;
    recomputeCameraRotation();
    onFrameSizesChanged();
  }
  
  public void setImageStabilizationLevel(int paramInt)
  {
    synchronized (mEffectsLock)
    {
      mPendingImageStabilizationLevel = paramInt;
      return;
    }
  }
  
  public void setMaxEncodeVideoSpec(VideoSpecification paramVideoSpecification)
  {
    if (!paramVideoSpecification.getSize().equals(mMaxFrameOutputParameters))
    {
      mMaxFrameOutputParameters = paramVideoSpecification.getSize();
      onFrameSizesChanged();
    }
  }
  
  public void setUseMaxSizeForCameraBuffer(boolean paramBoolean)
  {
    if (LogUtil.verboseLoggable()) {
      Log.v("vclib:SelfRenderer", "setUseMaxSizeForCameraBuffer " + paramBoolean);
    }
    mUseMaxSizeForCameraBuffer = paramBoolean;
    onFrameSizesChanged();
  }
  
  private static class CameraInputData
  {
    public float[] selfFrameTransform;
  }
  
  private static class SelfRendererInputData
  {
    public long lastCameraFrameTimeNs;
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.SelfRenderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */