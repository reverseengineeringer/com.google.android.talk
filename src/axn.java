import android.text.TextUtils;
import java.io.Serializable;

public final class axn
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private final String a;
  private String b;
  private final int c;
  private final axp d;
  
  public axn(axo paramaxo)
  {
    hbs.b("Circle id can't be null", a);
    a = a;
    b = b;
    c = c;
    d = d;
  }
  
  public static axo newBuilder()
  {
    return new axo();
  }
  
  public static axo newBuilder(axn paramaxn)
  {
    return newBuilder().a(paramaxn);
  }
  
  public boolean a()
  {
    return !TextUtils.isEmpty(a);
  }
  
  public String b()
  {
    return a;
  }
  
  public boolean c()
  {
    return !TextUtils.isEmpty(b);
  }
  
  public String d()
  {
    return b;
  }
  
  public int e()
  {
    return c;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof axn)) {
      return false;
    }
    paramObject = (axn)paramObject;
    return a.equals(a);
  }
  
  public boolean f()
  {
    return d != null;
  }
  
  public axp g()
  {
    return d;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
}

/* Location:
 * Qualified Name:     axn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */