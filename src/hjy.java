import org.webrtc.voiceengine.WebRtcAudioRecord;

public final class hjy
  implements hkq
{
  private hcd a;
  private boolean b;
  
  public void a() {}
  
  public void a(hks paramhks)
  {
    hbs.a("Must use CallClient", paramhks instanceof hcd);
    a = ((hcd)paramhks);
    a(b);
  }
  
  public void a(boolean paramBoolean)
  {
    boolean bool2 = true;
    b = paramBoolean;
    boolean bool1;
    hcd localhcd;
    if (a != null)
    {
      if (b) {
        break label46;
      }
      bool1 = true;
      WebRtcAudioRecord.setMicrophoneMute(bool1);
      localhcd = a;
      if (paramBoolean) {
        break label51;
      }
    }
    label46:
    label51:
    for (paramBoolean = bool2;; paramBoolean = false)
    {
      localhcd.a(paramBoolean);
      return;
      bool1 = false;
      break;
    }
  }
  
  public boolean b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     hjy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */