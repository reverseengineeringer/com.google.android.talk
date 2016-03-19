package org.webrtc.voiceengine;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.util.Log;
import com.google.android.apps.common.proguard.UsedByNative;
import java.nio.ByteBuffer;

public class WebRtcAudioTrack
{
  private static final int BITS_PER_SAMPLE = 16;
  private static final int BUFFERS_PER_SECOND = 100;
  private static final int CALLBACK_BUFFER_SIZE_MS = 10;
  private static final boolean DEBUG = true;
  private static final String TAG = "WebRtcAudioTrack";
  private static volatile boolean audioMute = false;
  private final AudioManager audioManager;
  private WebRtcAudioTrack.AudioTrackThread audioThread = null;
  private AudioTrack audioTrack = null;
  private ByteBuffer byteBuffer;
  private final Context context;
  private final long nativeAudioTrack;
  
  WebRtcAudioTrack(Context paramContext, long paramLong)
  {
    String str = String.valueOf(WebRtcAudioUtils.getThreadInfo());
    if (str.length() != 0) {}
    for (str = "ctor".concat(str);; str = new String("ctor"))
    {
      Logd(str);
      context = paramContext;
      nativeAudioTrack = paramLong;
      audioManager = ((AudioManager)paramContext.getSystemService("audio"));
      WebRtcAudioUtils.logDeviceInfo("WebRtcAudioTrack");
      return;
    }
  }
  
  private int GetStreamMaxVolume()
  {
    Logd("GetStreamMaxVolume");
    if (audioManager != null) {}
    for (boolean bool = true;; bool = false)
    {
      assertTrue(bool);
      return audioManager.getStreamMaxVolume(0);
    }
  }
  
  private int GetStreamVolume()
  {
    Logd("GetStreamVolume");
    if (audioManager != null) {}
    for (boolean bool = true;; bool = false)
    {
      assertTrue(bool);
      return audioManager.getStreamVolume(0);
    }
  }
  
  private void InitPlayout(int paramInt1, int paramInt2)
  {
    boolean bool2 = true;
    Logd(57 + "InitPlayout(sampleRate=" + paramInt1 + ", channels=" + paramInt2 + ")");
    byteBuffer = ByteBuffer.allocateDirect((paramInt2 << 1) * (paramInt1 / 100));
    paramInt2 = byteBuffer.capacity();
    Logd(32 + "byteBuffer.capacity: " + paramInt2);
    nativeCacheDirectBufferAddress(byteBuffer, nativeAudioTrack);
    paramInt2 = AudioTrack.getMinBufferSize(paramInt1, 4, 2);
    Logd(40 + "AudioTrack.getMinBufferSize: " + paramInt2);
    boolean bool1;
    if (audioTrack == null)
    {
      bool1 = true;
      assertTrue(bool1);
      if (byteBuffer.capacity() >= paramInt2) {
        break label235;
      }
      bool1 = true;
      label157:
      assertTrue(bool1);
    }
    for (;;)
    {
      try
      {
        audioTrack = new AudioTrack(0, paramInt1, 4, 2, paramInt2, 1);
        if (audioTrack.getState() != 1) {
          break label251;
        }
        bool1 = true;
        assertTrue(bool1);
        if (audioTrack.getPlayState() != 1) {
          break label256;
        }
        bool1 = true;
        assertTrue(bool1);
        if (audioTrack.getStreamType() != 0) {
          break label261;
        }
        bool1 = bool2;
        assertTrue(bool1);
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        label235:
        Logd(localIllegalArgumentException.getMessage());
        return;
      }
      bool1 = false;
      break;
      bool1 = false;
      break label157;
      label251:
      bool1 = false;
      continue;
      label256:
      bool1 = false;
      continue;
      label261:
      bool1 = false;
    }
  }
  
  private static void Logd(String paramString) {}
  
  private static void Loge(String paramString)
  {
    Log.e("WebRtcAudioTrack", paramString);
  }
  
  private boolean SetStreamVolume(int paramInt)
  {
    Logd(28 + "SetStreamVolume(" + paramInt + ")");
    if (audioManager != null) {}
    for (boolean bool = true;; bool = false)
    {
      assertTrue(bool);
      if ((!WebRtcAudioUtils.runningOnLollipopOrHigher()) || (!audioManager.isVolumeFixed())) {
        break;
      }
      Loge("The device implements a fixed volume policy.");
      return false;
    }
    audioManager.setStreamVolume(0, paramInt, 0);
    return true;
  }
  
  private boolean StartPlayout()
  {
    boolean bool2 = false;
    Logd("StartPlayout");
    if (audioTrack != null) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      assertTrue(bool1);
      bool1 = bool2;
      if (audioThread == null) {
        bool1 = true;
      }
      assertTrue(bool1);
      audioThread = new WebRtcAudioTrack.AudioTrackThread(this, "AudioTrackJavaThread");
      audioThread.start();
      return true;
    }
  }
  
  private boolean StopPlayout()
  {
    Logd("StopPlayout");
    if (audioThread != null) {}
    for (boolean bool = true;; bool = false)
    {
      assertTrue(bool);
      audioThread.joinThread();
      audioThread = null;
      if (audioTrack != null)
      {
        audioTrack.release();
        audioTrack = null;
      }
      return true;
    }
  }
  
  private static void assertTrue(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new AssertionError("Expected condition to be true");
    }
  }
  
  @UsedByNative
  private native void nativeCacheDirectBufferAddress(ByteBuffer paramByteBuffer, long paramLong);
  
  @UsedByNative
  private native void nativeGetPlayoutData(int paramInt, long paramLong);
  
  public static void setAudioMute(boolean paramBoolean)
  {
    audioMute = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     org.webrtc.voiceengine.WebRtcAudioTrack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */