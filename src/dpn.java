import android.text.TextUtils;

public class dpn
  extends dpf
{
  private static final int[] a = { 1 };
  private static final long serialVersionUID = 1L;
  private final String b;
  private final String c;
  
  public dpn(String paramString1, String paramString2)
  {
    c = paramString1;
    b = paramString2;
  }
  
  public String a()
  {
    return "ui_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    kdt localkdt = new kdt();
    a = c;
    b = Integer.valueOf(50);
    f = a;
    requestHeader = don.a(null, true, paramString, paramInt1, paramInt2, h);
    return localkdt;
  }
  
  public boolean a(cwi paramcwi)
  {
    hbs.a(getClass(), paramcwi.getClass());
    return TextUtils.equals(b, b);
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    return false;
  }
  
  public String f()
  {
    return "contacts/searchentities";
  }
}

/* Location:
 * Qualified Name:     dpn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */