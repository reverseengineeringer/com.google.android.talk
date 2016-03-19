public class dpr
  extends dpf
{
  private static final long serialVersionUID = 1L;
  public final boolean a;
  public final String b;
  
  public dpr(boolean paramBoolean, String paramString)
  {
    a = paramBoolean;
    b = paramString;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    int i = 1;
    if (doo.e)
    {
      boolean bool = a;
      localObject = b;
      new StringBuilder(String.valueOf(localObject).length() + 48).append("SetCallerIdRequest: enable=").append(bool).append("e164PhoneNumber=").append((String)localObject);
    }
    Object localObject = new kec();
    requestHeader = don.a(null, true, paramString, paramInt1, paramInt2, h);
    a = new jxe[1];
    a[0] = new jxe();
    a[0].a = new lcf();
    a[0].a.a = b;
    paramString = a[0];
    if (a) {}
    for (paramInt1 = i;; paramInt1 = 2)
    {
      b = Integer.valueOf(paramInt1);
      return (lyi)localObject;
    }
  }
  
  public String f()
  {
    return "contacts/setcalleridconfig";
  }
}

/* Location:
 * Qualified Name:     dpr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */