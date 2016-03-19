import android.content.Context;
import android.text.TextUtils;
import java.util.concurrent.TimeUnit;

public final class epa
{
  long a = TimeUnit.SECONDS.toMillis(3L);
  String b;
  String c;
  String d;
  eph e;
  boolean f;
  private Context g;
  
  epa(Context paramContext)
  {
    g = paramContext;
  }
  
  public String a()
  {
    return b;
  }
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    return d;
  }
  
  public eph d()
  {
    return e;
  }
  
  public long e()
  {
    if ((g != null) && (ezc.a(g))) {
      return a * 10L;
    }
    return a;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof epa))
    {
      paramObject = (epa)paramObject;
      bool1 = bool2;
      if (a == a)
      {
        bool1 = bool2;
        if (TextUtils.equals(b, b))
        {
          bool1 = bool2;
          if (TextUtils.equals(c, c))
          {
            bool1 = bool2;
            if (TextUtils.equals(d, d))
            {
              bool1 = bool2;
              if (f == f) {
                bool1 = true;
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public boolean f()
  {
    return f;
  }
  
  public int hashCode()
  {
    int n = 0;
    int i;
    int j;
    label33:
    int k;
    if (b != null)
    {
      i = b.hashCode();
      if (c == null) {
        break label128;
      }
      j = c.hashCode();
      if (d == null) {
        break label133;
      }
      k = d.hashCode();
      label48:
      if (e == null) {
        break label138;
      }
    }
    label128:
    label133:
    label138:
    for (int m = e.hashCode();; m = 0)
    {
      int i1 = (int)(a ^ a >>> 32);
      if (f) {
        n = 1;
      }
      return ((m + (k + (j + (i + 2573) * 31) * 31) * 31) * 31 + i1) * 31 + n;
      i = 0;
      break;
      j = 0;
      break label33;
      k = 0;
      break label48;
    }
  }
}

/* Location:
 * Qualified Name:     epa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */