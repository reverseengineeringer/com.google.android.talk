package com.google.android.talk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.FeatureInfo;
import android.content.pm.PackageManager;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gsf.Gservices;
import com.google.android.gsf.TalkContract.AccountSettings.QueryMap;
import com.google.android.talk.videochat.EffectsController;
import com.google.android.videochat.Size;
import com.google.android.videochat.VideoSpecification;
import java.util.Iterator;
import java.util.List;

public class FeatureManager
{
  private static final VideoSpecification HVGA_SIZE = new VideoSpecification(new Size(480, 300), 15);
  private static final VideoSpecification QVGA_SIZE = new VideoSpecification(new Size(320, 200), 15);
  private static boolean sAudioChatEnabled;
  private static String sDefaultVideoChatEffect;
  private static int sEffectsEnabledMask;
  private static boolean sVideoChatEnabled;
  
  public static boolean areAnyEffectsAvailable()
  {
    return sEffectsEnabledMask != 0;
  }
  
  public static boolean audioChatEnabled()
  {
    return sAudioChatEnabled;
  }
  
  public static void clearDeviceFeatures(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("deviceCapabilities", 0).edit();
    paramContext.putBoolean("dirty", true);
    paramContext.apply();
  }
  
  private static DeviceCapabilities determineDeviceCapabilities(Context paramContext)
  {
    DeviceCapabilities localDeviceCapabilities = new DeviceCapabilities(null);
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("deviceCapabilities", 0);
    mHasNEON = false;
    boolean bool;
    if (Runtime.getRuntime().availableProcessors() >= 2)
    {
      bool = true;
      mMulticore = bool;
      if ((!"armeabi-v7a".equals(Build.CPU_ABI)) && (!"armeabi-v7a".equals(Build.CPU_ABI2))) {
        break label223;
      }
      bool = true;
      label67:
      mArmv7 = bool;
      if (!localSharedPreferences.getBoolean("dirty", true)) {
        break label351;
      }
      if (mArmv7) {
        break label228;
      }
      Log.i("talk", "Not arm7 " + Build.CPU_ABI);
    }
    for (;;)
    {
      paramContext = localSharedPreferences.edit();
      paramContext.putBoolean("dirty", false);
      paramContext.putBoolean("frontCamera", mFrontCamera);
      paramContext.putBoolean("glv2", mGlv2);
      paramContext.putBoolean("armv7", mArmv7);
      paramContext.putBoolean("neon", mHasNEON);
      paramContext.putInt("effectsMask", mEffectsEnabledMask);
      paramContext.apply();
      return localDeviceCapabilities;
      bool = false;
      break;
      label223:
      bool = false;
      break label67;
      label228:
      if (getOpenGlEsVersion(paramContext) >= 2.0F) {
        mGlv2 = true;
      }
      mHasNEON = hasNEON();
      paramContext = new Camera.CameraInfo();
      int j = Camera.getNumberOfCameras();
      int i = 0;
      if ((i < j) && (!mFrontCamera))
      {
        Camera.getCameraInfo(i, paramContext);
        if (facing == 1) {}
        for (bool = true;; bool = false)
        {
          mFrontCamera = bool;
          i += 1;
          break;
        }
      }
      Log.i("talk", "supported front camera " + mFrontCamera);
      mEffectsEnabledMask = EffectsController.generateCapabilitiesMask();
    }
    label351:
    mFrontCamera = localSharedPreferences.getBoolean("frontCamera", false);
    mGlv2 = localSharedPreferences.getBoolean("glv2", false);
    mEffectsEnabledMask = localSharedPreferences.getInt("effectsMask", 0);
    mHasNEON = localSharedPreferences.getBoolean("neon", false);
    return localDeviceCapabilities;
  }
  
  public static String getDefaultVideoChatEffect()
  {
    return sDefaultVideoChatEffect;
  }
  
  private static float getOpenGlEsVersion(Context paramContext)
  {
    paramContext = paramContext.getPackageManager().getSystemAvailableFeatures();
    if ((paramContext != null) && (paramContext.length > 0))
    {
      int j = paramContext.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramContext[i];
        if (name == null)
        {
          paramContext = ((FeatureInfo)localObject).getGlEsVersion();
          TalkApp.LOGD("talk", "gl version: " + paramContext);
          return new Float(paramContext).floatValue();
        }
        i += 1;
      }
    }
    return 0.0F;
  }
  
  /* Error */
  private static boolean hasNEON()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: iconst_0
    //   4: istore 4
    //   6: iload 5
    //   8: istore_3
    //   9: new 273	java/io/FileInputStream
    //   12: dup
    //   13: ldc_w 275
    //   16: invokespecial 276	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   19: astore 6
    //   21: new 278	java/io/BufferedReader
    //   24: dup
    //   25: new 280	java/io/InputStreamReader
    //   28: dup
    //   29: new 282	java/io/DataInputStream
    //   32: dup
    //   33: aload 6
    //   35: invokespecial 285	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   38: invokespecial 286	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   41: invokespecial 289	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   44: astore 7
    //   46: aload 7
    //   48: invokevirtual 292	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   51: astore 8
    //   53: iload 4
    //   55: istore_2
    //   56: aload 8
    //   58: ifnull +81 -> 139
    //   61: aload 8
    //   63: ldc_w 294
    //   66: iconst_2
    //   67: invokevirtual 298	java/lang/String:split	(Ljava/lang/String;I)[Ljava/lang/String;
    //   70: astore 8
    //   72: aload 8
    //   74: ifnull -28 -> 46
    //   77: aload 8
    //   79: arraylength
    //   80: iconst_2
    //   81: if_icmpne -35 -> 46
    //   84: ldc_w 300
    //   87: aload 8
    //   89: iconst_0
    //   90: aaload
    //   91: invokevirtual 141	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   94: ifeq -48 -> 46
    //   97: aload 8
    //   99: iconst_1
    //   100: aaload
    //   101: ldc_w 302
    //   104: invokevirtual 305	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   107: astore 7
    //   109: aload 7
    //   111: arraylength
    //   112: istore_1
    //   113: iconst_0
    //   114: istore_0
    //   115: iload 4
    //   117: istore_2
    //   118: iload_0
    //   119: iload_1
    //   120: if_icmpge +19 -> 139
    //   123: ldc -70
    //   125: aload 7
    //   127: iload_0
    //   128: aaload
    //   129: invokevirtual 141	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   132: istore_2
    //   133: iload_2
    //   134: ifeq +14 -> 148
    //   137: iconst_1
    //   138: istore_2
    //   139: iload_2
    //   140: istore_3
    //   141: aload 6
    //   143: invokevirtual 308	java/io/FileInputStream:close	()V
    //   146: iload_2
    //   147: ireturn
    //   148: iload_0
    //   149: iconst_1
    //   150: iadd
    //   151: istore_0
    //   152: goto -37 -> 115
    //   155: astore 7
    //   157: iload 5
    //   159: istore_3
    //   160: aload 6
    //   162: invokevirtual 308	java/io/FileInputStream:close	()V
    //   165: iload 5
    //   167: istore_3
    //   168: aload 7
    //   170: athrow
    //   171: astore 6
    //   173: iload_3
    //   174: ireturn
    //   175: astore 6
    //   177: iload_2
    //   178: ireturn
    //   179: astore 6
    //   181: goto -16 -> 165
    //   184: astore 7
    //   186: iload 4
    //   188: istore_2
    //   189: goto -50 -> 139
    // Local variable table:
    //   start	length	slot	name	signature
    //   114	38	0	i	int
    //   112	9	1	j	int
    //   55	134	2	bool1	boolean
    //   8	166	3	bool2	boolean
    //   4	183	4	bool3	boolean
    //   1	165	5	bool4	boolean
    //   19	142	6	localFileInputStream	java.io.FileInputStream
    //   171	1	6	localFileNotFoundException	java.io.FileNotFoundException
    //   175	1	6	localIOException1	java.io.IOException
    //   179	1	6	localIOException2	java.io.IOException
    //   44	82	7	localObject1	Object
    //   155	14	7	localObject2	Object
    //   184	1	7	localIOException3	java.io.IOException
    //   51	47	8	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   21	46	155	finally
    //   46	53	155	finally
    //   61	72	155	finally
    //   77	113	155	finally
    //   123	133	155	finally
    //   9	21	171	java/io/FileNotFoundException
    //   141	146	171	java/io/FileNotFoundException
    //   160	165	171	java/io/FileNotFoundException
    //   168	171	171	java/io/FileNotFoundException
    //   141	146	175	java/io/IOException
    //   160	165	179	java/io/IOException
    //   46	53	184	java/io/IOException
    //   61	72	184	java/io/IOException
    //   77	113	184	java/io/IOException
    //   123	133	184	java/io/IOException
  }
  
  public static boolean isEffectAvailable(int paramInt)
  {
    boolean bool = true;
    if ((paramInt == 0) || (paramInt > 32))
    {
      Log.e("talk", "isEffectAvailable bad id " + paramInt);
      bool = false;
    }
    while ((sEffectsEnabledMask & 1 << paramInt - 1) != 0) {
      return bool;
    }
    return false;
  }
  
  private static void setAccountFeatures(long paramLong)
  {
    TalkContract.AccountSettings.QueryMap localQueryMap = SettingsCache.getInstance().getSettingsMap(paramLong);
    localQueryMap.setCameraEnabled(sVideoChatEnabled);
    localQueryMap.setVideoChatEnabled(sVideoChatEnabled);
    localQueryMap.setAudioChatEnabled(sAudioChatEnabled);
  }
  
  public static void setAvailableFeatures(Context paramContext, long paramLong, Runnable paramRunnable)
  {
    new SetFeaturesTask(paramContext, paramLong, paramRunnable).execute();
  }
  
  public static void setAvailableFeaturesAllAccounts(Context paramContext, Runnable paramRunnable)
  {
    new SetFeaturesTask(paramContext, paramRunnable).execute();
  }
  
  public static boolean videoChatEnabled()
  {
    return sVideoChatEnabled;
  }
  
  private static class DeviceCapabilities
  {
    public boolean mArmv7;
    public int mEffectsEnabledMask;
    public boolean mFrontCamera;
    public boolean mGlv2;
    public boolean mHasNEON;
    public boolean mMulticore;
  }
  
  private static class SetFeaturesTask
  {
    private long mAccountId;
    private Context mContext;
    private Runnable mDoneRunnable;
    private final myHandler mHandler = new myHandler(Looper.getMainLooper());
    
    public SetFeaturesTask(Context paramContext, long paramLong, Runnable paramRunnable)
    {
      mContext = paramContext;
      mDoneRunnable = paramRunnable;
      mAccountId = paramLong;
    }
    
    public SetFeaturesTask(Context paramContext, Runnable paramRunnable)
    {
      this(paramContext, -1L, paramRunnable);
    }
    
    protected void doInBackground()
    {
      FeatureManager.DeviceCapabilities localDeviceCapabilities = FeatureManager.determineDeviceCapabilities(mContext);
      boolean bool;
      VideoSpecification localVideoSpecification3;
      VideoSpecification localVideoSpecification2;
      VideoSpecification localVideoSpecification4;
      Object localObject3;
      Object localObject1;
      int i;
      int k;
      int j;
      label192:
      VideoSpecification localVideoSpecification1;
      Object localObject2;
      if ((mArmv7) && (mFrontCamera) && (mGlv2))
      {
        bool = true;
        FeatureManager.access$302(bool);
        FeatureManager.access$402(mArmv7);
        if (FeatureManager.sVideoChatEnabled)
        {
          FeatureManager.access$302(Gservices.getBoolean(mContext.getContentResolver(), "gtalk_vc_enable_video", FeatureManager.sVideoChatEnabled));
          if (!FeatureManager.sVideoChatEnabled) {
            TalkApp.LOGD("talk", "GServices override - disabling video chat");
          }
        }
        if (FeatureManager.sAudioChatEnabled)
        {
          FeatureManager.access$402(Gservices.getBoolean(mContext.getContentResolver(), "gtalk_vc_enable_audio", FeatureManager.sAudioChatEnabled));
          if (!FeatureManager.sAudioChatEnabled) {
            TalkApp.LOGD("talk", "GServices override - disabling voice chat");
          }
        }
        localVideoSpecification3 = FeatureManager.QVGA_SIZE;
        localVideoSpecification2 = FeatureManager.QVGA_SIZE;
        localVideoSpecification4 = FeatureManager.QVGA_SIZE;
        localObject3 = localVideoSpecification3;
        Object localObject4 = localVideoSpecification2;
        Object localObject5 = localVideoSpecification4;
        if (FeatureManager.sVideoChatEnabled)
        {
          localObject1 = Gservices.getString(mContext.getContentResolver(), "gtalk_vc_go_hvga");
          i = 1;
          k = 0;
          if (!"true".equals(localObject1)) {
            break label607;
          }
          j = 1;
          i = 0;
          if (j == 0) {
            break label656;
          }
          FeatureManager.access$602("off");
          localVideoSpecification1 = FeatureManager.HVGA_SIZE;
          localObject1 = FeatureManager.HVGA_SIZE;
          localObject2 = FeatureManager.QVGA_SIZE;
          label217:
          FeatureManager.access$802(mEffectsEnabledMask);
          j = 0;
          if (!mMulticore) {
            j = Integer.MAX_VALUE;
          }
          i = j;
          if (!ActivityUtils.isTablet(mContext)) {
            i = j | 0x2;
          }
          j = i;
          if (i != 0) {
            j = i & (Gservices.getInt(mContext.getContentResolver(), "gtalk_vc_effects_enabled_mask", 0) ^ 0xFFFFFFFF);
          }
          FeatureManager.access$872(j ^ 0xFFFFFFFF);
          localObject3 = localVideoSpecification1;
          localObject4 = localObject1;
          localObject5 = localObject2;
          if (FeatureManager.sEffectsEnabledMask != 0)
          {
            FeatureManager.access$872(Gservices.getInt(mContext.getContentResolver(), "gtalk_vc_effects_disabled_mask", 0) ^ 0xFFFFFFFF);
            localObject5 = localObject2;
            localObject4 = localObject1;
            localObject3 = localVideoSpecification1;
          }
        }
        VideoSpecification.setMaxIncoming((VideoSpecification)localObject3);
        VideoSpecification.setMaxOutgoingNoEffects((VideoSpecification)localObject4);
        VideoSpecification.setMaxOutgoingWithEffects((VideoSpecification)localObject5);
        TalkApp.LOGD("talk", "is armv7: " + mArmv7);
        TalkApp.LOGD("talk", "has NEON: " + mHasNEON);
        TalkApp.LOGD("talk", "supported front camera: " + mFrontCamera);
        TalkApp.LOGD("talk", "has opengl2: " + mGlv2);
        TalkApp.LOGD("talk", "effects enabled mask: " + FeatureManager.sEffectsEnabledMask);
        localObject2 = new StringBuilder().append("video chat support is ");
        if (!FeatureManager.sVideoChatEnabled) {
          break label804;
        }
        localObject1 = "enabled";
        label512:
        TalkApp.LOGD("talk", (String)localObject1);
        localObject2 = new StringBuilder().append("audio chat support is ");
        if (!FeatureManager.sAudioChatEnabled) {
          break label811;
        }
        localObject1 = "enabled";
        label551:
        TalkApp.LOGD("talk", (String)localObject1);
        if (mAccountId == -1L) {
          break label818;
        }
        FeatureManager.setAccountFeatures(mAccountId);
      }
      for (;;)
      {
        mHandler.sendMessage(mHandler.obtainMessage(1));
        return;
        bool = false;
        break;
        label607:
        j = k;
        if (!"auto".equals(localObject1)) {
          break label192;
        }
        int m = 0;
        i = m;
        j = k;
        if (!mMulticore) {
          break label192;
        }
        i = m;
        j = k;
        if (!mHasNEON) {
          break label192;
        }
        j = 1;
        i = m;
        break label192;
        label656:
        FeatureManager.access$602("low");
        localVideoSpecification1 = localVideoSpecification3;
        localObject1 = localVideoSpecification2;
        localObject2 = localVideoSpecification4;
        if (i == 0) {
          break label217;
        }
        localObject1 = Gservices.getString(mContext.getContentResolver(), "gtalk_vc_default_fx");
        if (localObject1 != null) {
          FeatureManager.access$602((String)localObject1);
        }
        localObject1 = Gservices.getString(mContext.getContentResolver(), "gtalk_vc_max_in_vid");
        if (localObject1 != null) {
          localVideoSpecification3 = VideoSpecification.getFromString((String)localObject1);
        }
        localObject1 = Gservices.getString(mContext.getContentResolver(), "gtalk_vc_max_out_nofx_vid");
        if (localObject1 != null) {
          localVideoSpecification2 = VideoSpecification.getFromString((String)localObject1);
        }
        localObject3 = Gservices.getString(mContext.getContentResolver(), "gtalk_vc_max_out_fx_vid");
        localVideoSpecification1 = localVideoSpecification3;
        localObject1 = localVideoSpecification2;
        localObject2 = localVideoSpecification4;
        if (localObject3 == null) {
          break label217;
        }
        localObject2 = VideoSpecification.getFromString((String)localObject3);
        localVideoSpecification1 = localVideoSpecification3;
        localObject1 = localVideoSpecification2;
        break label217;
        label804:
        localObject1 = "disabled";
        break label512;
        label811:
        localObject1 = "disabled";
        break label551;
        label818:
        localObject1 = DatabaseUtils.getAccountIds(mContext.getContentResolver()).iterator();
        while (((Iterator)localObject1).hasNext()) {
          FeatureManager.setAccountFeatures(((Long)((Iterator)localObject1).next()).longValue());
        }
      }
    }
    
    public void execute()
    {
      Thread localThread = new Thread(new Runnable()
      {
        public void run()
        {
          doInBackground();
        }
      });
      localThread.setName("SetFeaturesTask");
      localThread.start();
    }
    
    private class myHandler
      extends Handler
    {
      public myHandler(Looper paramLooper)
      {
        super();
      }
      
      public void handleMessage(Message paramMessage)
      {
        if ((what == 1) && (mDoneRunnable != null)) {
          mDoneRunnable.run();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.FeatureManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */