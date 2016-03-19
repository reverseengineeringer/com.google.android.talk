package org.webrtc.voiceengine;

import android.media.AudioTrack;
import android.os.Process;
import java.nio.ByteBuffer;

class WebRtcAudioTrack$AudioTrackThread
  extends Thread
{
  private volatile boolean keepAlive = true;
  
  public WebRtcAudioTrack$AudioTrackThread(WebRtcAudioTrack paramWebRtcAudioTrack, String paramString)
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
    boolean bool2 = true;
    Process.setThreadPriority(-19);
    String str1 = String.valueOf(WebRtcAudioUtils.getThreadInfo());
    if (str1.length() != 0)
    {
      str1 = "AudioTrackThread".concat(str1);
      WebRtcAudioTrack.access$000(str1);
    }
    boolean bool1;
    for (;;)
    {
      try
      {
        WebRtcAudioTrack.access$100(this$0).play();
        if (WebRtcAudioTrack.access$100(this$0).getPlayState() != 3) {
          continue;
        }
        bool1 = true;
        WebRtcAudioTrack.access$200(bool1);
        j = WebRtcAudioTrack.access$400(this$0).capacity();
        if (!keepAlive) {
          break label315;
        }
        if (WebRtcAudioTrack.access$500()) {
          continue;
        }
        WebRtcAudioTrack.access$700(this$0, j, WebRtcAudioTrack.access$600(this$0));
        if (j > WebRtcAudioTrack.access$400(this$0).remaining()) {
          continue;
        }
        bool1 = true;
      }
      catch (IllegalStateException localIllegalStateException1)
      {
        int j;
        String str2 = String.valueOf(localIllegalStateException1.getMessage());
        if (str2.length() == 0) {
          continue;
        }
        str2 = "AudioTrack.play failed: ".concat(str2);
        WebRtcAudioTrack.access$300(str2);
        return;
        str2 = new String("AudioTrack.play failed: ");
        continue;
        bool1 = false;
        continue;
        int i = WebRtcAudioTrack.access$100(this$0).write(WebRtcAudioTrack.access$400(this$0).array(), WebRtcAudioTrack.access$400(this$0).arrayOffset(), j);
        continue;
      }
      WebRtcAudioTrack.access$200(bool1);
      if (!WebRtcAudioUtils.runningOnLollipopOrHigher()) {
        continue;
      }
      i = WebRtcAudioTrack.access$100(this$0).write(WebRtcAudioTrack.access$400(this$0), j, 0);
      if (i != j)
      {
        WebRtcAudioTrack.access$300(36 + "AudioTrack.write failed: " + i);
        if (i == -3) {
          keepAlive = false;
        }
      }
      WebRtcAudioTrack.access$400(this$0).rewind();
      continue;
      str1 = new String("AudioTrackThread");
      break;
      bool1 = false;
    }
    try
    {
      label315:
      WebRtcAudioTrack.access$100(this$0).stop();
      if (WebRtcAudioTrack.access$100(this$0).getPlayState() == 1)
      {
        bool1 = bool2;
        WebRtcAudioTrack.access$200(bool1);
        WebRtcAudioTrack.access$100(this$0).flush();
        return;
      }
    }
    catch (IllegalStateException localIllegalStateException2)
    {
      for (;;)
      {
        String str3 = String.valueOf(localIllegalStateException2.getMessage());
        if (str3.length() != 0) {}
        for (str3 = "AudioTrack.stop failed: ".concat(str3);; str3 = new String("AudioTrack.stop failed: "))
        {
          WebRtcAudioTrack.access$300(str3);
          break;
        }
        bool1 = false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.webrtc.voiceengine.WebRtcAudioTrack.AudioTrackThread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */