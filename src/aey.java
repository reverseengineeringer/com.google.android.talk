import android.text.TextUtils;

public final class aey
  implements aez
{
  final String a;
  private final int b;
  private final String c;
  private final boolean d;
  
  public aey(String paramString1, int paramInt, String paramString2, boolean paramBoolean)
  {
    b = paramInt;
    a = paramString1;
    c = paramString2;
    d = paramBoolean;
  }
  
  public final afb a()
  {
    return afb.c;
  }
  
  public String b()
  {
    return a;
  }
  
  public int c()
  {
    return b;
  }
  
  public String d()
  {
    return c;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof aey)) {
        return false;
      }
      paramObject = (aey)paramObject;
    } while ((b == b) && (TextUtils.equals(a, a)) && (TextUtils.equals(c, c)) && (d == d));
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    int m = b;
    int i;
    if (a != null)
    {
      i = a.hashCode();
      if (c != null) {
        j = c.hashCode();
      }
      if (!d) {
        break label72;
      }
    }
    label72:
    for (int k = 1231;; k = 1237)
    {
      return k + ((i + m * 31) * 31 + j) * 31;
      i = 0;
      break;
    }
  }
  
  public String toString()
  {
    return String.format("type: %d, data: %s, label: %s, isPrimary: %s", new Object[] { Integer.valueOf(b), a, c, Boolean.valueOf(d) });
  }
}

/* Location:
 * Qualified Name:     aey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */