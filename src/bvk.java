import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class bvk
  extends ecg<bvm>
{
  public bvk(bvm parambvm)
  {
    super(parambvm);
  }
  
  public boolean E_()
  {
    return false;
  }
  
  public boolean F_()
  {
    return true;
  }
  
  protected dom a(bfd parambfd, int paramInt)
  {
    return new bvl(parambfd, paramInt, (bvm)a);
  }
  
  public String a()
  {
    return "event_queue";
  }
  
  protected void a(int paramInt, dvn paramdvn)
  {
    bfd localbfd = dvd.e(paramInt);
    if (paramdvn.c() == 113)
    {
      paramdvn = String.valueOf(((bvm)a).b());
      if (paramdvn.length() != 0) {}
      for (paramdvn = "Conversation not found for ".concat(paramdvn);; paramdvn = new String("Conversation not found for "))
      {
        ezi.d("Babel", paramdvn, new Object[0]);
        RealTimeChatService.f(localbfd, ((bvm)a).b());
        return;
      }
    }
    RealTimeChatService.a(localbfd, ((bvm)a).b(), ((bvm)a).a(), paramdvn.c());
    ((cyh)ilh.a(aal.oJ, cyh.class)).c(localbfd.g());
  }
  
  public boolean a(cwi paramcwi)
  {
    return false;
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    boolean bool = super.a(paramcwk, paramdvn);
    if ((paramdvn.c() == 101) || (paramdvn.c() == 102) || (paramdvn.c() == 103)) {
      bool = false;
    }
    return bool;
  }
  
  public boolean a(String paramString)
  {
    return false;
  }
  
  public long b()
  {
    return aal.a(aal.oJ, "babel_pending_message_failure_duration", 1200000L);
  }
  
  public String e()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     bvk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */