import android.text.TextUtils;

public class dnp
  extends dnh
{
  private static final long serialVersionUID = 1L;
  private final String a;
  private final String b;
  private final int c;
  private final dnq d;
  
  public dnp(dnq paramdnq, String paramString1, String paramString2, int paramInt)
  {
    d = paramdnq;
    a = paramString1;
    b = paramString2;
    c = paramInt;
  }
  
  public String a()
  {
    return "ui_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    paramString = new izc();
    Object localObject = new iyz();
    if (d == dnq.c) {
      a = Integer.valueOf(c);
    }
    for (;;)
    {
      a = ((iyz)localObject);
      localObject = new iyt();
      a = paramString;
      return (lyi)localObject;
      if (d == dnq.b)
      {
        e = Integer.valueOf(c);
      }
      else if (d == dnq.a)
      {
        f = Integer.valueOf(c);
      }
      else
      {
        hbs.b("Expected condition to be false", TextUtils.isEmpty(a));
        iza localiza = new iza();
        a = a;
        b = b;
        c = Integer.valueOf(c);
        c = new iza[] { localiza };
      }
    }
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    parambfd = String.valueOf(ezi.b(parambfd.c()));
    if (parambfd.length() != 0) {}
    for (parambfd = "SetChatAclSettingRequest failed for ".concat(parambfd);; parambfd = new String("SetChatAclSettingRequest failed for "))
    {
      ezi.d("Babel", parambfd, paramdvn);
      return;
    }
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    return false;
  }
  
  public String f()
  {
    return "setchatacls";
  }
}

/* Location:
 * Qualified Name:     dnp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */