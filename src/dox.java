import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public abstract class dox
  extends dor
{
  private static final long serialVersionUID = 1L;
  public final String j;
  
  public dox(String paramString1, String paramString2)
  {
    super(paramString1);
    j = paramString2;
  }
  
  public String a()
  {
    return "event_queue";
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    String str1;
    String str2;
    if (doo.e)
    {
      str1 = String.valueOf(this);
      str2 = c;
      String str3 = j;
      new StringBuilder(String.valueOf(str1).length() + 11 + String.valueOf(str2).length() + String.valueOf(str3).length()).append("onFailed ").append(str1).append(" ").append(str2).append(" ").append(str3);
    }
    super.a(parambfd, paramdvn);
    if (!d)
    {
      str1 = c;
      str2 = j;
      if (paramdvn == null) {
        break label156;
      }
    }
    label156:
    for (int i = paramdvn.c();; i = 0)
    {
      RealTimeChatService.a(parambfd, str1, str2, i);
      ((cyh)ilh.a(aal.oJ, cyh.class)).c(parambfd.g());
      return;
    }
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    boolean bool = super.a(paramcwk, paramdvn);
    if ((paramdvn.c() == 101) || (paramdvn.c() == 102))
    {
      if (ezi.a("Babel_RequestWriter", 3)) {
        ezi.a("Babel_RequestWriter", "Do not retry for EventRequest if network is not available.", new Object[0]);
      }
      bool = false;
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     dox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */