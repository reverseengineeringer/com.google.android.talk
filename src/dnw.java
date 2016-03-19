import android.text.TextUtils;
import java.io.Serializable;

public final class dnw
  implements Serializable
{
  public final int a;
  public final long b;
  public final double c;
  public final double d;
  public final String e;
  
  public dnw(jyu paramjyu)
  {
    e = f;
    a = aal.a(a, 0);
    b = aal.a(d, 0L);
    c = aal.a(b);
    d = aal.a(c);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof dnw)) {
        return false;
      }
      paramObject = (dnw)paramObject;
    } while ((a == a) && (b == b) && (c == c) && (d == d) && (TextUtils.equals(e, e)));
    return false;
  }
  
  public int hashCode()
  {
    int i = a;
    i = aal.a(b, i + 527);
    i = aal.a(c, i);
    i = aal.a(d, i);
    return aal.a(e, i);
  }
  
  public String toString()
  {
    String str = e;
    int i = a;
    double d1 = c;
    double d2 = d;
    long l = b;
    return String.valueOf(str).length() + 123 + "[" + str + "]: type=" + i + ", latitude=" + d1 + ", longitude=" + d2 + ", timestamp=" + l;
  }
}

/* Location:
 * Qualified Name:     dnw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */