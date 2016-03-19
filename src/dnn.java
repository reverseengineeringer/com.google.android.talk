import android.text.TextUtils;

public class dnn
  extends dnh
{
  private static final long serialVersionUID = 1L;
  public final String a;
  public final String b;
  public final String c;
  public final boolean d;
  private final boolean j;
  
  public dnn(String paramString1, String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2)
  {
    hbs.b("Expected condition to be false", TextUtils.isEmpty(paramString1));
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramBoolean1;
    j = paramBoolean2;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject = new jpp();
    c = a;
    paramString = new jqc();
    a = ((jpp)localObject);
    b = c;
    localObject = new jqd();
    a = new jqc[] { paramString };
    b = Boolean.valueOf(d);
    paramString = new jqo();
    a = ((jqd)localObject);
    if (!d) {
      d = Boolean.valueOf(true);
    }
    localObject = new iyf();
    a = paramString;
    return (lyi)localObject;
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    return (j) && (super.a(paramcwk, paramdvn));
  }
  
  public String f()
  {
    return "blockuser";
  }
}

/* Location:
 * Qualified Name:     dnn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */