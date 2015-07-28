package com.google.android.talk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gsf.Gservices;
import com.google.android.videochat.VideoSpecification;
import java.util.Iterator;
import java.util.List;

class FeatureManager$SetFeaturesTask
{
  private long mAccountId;
  private Context mContext;
  private Runnable mDoneRunnable;
  private final myHandler mHandler = new myHandler(Looper.getMainLooper());
  
  public FeatureManager$SetFeaturesTask(Context paramContext, long paramLong, Runnable paramRunnable)
  {
    mContext = paramContext;
    mDoneRunnable = paramRunnable;
    mAccountId = paramLong;
  }
  
  public FeatureManager$SetFeaturesTask(Context paramContext, Runnable paramRunnable)
  {
    this(paramContext, -1L, paramRunnable);
  }
  
  protected void doInBackground()
  {
    FeatureManager.DeviceCapabilities localDeviceCapabilities = FeatureManager.access$200(mContext);
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
      if (FeatureManager.access$300())
      {
        FeatureManager.access$302(Gservices.getBoolean(mContext.getContentResolver(), "gtalk_vc_enable_video", FeatureManager.access$300()));
        if (!FeatureManager.access$300()) {
          TalkApp.LOGD("talk", "GServices override - disabling video chat");
        }
      }
      if (FeatureManager.access$400())
      {
        FeatureManager.access$402(Gservices.getBoolean(mContext.getContentResolver(), "gtalk_vc_enable_audio", FeatureManager.access$400()));
        if (!FeatureManager.access$400()) {
          TalkApp.LOGD("talk", "GServices override - disabling voice chat");
        }
      }
      localVideoSpecification3 = FeatureManager.access$500();
      localVideoSpecification2 = FeatureManager.access$500();
      localVideoSpecification4 = FeatureManager.access$500();
      localObject3 = localVideoSpecification3;
      Object localObject4 = localVideoSpecification2;
      Object localObject5 = localVideoSpecification4;
      if (FeatureManager.access$300())
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
        localVideoSpecification1 = FeatureManager.access$700();
        localObject1 = FeatureManager.access$700();
        localObject2 = FeatureManager.access$500();
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
        if (FeatureManager.access$800() != 0)
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
      TalkApp.LOGD("talk", "effects enabled mask: " + FeatureManager.access$800());
      localObject2 = new StringBuilder().append("video chat support is ");
      if (!FeatureManager.access$300()) {
        break label804;
      }
      localObject1 = "enabled";
      label512:
      TalkApp.LOGD("talk", (String)localObject1);
      localObject2 = new StringBuilder().append("audio chat support is ");
      if (!FeatureManager.access$400()) {
        break label811;
      }
      localObject1 = "enabled";
      label551:
      TalkApp.LOGD("talk", (String)localObject1);
      if (mAccountId == -1L) {
        break label818;
      }
      FeatureManager.access$900(mAccountId);
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
        FeatureManager.access$900(((Long)((Iterator)localObject1).next()).longValue());
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

/* Location:
 * Qualified Name:     com.google.android.talk.FeatureManager.SetFeaturesTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */