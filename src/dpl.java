import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public class dpl
  extends dox
{
  private static final long serialVersionUID = 1L;
  public final String a;
  public final String b;
  
  public dpl(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(paramString2, paramString1);
    a = paramString3;
    b = paramString4;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    jzr localjzr = new jzr();
    b = bfz.c(j);
    a = don.a(c);
    e = Integer.valueOf(6);
    kdj localkdj = new kdj();
    requestHeader = don.a(paramString, paramInt1, paramInt2, h);
    b = a;
    a = localjzr;
    return localkdj;
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    super.a(parambfd, paramdvn);
    RealTimeChatService.a(parambfd.g(), c, b);
  }
  
  public String f()
  {
    return "conversations/renameconversation";
  }
}

/* Location:
 * Qualified Name:     dpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */