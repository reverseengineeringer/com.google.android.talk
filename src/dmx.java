import java.net.URLEncoder;

public class dmx
  extends dmt
{
  private static final long serialVersionUID = 1L;
  private final String a;
  private final String b;
  
  public dmx(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    return new dmv();
  }
  
  public String f()
  {
    String str1 = String.valueOf("users/@me/phones/");
    String str2 = String.valueOf(URLEncoder.encode(b));
    String str3 = String.valueOf("/proxyNumbers/");
    String str4 = String.valueOf(URLEncoder.encode(a));
    return String.valueOf(str1).length() + 0 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + str1 + str2 + str3 + str4;
  }
  
  public boolean h()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     dmx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */