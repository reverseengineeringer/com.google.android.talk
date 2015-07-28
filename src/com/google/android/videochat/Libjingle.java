package com.google.android.videochat;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gsf.Gservices;
import com.google.android.videochat.util.LogUtil;
import java.lang.ref.WeakReference;

class Libjingle
{
  private static final String[][] ANDROID_SETTINGS_KEYS_MAP;
  public static final int AUDIO_LEVELS_OP = 4;
  public static final int AVAILABLE = 1;
  public static final int CALL_FLAG_AUDIO_ONLY = 1;
  public static final int CALL_FLAG_MULTI_USER = 2;
  public static final int CALL_STATE_CHANGED_OP = 1;
  public static final int HAS_CAMERA_V1 = 8;
  public static final int HAS_VIDEO_V1 = 4;
  public static final int HAS_VOICE_V1 = 2;
  private static final int LIBJINGLE_LS_ERROR = 4;
  private static final int LIBJINGLE_LS_INFO = 2;
  private static final int LIBJINGLE_LS_VERBOSE = 1;
  private static final int LIBJINGLE_LS_WARNING = 3;
  private static final String LIBJINGLE_VIDEO_MAX_FRAMERATE = "VIDEO_MAX_FRAMERATE";
  private static final String LIBJINGLE_VIDEO_MAX_HEIGHT = "VIDEO_MAX_HEIGHT";
  private static final String LIBJINGLE_VIDEO_MAX_WIDTH = "VIDEO_MAX_WIDTH";
  public static final int MEDIA_SOURCES_OP = 3;
  public static final int STATS_OP = 2;
  public static final String STR1_KEY = "str1";
  public static final String STR2_KEY = "str2";
  private static final String TAG = "vclib:Libjingle";
  public static final int UNAVAILABLE = 0;
  public static final int XMPP_SESSION_STANZA_OP = 0;
  private Context mContext;
  private Handler mHandler;
  private boolean mInitialized;
  private int mNativeContext;
  
  static
  {
    System.loadLibrary("gtalk_jni");
    nativeInit();
    int j = LogUtil.refreshTalkLogLevel();
    int i = j;
    if (j == 4) {
      i = 5;
    }
    nativeSetLoggingLevel(i);
    String[] arrayOfString1 = { "gtalk_vc_blocked_interface_names", "BLOCK_INTERFACE_NAMES" };
    String[] arrayOfString2 = { "gtalk_vc_agc_mode", "AGC_MODE" };
    String[] arrayOfString3 = { "gtalk_vc_rx_agc_config_target_level", "RX_AGC_CONFIG_TARGET_LEVEL" };
    ANDROID_SETTINGS_KEYS_MAP = new String[][] { { "gtalk_vc_allow_nondefault_networks", "ALLOW_NONDEFAULT_NETWORKS" }, arrayOfString1, { "gtalk_vc_enable_echo_cancellation", "ENABLE_ECHO_CANCELLATION" }, { "gtalk_vc_enable_auto_gain_control", "ENABLE_AUTO_GAIN_CONTROL" }, { "gtalk_vc_enable_noise_suppression", "ENABLE_NOISE_SUPPRESSION" }, { "gtalk_vc_ec_comfort_noise_generation", "EC_COMFORT_NOISE_GENERATION" }, arrayOfString2, { "gtalk_vc_agc_config_target_level", "AGC_CONFIG_TARGET_LEVEL" }, { "gtalk_vc_agc_config_comp_gain", "AGC_CONFIG_COMP_GAIN" }, { "gtalk_vc_agc_config_limiter_enable", "AGC_CONFIG_LIMITER_ENABLE" }, { "gtalk_vc_enable_rx_auto_gain_control", "ENABLE_RX_AUTO_GAIN_CONTROL" }, arrayOfString3, { "gtalk_vc_rx_agc_config_comp_gain", "RX_AGC_CONFIG_COMP_GAIN" }, { "gtalk_vc_rx_agc_config_limiter_enable", "RX_AGC_CONFIG_LIMITER_ENABLE" }, { "gtalk_vc_audio_record_sampling_rate", "AUDIO_RECORDING_SAMPLING_RATE" }, { "gtalk_vc_audio_playback_sampling_rate", "AUDIO_PLAYBACK_SAMPLING_RATE" } };
  }
  
  public Libjingle(Context paramContext, Handler paramHandler)
  {
    mContext = paramContext;
    mHandler = paramHandler;
  }
  
  private static void dispatchNativeEvent(Object paramObject1, int paramInt1, int paramInt2, int paramInt3, Object paramObject2, Object paramObject3, Object paramObject4)
  {
    paramObject1 = (Libjingle)((WeakReference)paramObject1).get();
    if ((paramObject1 != null) && (mNativeContext != 0))
    {
      paramObject4 = mHandler.obtainMessage(paramInt1, paramInt2, paramInt3, paramObject4);
      Bundle localBundle = new Bundle(2);
      localBundle.putString("str1", (String)paramObject2);
      localBundle.putString("str2", (String)paramObject3);
      ((Message)paramObject4).setData(localBundle);
      mHandler.sendMessage((Message)paramObject4);
    }
  }
  
  private int getLibjingleLogLevel(String paramString)
  {
    int i = 2;
    if (Log.isLoggable(paramString, 2)) {
      i = 1;
    }
    while (Log.isLoggable(paramString, 3)) {
      return i;
    }
    if (Log.isLoggable(paramString, 4)) {
      return 3;
    }
    return 4;
  }
  
  public static void load() {}
  
  private void log(String paramString)
  {
    Log.d("vclib:Libjingle", paramString);
  }
  
  private final native void nativeAcceptCall(String paramString);
  
  private final native void nativeCall(String paramString, int paramInt);
  
  private final native void nativeDeclineCall(String paramString);
  
  private final native void nativeEndCall(String paramString);
  
  private final native void nativeFinalize();
  
  private static native void nativeInit();
  
  private final native void nativeInitializeRenderer();
  
  private final native boolean nativeIsSecure(String paramString);
  
  private final native boolean nativeIsVideo(String paramString);
  
  private final native void nativePrepareEngine(String paramString);
  
  private final native void nativeProcessSessionStanza(String paramString);
  
  private final native void nativeProcessSessionStanzaResponse(String paramString1, String paramString2);
  
  private final native void nativeRelease();
  
  private final native void nativeReleaseEngine();
  
  private final native void nativeRequestVideoViews(VideoViewRequest[] paramArrayOfVideoViewRequest);
  
  private final native void nativeSetGServicesOverride(String paramString1, String paramString2);
  
  private final native void nativeSetJingleInfoStanza(String paramString);
  
  private static final native void nativeSetLoggingLevel(int paramInt);
  
  private final native void nativeSetSelfViewFrameParameters(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3);
  
  private final native void nativeSetup(Object paramObject1, Object paramObject2, int paramInt1, int paramInt2);
  
  private final native void nativeUpdateRemoteJidForSession(String paramString1, String paramString2);
  
  public void acceptCall(String paramString)
  {
    nativeAcceptCall(paramString);
  }
  
  public final native void bindRenderer(int paramInt, RemoteRenderer paramRemoteRenderer);
  
  public void declineCall(String paramString)
  {
    nativeDeclineCall(paramString);
  }
  
  protected void finalize()
  {
    nativeFinalize();
  }
  
  public void init()
  {
    if (mInitialized)
    {
      log("init: already initialized");
      return;
    }
    mInitialized = true;
    log("init: call nativeSetup");
    int i = getLibjingleLogLevel("Talk.videoLogging");
    int j = getLibjingleLogLevel("Talk.audioLogging");
    nativeSetup(mContext, new WeakReference(this), i, j);
    Object localObject = mContext.getContentResolver();
    String[][] arrayOfString = ANDROID_SETTINGS_KEYS_MAP;
    j = arrayOfString.length;
    i = 0;
    while (i < j)
    {
      String[] arrayOfString1 = arrayOfString[i];
      String str = Gservices.getString((ContentResolver)localObject, arrayOfString1[0]);
      if (str != null) {
        nativeSetGServicesOverride(arrayOfString1[1], str);
      }
      i += 1;
    }
    localObject = VideoSpecification.getIncomingVideoSpec();
    nativeSetGServicesOverride("VIDEO_MAX_WIDTH", Integer.toString(getSizewidth));
    nativeSetGServicesOverride("VIDEO_MAX_HEIGHT", Integer.toString(getSizeheight));
    nativeSetGServicesOverride("VIDEO_MAX_FRAMERATE", Integer.toString(((VideoSpecification)localObject).getFrameRate()));
  }
  
  public void initializeRenderer()
  {
    Log.v("vclib:Libjingle", "initializeRenderer");
    nativeInitializeRenderer();
  }
  
  public void initiateCall(String paramString, int paramInt)
  {
    nativeCall(paramString, paramInt);
  }
  
  public boolean isInitialized()
  {
    return mInitialized;
  }
  
  public boolean isSecure(String paramString)
  {
    return nativeIsSecure(paramString);
  }
  
  public boolean isVideo(String paramString)
  {
    return nativeIsVideo(paramString);
  }
  
  public void prepareEngine(String paramString)
  {
    log("prepare engine");
    nativePrepareEngine(paramString);
  }
  
  public void processIncomingStanza(String paramString)
  {
    nativeProcessSessionStanza(paramString);
  }
  
  public void processIqStanzaResponse(String paramString1, String paramString2)
  {
    nativeProcessSessionStanzaResponse(paramString1, paramString2);
  }
  
  public void release()
  {
    if (!mInitialized)
    {
      log("release: already released");
      return;
    }
    mInitialized = false;
    log("Release: call nativeRelease");
    nativeRelease();
  }
  
  public void releaseEngine()
  {
    log("release engine");
    nativeReleaseEngine();
  }
  
  public void requestVideoViews(VideoViewRequest[] paramArrayOfVideoViewRequest)
  {
    nativeRequestVideoViews(paramArrayOfVideoViewRequest);
  }
  
  public void setDeviceHasEC(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "true";; str = "false")
    {
      nativeSetGServicesOverride("DEVICE_EC_SUPPORTED", str);
      return;
    }
  }
  
  public void setJingleInfoStanza(String paramString)
  {
    Log.v("vclib:Libjingle", "setJingleInfoStanza");
    nativeSetJingleInfoStanza(paramString);
  }
  
  public void setSelfViewFrameParameters(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    nativeSetSelfViewFrameParameters(paramBoolean, paramInt1, paramInt2, paramInt3);
  }
  
  public void terminateCall(String paramString)
  {
    nativeEndCall(paramString);
  }
  
  public final native void unbindRenderer(int paramInt);
  
  public void updateRemoteJidForSession(String paramString1, String paramString2)
  {
    nativeUpdateRemoteJidForSession(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.Libjingle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */