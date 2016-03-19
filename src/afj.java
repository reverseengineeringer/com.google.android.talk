import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

public final class afj
  implements aez
{
  private final String a;
  private final String b;
  private final String c;
  private final String d;
  private final String e;
  private final String f;
  private final String g;
  private final int h;
  private final String i;
  private boolean j;
  private int k;
  
  private afj(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, int paramInt1, String paramString8, boolean paramBoolean, int paramInt2)
  {
    h = paramInt1;
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramString5;
    f = paramString6;
    g = paramString7;
    i = paramString8;
    j = paramBoolean;
    k = paramInt2;
  }
  
  public static afj a(List<String> paramList, int paramInt1, String paramString, boolean paramBoolean, int paramInt2)
  {
    String[] arrayOfString = new String[7];
    int n = paramList.size();
    if (n > 7) {
      n = 7;
    }
    for (;;)
    {
      paramList = paramList.iterator();
      int m = 0;
      if (paramList.hasNext())
      {
        arrayOfString[m] = ((String)paramList.next());
        m += 1;
        if (m < n) {}
      }
      for (;;)
      {
        if (m < 7)
        {
          arrayOfString[m] = null;
          m += 1;
        }
        else
        {
          return new afj(arrayOfString[0], arrayOfString[1], arrayOfString[2], arrayOfString[3], arrayOfString[4], arrayOfString[5], arrayOfString[6], paramInt1, paramString, paramBoolean, paramInt2);
          break;
        }
      }
    }
  }
  
  public final afb a()
  {
    return afb.d;
  }
  
  public String a(int paramInt)
  {
    int m = 6;
    int n = 1;
    int i1 = 1;
    StringBuilder localStringBuilder = new StringBuilder();
    String[] arrayOfString = new String[7];
    arrayOfString[0] = a;
    arrayOfString[1] = b;
    arrayOfString[2] = c;
    arrayOfString[3] = d;
    arrayOfString[4] = e;
    arrayOfString[5] = f;
    arrayOfString[6] = g;
    String str;
    if (aet.e(paramInt))
    {
      paramInt = i1;
      if (m >= 0)
      {
        str = arrayOfString[m];
        n = paramInt;
        if (!TextUtils.isEmpty(str))
        {
          if (paramInt != 0) {
            break label142;
          }
          localStringBuilder.append(' ');
        }
        for (;;)
        {
          localStringBuilder.append(str);
          n = paramInt;
          m -= 1;
          paramInt = n;
          break;
          label142:
          paramInt = 0;
        }
      }
    }
    else
    {
      m = 0;
      paramInt = n;
      if (m < 7)
      {
        str = arrayOfString[m];
        n = paramInt;
        if (!TextUtils.isEmpty(str))
        {
          if (paramInt != 0) {
            break label204;
          }
          localStringBuilder.append(' ');
        }
        for (;;)
        {
          localStringBuilder.append(str);
          n = paramInt;
          m += 1;
          paramInt = n;
          break;
          label204:
          paramInt = 0;
        }
      }
    }
    return localStringBuilder.toString().trim();
  }
  
  public String b()
  {
    return a;
  }
  
  public String c()
  {
    return b;
  }
  
  public String d()
  {
    return c;
  }
  
  public String e()
  {
    return d;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof afj)) {
        return false;
      }
      paramObject = (afj)paramObject;
    } while ((h == h) && ((h != 0) || (TextUtils.equals(i, i))) && (j == j) && (TextUtils.equals(a, a)) && (TextUtils.equals(b, b)) && (TextUtils.equals(c, c)) && (TextUtils.equals(d, d)) && (TextUtils.equals(e, e)) && (TextUtils.equals(f, f)) && (TextUtils.equals(g, g)));
    return false;
  }
  
  public String f()
  {
    return e;
  }
  
  public String g()
  {
    return f;
  }
  
  public String h()
  {
    return g;
  }
  
  public int hashCode()
  {
    int i1 = h;
    int m;
    int n;
    label31:
    label87:
    String str8;
    if (i != null)
    {
      m = i.hashCode();
      if (!j) {
        break label168;
      }
      n = 1231;
      m = n + (m + i1 * 31) * 31;
      String str1 = a;
      String str2 = b;
      String str3 = c;
      String str4 = d;
      String str5 = e;
      String str6 = f;
      String str7 = g;
      n = 0;
      if (n >= 7) {
        return m;
      }
      str8 = new String[] { str1, str2, str3, str4, str5, str6, str7 }[n];
      if (str8 == null) {
        break label175;
      }
    }
    label168:
    label175:
    for (i1 = str8.hashCode();; i1 = 0)
    {
      n += 1;
      m = m * 31 + i1;
      break label87;
      m = 0;
      break;
      n = 1237;
      break label31;
    }
    return m;
  }
  
  public int i()
  {
    return h;
  }
  
  public String j()
  {
    return i;
  }
  
  public String toString()
  {
    return String.format("type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s", new Object[] { Integer.valueOf(h), i, Boolean.valueOf(j), a, b, c, d, e, f, g });
  }
}

/* Location:
 * Qualified Name:     afj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */