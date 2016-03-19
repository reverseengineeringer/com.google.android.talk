import android.text.TextUtils;

public final class afg
  implements aez
{
  String a;
  String b;
  String c;
  boolean d;
  private final String e;
  private final int f;
  
  public afg(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, boolean paramBoolean)
  {
    f = paramInt;
    a = paramString1;
    b = paramString2;
    c = paramString3;
    e = paramString4;
    d = paramBoolean;
  }
  
  public final afb a()
  {
    return afb.e;
  }
  
  public String b()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!TextUtils.isEmpty(a)) {
      localStringBuilder.append(a);
    }
    if (!TextUtils.isEmpty(b))
    {
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(b);
    }
    if (!TextUtils.isEmpty(c))
    {
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(c);
    }
    return localStringBuilder.toString();
  }
  
  public String c()
  {
    return a;
  }
  
  public String d()
  {
    return c;
  }
  
  public int e()
  {
    return f;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof afg)) {
        return false;
      }
      paramObject = (afg)paramObject;
    } while ((f == f) && (TextUtils.equals(a, a)) && (TextUtils.equals(b, b)) && (TextUtils.equals(c, c)) && (d == d));
    return false;
  }
  
  public int hashCode()
  {
    int k = 0;
    int n = f;
    int i;
    int j;
    if (a != null)
    {
      i = a.hashCode();
      if (b == null) {
        break label94;
      }
      j = b.hashCode();
      label38:
      if (c != null) {
        k = c.hashCode();
      }
      if (!d) {
        break label99;
      }
    }
    label94:
    label99:
    for (int m = 1231;; m = 1237)
    {
      return m + ((j + (i + n * 31) * 31) * 31 + k) * 31;
      i = 0;
      break;
      j = 0;
      break label38;
    }
  }
  
  public String toString()
  {
    return String.format("type: %d, organization: %s, department: %s, title: %s, isPrimary: %s", new Object[] { Integer.valueOf(f), a, b, c, Boolean.valueOf(d) });
  }
}

/* Location:
 * Qualified Name:     afg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */