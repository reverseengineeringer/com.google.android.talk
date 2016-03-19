package org.webrtc.voiceengine;

import android.content.Context;
import android.media.AudioRecord;
import android.media.audiofx.AcousticEchoCanceler;
import android.os.Build.VERSION;
import android.util.Log;
import com.google.android.apps.common.proguard.UsedByNative;
import java.nio.ByteBuffer;

public class WebRtcAudioRecord
{
  private static final int BITS_PER_SAMPLE = 16;
  private static final int BUFFERS_PER_SECOND = 100;
  private static final int CALLBACK_BUFFER_SIZE_MS = 10;
  private static final boolean DEBUG = false;
  private static final String TAG = "WebRtcAudioRecord";
  private static volatile boolean microphoneMute = false;
  private AcousticEchoCanceler aec = null;
  private AudioEffectsJB audioEffects = null;
  private AudioRecord audioRecord = null;
  private WebRtcAudioRecord.AudioRecordThread audioThread = null;
  private ByteBuffer byteBuffer;
  private final Context context;
  private byte[] emptyBytes;
  private final long nativeAudioRecord;
  private boolean useBuiltInAEC = false;
  
  WebRtcAudioRecord(Context paramContext, long paramLong)
  {
    String str = String.valueOf(WebRtcAudioUtils.getThreadInfo());
    if (str.length() != 0) {}
    for (str = "ctor".concat(str);; str = new String("ctor"))
    {
      Logd(str);
      context = paramContext;
      nativeAudioRecord = paramLong;
      return;
    }
  }
  
  private boolean EnableBuiltInAEC(boolean paramBoolean)
  {
    Logd(23 + "EnableBuiltInAEC(" + paramBoolean + ")");
    assertTrue(WebRtcAudioUtils.isAcousticEchoCancelerApproved());
    useBuiltInAEC = paramBoolean;
    if (aec != null)
    {
      if (aec.setEnabled(paramBoolean) != 0)
      {
        Loge("AcousticEchoCanceler.setEnabled failed");
        return false;
      }
      paramBoolean = aec.getEnabled();
      Logd(38 + "AcousticEchoCanceler.getEnabled: " + paramBoolean);
    }
    return true;
  }
  
  private int InitRecording(int paramInt1, int paramInt2)
  {
    Logd(59 + "InitRecording(sampleRate=" + paramInt1 + ", channels=" + paramInt2 + ")");
    if (!WebRtcAudioUtils.hasPermission(context, "android.permission.RECORD_AUDIO"))
    {
      Loge("RECORD_AUDIO permission is missing");
      return -1;
    }
    int i = paramInt1 / 100;
    byteBuffer = ByteBuffer.allocateDirect((paramInt2 << 1) * i);
    paramInt2 = byteBuffer.capacity();
    Logd(32 + "byteBuffer.capacity: " + paramInt2);
    emptyBytes = new byte[byteBuffer.capacity()];
    nativeCacheDirectBufferAddress(byteBuffer, nativeAudioRecord);
    paramInt2 = AudioRecord.getMinBufferSize(paramInt1, 16, 2);
    if (paramInt2 == -2)
    {
      Loge("Received invalid value for buffer size");
      return -1;
    }
    Logd(41 + "AudioRecord.getMinBufferSize: " + paramInt2);
    paramInt2 <<= 1;
    Logd(30 + "bufferSizeInBytes: " + paramInt2);
    if (audioRecord != null)
    {
      audioRecord.release();
      audioRecord = null;
    }
    releaseEffects();
    try
    {
      audioRecord = new AudioRecord(7, paramInt1, 16, 2, paramInt2);
      String str = String.valueOf("AudioRecord session ID: ");
      paramInt1 = audioRecord.getAudioSessionId();
      paramInt2 = audioRecord.getAudioFormat();
      int j = audioRecord.getChannelCount();
      int k = audioRecord.getSampleRate();
      Logd(String.valueOf(str).length() + 87 + str + paramInt1 + ", audio format: " + paramInt2 + ", channels: " + j + ", sample rate: " + k);
      enableEffects();
      return i;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Logd(localIllegalArgumentException.getMessage());
    }
    return -1;
  }
  
  private static void Logd(String paramString) {}
  
  private static void Loge(String paramString)
  {
    Log.e("WebRtcAudioRecord", paramString);
  }
  
  private boolean StartRecording()
  {
    Logd("StartRecording");
    if (audioRecord != null)
    {
      bool = true;
      assertTrue(bool);
      if (audioThread != null) {
        break label61;
      }
    }
    label61:
    for (boolean bool = true;; bool = false)
    {
      assertTrue(bool);
      try
      {
        audioRecord.startRecording();
        if (audioRecord.getRecordingState() == 3) {
          break label108;
        }
        Loge("AudioRecord.startRecording failed");
        return false;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        String str = String.valueOf(localIllegalStateException.getMessage());
        if (str.length() == 0) {
          break label95;
        }
        for (str = "AudioRecord.startRecording failed: ".concat(str);; str = new String("AudioRecord.startRecording failed: "))
        {
          Loge(str);
          return false;
        }
        audioThread = new WebRtcAudioRecord.AudioRecordThread(this, "AudioRecordJavaThread");
        audioThread.start();
      }
      bool = false;
      break;
    }
    label95:
    label108:
    return true;
  }
  
  private boolean StopRecording()
  {
    Logd("StopRecording");
    if (audioThread != null) {}
    for (boolean bool = true;; bool = false)
    {
      assertTrue(bool);
      audioThread.joinThread();
      audioThread = null;
      if (aec != null)
      {
        aec.release();
        aec = null;
      }
      audioRecord.release();
      audioRecord = null;
      releaseEffects();
      return true;
    }
  }
  
  private static void assertTrue(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new AssertionError("Expected condition to be true");
    }
  }
  
  private static boolean builtInAECIsAvailable()
  {
    return WebRtcAudioUtils.isAcousticEchoCancelerSupported();
  }
  
  private void enableEffects()
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      if (audioEffects == null) {
        audioEffects = new AudioEffectsJB();
      }
      audioEffects.enable(audioRecord);
    }
  }
  
  @UsedByNative
  private native void nativeCacheDirectBufferAddress(ByteBuffer paramByteBuffer, long paramLong);
  
  @UsedByNative
  private native void nativeDataIsRecorded(int paramInt, long paramLong);
  
  private void releaseEffects()
  {
    if (audioEffects != null)
    {
      audioEffects.release();
      audioEffects = null;
    }
  }
  
  public static void setMicrophoneMute(boolean paramBoolean)
  {
    microphoneMute = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     org.webrtc.voiceengine.WebRtcAudioRecord
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */