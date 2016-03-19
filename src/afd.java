import android.text.TextUtils;

public final class afd
  implements aez
{
  String a;
  String b;
  String c;
  String d;
  String e;
  String f;
  String g;
  String h;
  String i;
  String j;
  public String k;
  
  public final afb a()
  {
    return afb.a;
  }
  
  public boolean b()
  {
    return (TextUtils.isEmpty(a)) && (TextUtils.isEmpty(b)) && (TextUtils.isEmpty(c)) && (TextUtils.isEmpty(d)) && (TextUtils.isEmpty(e));
  }
  
  public boolean c()
  {
    return (TextUtils.isEmpty(g)) && (TextUtils.isEmpty(h)) && (TextUtils.isEmpty(i));
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof afd)) {
        return false;
      }
      paramObject = (afd)paramObject;
    } while ((TextUtils.equals(a, a)) && (TextUtils.equals(c, c)) && (TextUtils.equals(b, b)) && (TextUtils.equals(d, d)) && (TextUtils.equals(e, e)) && (TextUtils.equals(f, f)) && (TextUtils.equals(g, g)) && (TextUtils.equals(i, i)) && (TextUtils.equals(h, h)) && (TextUtils.equals(j, j)));
    return false;
  }
  
  public int hashCode()
  {
    String str1 = a;
    String str2 = c;
    String str3 = b;
    String str4 = d;
    String str5 = e;
    String str6 = f;
    String str7 = g;
    String str8 = i;
    String str9 = h;
    String str10 = j;
    int n = 0;
    int m = 0;
    if (n < 10)
    {
      String str11 = new String[] { str1, str2, str3, str4, str5, str6, str7, str8, str9, str10 }[n];
      if (str11 != null) {}
      for (int i1 = str11.hashCode();; i1 = 0)
      {
        n += 1;
        m = m * 31 + i1;
        break;
      }
    }
    return m;
  }
  
  public String toString()
  {
    return String.format("family: %s, given: %s, middle: %s, prefix: %s, suffix: %s", new Object[] { a, b, c, d, e });
  }
}

/* Location:
 * Qualified Name:     afd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */