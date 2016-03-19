package org.webrtc.voiceengine;

import android.media.AudioRecord;
import android.os.Process;
import java.nio.ByteBuffer;

class WebRtcAudioRecord$AudioRecordThread
  extends Thread
{
  private volatile boolean keepAlive = true;
  
  public WebRtcAudioRecord$AudioRecordThread(WebRtcAudioRecord paramWebRtcAudioRecord, String paramString)
  {
    super(paramString);
  }
  
  public void joinThread()
  {
    keepAlive = false;
    while (isAlive()) {
      try
      {
        join();
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
  
  public void run()
  {
    Process.setThreadPriority(-19);
    String str1 = String.valueOf(WebRtcAudioUtils.getThreadInfo());
    if (str1.length() != 0)
    {
      str1 = "AudioRecordThread".concat(str1);
      WebRtcAudioRecord.access$000(str1);
      System.nanoTime();
    }
    for (;;)
    {
      if (!keepAlive) {
        break label187;
      }
      int i = WebRtcAudioRecord.access$200(this$0).read(WebRtcAudioRecord.access$100(this$0), WebRtcAudioRecord.access$100(this$0).capacity());
      if (WebRtcAudioRecord.access$300())
      {
        WebRtcAudioRecord.access$100(this$0).clear();
        WebRtcAudioRecord.access$100(this$0).put(WebRtcAudioRecord.access$400(this$0));
      }
      if (i == WebRtcAudioRecord.access$100(this$0).capacity())
      {
        WebRtcAudioRecord.access$600(this$0, i, WebRtcAudioRecord.access$500(this$0));
        continue;
        str1 = new String("AudioRecordThread");
        break;
      }
      WebRtcAudioRecord.access$700(36 + "AudioRecord.read failed: " + i);
      if (i == -3) {
        keepAlive = false;
      }
    }
    try
    {
      label187:
      WebRtcAudioRecord.access$200(this$0).stop();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      str2 = String.valueOf(localIllegalStateException.getMessage());
      if (str2.length() == 0) {}
    }
    for (String str2 = "AudioRecord.stop failed: ".concat(str2);; str2 = new String("AudioRecord.stop failed: "))
    {
      WebRtcAudioRecord.access$700(str2);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     org.webrtc.voiceengine.WebRtcAudioRecord.AudioRecordThread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */