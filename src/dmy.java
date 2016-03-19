public class dmy
  extends dmt
{
  private static final long serialVersionUID = 1L;
  private final String a;
  
  public dmy(String paramString)
  {
    String str = ezm.g(paramString);
    if (str == null)
    {
      ezi.e("Babel_RequestWriter", String.valueOf(paramString).length() + 45 + "Invalid phone number: " + paramString + " in GetCallRateRequest.", new Object[0]);
      a = null;
      return;
    }
    if (str.charAt(0) == '+')
    {
      a = str.substring(1);
      return;
    }
    a = str;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    return new dmv();
  }
  
  public String f()
  {
    String str1 = String.valueOf("users/@me/destinations/%");
    String str2 = String.valueOf(Integer.toHexString(43));
    String str3 = a;
    String str4 = String.valueOf("/rate");
    return String.valueOf(str1).length() + 0 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + str1 + str2 + str3 + str4;
  }
  
  public boolean h()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     dmy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */