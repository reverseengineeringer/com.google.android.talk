package org.webrtc.voiceengine;

import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.AudioTrack;
import android.os.Build;
import android.util.Log;
import com.google.android.apps.common.proguard.UsedByNative;

class WebRtcAudioManager
{
  private static final String[] AUDIO_MODES = { "MODE_NORMAL", "MODE_RINGTONE", "MODE_IN_CALL", "MODE_IN_COMMUNICATION" };
  private static final int BITS_PER_SAMPLE = 16;
  private static final int CHANNELS = 1;
  private static final boolean DEBUG = false;
  private static final int DEFAULT_FRAME_PER_BUFFER = 256;
  private static final int SAMPLE_RATE_HZ = 16000;
  private static final String TAG = "WebRtcAudioManager";
  private final AudioManager audioManager;
  private boolean audioModeNeedsRestore = false;
  private int channels;
  private final Context context;
  private boolean hardwareAEC;
  private boolean initialized = false;
  private int inputBufferSize;
  private boolean lowLatencyOutput;
  private final long nativeAudioManager;
  private int nativeChannels;
  private int nativeSampleRate;
  private int outputBufferSize;
  private int sampleRate;
  private int savedAudioMode = -2;
  
  WebRtcAudioManager(Context paramContext, long paramLong)
  {
    String str = String.valueOf(WebRtcAudioUtils.getThreadInfo());
    if (str.length() != 0) {}
    for (str = "ctor".concat(str);; str = new String("ctor"))
    {
      Logd(str);
      context = paramContext;
      nativeAudioManager = paramLong;
      audioManager = ((AudioManager)paramContext.getSystemService("audio"));
      storeAudioParameters();
      nativeCacheAudioParameters(sampleRate, channels, hardwareAEC, lowLatencyOutput, outputBufferSize, inputBufferSize, paramLong);
      return;
    }
  }
  
  private static void Logd(String paramString) {}
  
  private static void Loge(String paramString)
  {
    Log.e("WebRtcAudioManager", paramString);
  }
  
  private static void assertTrue(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new AssertionError("Expected condition to be true");
    }
  }
  
  private void dispose()
  {
    String str = String.valueOf(WebRtcAudioUtils.getThreadInfo());
    if (str.length() != 0) {}
    for (str = "dispose".concat(str);; str = new String("dispose"))
    {
      Logd(str);
      if (!initialized) {}
      return;
    }
  }
  
  private int getLowLatencyInputFramesPerBuffer()
  {
    assertTrue(isLowLatencyInputSupported());
    return getLowLatencyOutputFramesPerBuffer();
  }
  
  private int getLowLatencyOutputFramesPerBuffer()
  {
    assertTrue(isLowLatencyOutputSupported());
    if (!WebRtcAudioUtils.runningOnJellyBeanMR1OrHigher()) {}
    String str;
    do
    {
      return 256;
      str = audioManager.getProperty("android.media.property.OUTPUT_FRAMES_PER_BUFFER");
    } while (str == null);
    return Integer.parseInt(str);
  }
  
  private static int getMinInputFrameSize(int paramInt1, int paramInt2)
  {
    boolean bool = true;
    if (paramInt2 == 1) {}
    for (;;)
    {
      assertTrue(bool);
      return AudioRecord.getMinBufferSize(paramInt1, 16, 2) / (paramInt2 << 1);
      bool = false;
    }
  }
  
  private static int getMinOutputFrameSize(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 1) {}
    for (int i = 4;; i = 12)
    {
      return AudioTrack.getMinBufferSize(paramInt1, i, 2) / (paramInt2 << 1);
      if (paramInt2 != 2) {
        break;
      }
    }
    return -1;
  }
  
  private int getNativeOutputSampleRate()
  {
    if (WebRtcAudioUtils.runningOnEmulator())
    {
      Logd("Running on old emulator, overriding sampling rate to 8 kHz.");
      return 8000;
    }
    return WebRtcAudioUtils.getDefaultSampleRateHz();
  }
  
  private boolean hasEarpiece()
  {
    return context.getPackageManager().hasSystemFeature("android.hardware.telephony");
  }
  
  private boolean init()
  {
    String str = String.valueOf(WebRtcAudioUtils.getThreadInfo());
    if (str.length() != 0) {}
    for (str = "init".concat(str);; str = new String("init"))
    {
      Logd(str);
      if (!initialized) {
        break;
      }
      return true;
    }
    initialized = true;
    return true;
  }
  
  private static boolean isAcousticEchoCancelerSupported()
  {
    if (WebRtcAudioUtils.deviceIsBlacklistedForHwAecUsage())
    {
      Logd(String.valueOf(Build.MODEL).concat(" is blacklisted for HW AEC usage!"));
      return false;
    }
    return WebRtcAudioUtils.isAcousticEchoCancelerSupported();
  }
  
  private boolean isLowLatencyOutputSupported()
  {
    return (isOpenSLESSupported()) && (context.getPackageManager().hasSystemFeature("android.hardware.audio.low_latency"));
  }
  
  private static boolean isOpenSLESSupported()
  {
    return WebRtcAudioUtils.runningOnGingerBreadOrHigher();
  }
  
  @UsedByNative
  private native void nativeCacheAudioParameters(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3, int paramInt4, long paramLong);
  
  private void setCommunicationMode(boolean paramBoolean)
  {
    String str = String.valueOf(WebRtcAudioUtils.getThreadInfo());
    Logd(String.valueOf(str).length() + 27 + "setCommunicationMode(" + paramBoolean + ")" + str);
    assertTrue(initialized);
    if ((paramBoolean) && (audioManager.getMode() == 3)) {}
  }
  
  private void storeAudioParameters()
  {
    channels = 1;
    sampleRate = getNativeOutputSampleRate();
    hardwareAEC = isAcousticEchoCancelerSupported();
    lowLatencyOutput = isLowLatencyOutputSupported();
    if (lowLatencyOutput) {}
    for (int i = getLowLatencyOutputFramesPerBuffer();; i = getMinOutputFrameSize(sampleRate, channels))
    {
      outputBufferSize = i;
      inputBufferSize = getMinInputFrameSize(sampleRate, channels);
      return;
    }
  }
  
  public boolean isLowLatencyInputSupported()
  {
    return (WebRtcAudioUtils.runningOnLollipopOrHigher()) && (isLowLatencyOutputSupported());
  }
}

/* Location:
 * Qualified Name:     org.webrtc.voiceengine.WebRtcAudioManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */