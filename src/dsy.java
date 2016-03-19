import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public class dsy
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private String[] g;
  
  private dsy(kfr paramkfr)
  {
    super(responseHeader, -1L);
    g = new String[a.length];
    int i = 0;
    while (i < g.length)
    {
      g[i] = a[i].b;
      i += 1;
    }
    String str;
    if (ezi.a("Babel", 3))
    {
      str = String.valueOf("UndismissSuggestedContactsResponse debugUrl: ");
      paramkfr = String.valueOf(responseHeader.c);
      if (paramkfr.length() == 0) {
        break label106;
      }
    }
    label106:
    for (paramkfr = str.concat(paramkfr);; paramkfr = new String(str))
    {
      ezi.b("Babel", paramkfr, new Object[0]);
      return;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kfr)lyi.b(new kfr(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsy(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    parambfz.a();
    try
    {
      paramdyy = g;
      int j = paramdyy.length;
      int i = 0;
      while (i < j)
      {
        parambfz.E(paramdyy[i]);
        i += 1;
      }
      parambfz.b();
      parambfz.c();
      bff.b(aal.oJ, parambfz.g().g(), "hash_dismissed_contacts");
      RealTimeChatService.a(parambfz.g().g(), true);
      return;
    }
    finally
    {
      parambfz.c();
    }
  }
}

/* Location:
 * Qualified Name:     dsy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */