import java.security.MessageDigest;
import java.util.Map;

final class ali
  implements aiw
{
  private final Object b;
  private final int c;
  private final int d;
  private final Class<?> e;
  private final Class<?> f;
  private final aiw g;
  private final Map<Class<?>, ajd<?>> h;
  private final aja i;
  private int j;
  
  public ali(Object paramObject, aiw paramaiw, int paramInt1, int paramInt2, Map<Class<?>, ajd<?>> paramMap, Class<?> paramClass1, Class<?> paramClass2, aja paramaja)
  {
    b = aal.a(paramObject, "Argument must not be null");
    g = ((aiw)aal.a(paramaiw, "Signature must not be null"));
    c = paramInt1;
    d = paramInt2;
    h = ((Map)aal.a(paramMap, "Argument must not be null"));
    e = ((Class)aal.a(paramClass1, "Resource class must not be null"));
    f = ((Class)aal.a(paramClass2, "Transcode class must not be null"));
    i = ((aja)aal.a(paramaja, "Argument must not be null"));
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof ali))
    {
      paramObject = (ali)paramObject;
      bool1 = bool2;
      if (b.equals(b))
      {
        bool1 = bool2;
        if (g.equals(g))
        {
          bool1 = bool2;
          if (d == d)
          {
            bool1 = bool2;
            if (c == c)
            {
              bool1 = bool2;
              if (h.equals(h))
              {
                bool1 = bool2;
                if (e.equals(e))
                {
                  bool1 = bool2;
                  if (f.equals(f))
                  {
                    bool1 = bool2;
                    if (i.equals(i)) {
                      bool1 = true;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    if (j == 0)
    {
      j = b.hashCode();
      j = (j * 31 + g.hashCode());
      j = (j * 31 + c);
      j = (j * 31 + d);
      j = (j * 31 + h.hashCode());
      j = (j * 31 + e.hashCode());
      j = (j * 31 + f.hashCode());
      j = (j * 31 + i.hashCode());
    }
    return j;
  }
  
  public String toString()
  {
    String str1 = String.valueOf("EngineKey{model=");
    String str2 = String.valueOf(b);
    int k = c;
    int m = d;
    String str3 = String.valueOf(e);
    String str4 = String.valueOf(f);
    String str5 = String.valueOf(g);
    int n = j;
    String str6 = String.valueOf(h);
    String str7 = String.valueOf(i);
    return String.valueOf(str1).length() + 135 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + str1 + str2 + ", width=" + k + ", height=" + m + ", resourceClass=" + str3 + ", transcodeClass=" + str4 + ", signature=" + str5 + ", hashCode=" + n + ", transformations=" + str6 + ", options=" + str7 + "}";
  }
}

/* Location:
 * Qualified Name:     ali
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */