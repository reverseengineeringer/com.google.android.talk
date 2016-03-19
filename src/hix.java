import org.webrtc.voiceengine.WebRtcAudioTrack;

public final class hix
  implements hkr
{
  private hks a;
  private boolean b;
  
  public void a()
  {
    a = null;
    WebRtcAudioTrack.setAudioMute(true);
  }
  
  public void a(hks paramhks)
  {
    a = paramhks;
    c_(b);
  }
  
  public void b()
  {
    c_(true);
  }
  
  public void c_(boolean paramBoolean)
  {
    b = paramBoolean;
    if (a == null) {
      return;
    }
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      WebRtcAudioTrack.setAudioMute(paramBoolean);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     hix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */