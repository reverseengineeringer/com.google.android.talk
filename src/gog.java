import android.text.TextUtils;

public final class gog
  implements gpy
{
  private final String b;
  private final String c;
  private String d;
  
  public gog(String paramString1, String paramString2)
  {
    b = paramString1;
    c = paramString2;
  }
  
  private String c()
  {
    if (d == null)
    {
      str = c;
      if (!TextUtils.isEmpty(str)) {
        break label32;
      }
    }
    label32:
    StringBuilder localStringBuilder;
    for (String str = "";; str = localStringBuilder.toString())
    {
      d = str;
      return d;
      localStringBuilder = gpd.a();
      int i = 0;
      while (i < str.length())
      {
        char c1 = str.charAt(i);
        if ((Character.digit(c1, 10) != -1) || (c1 == '+') || (c1 == ',') || (c1 == ';') || (('a' <= c1) && (c1 <= 'z')) || (('A' <= c1) && (c1 <= 'Z'))) {
          localStringBuilder.append(c1);
        }
        i += 1;
      }
    }
  }
  
  public String a()
  {
    return b;
  }
  
  public String b()
  {
    return c;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof gog))
    {
      paramObject = (gog)paramObject;
      return aal.a(c(), ((gog)paramObject).c());
    }
    return false;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PhoneNumber:[Value=");
    if (c != null)
    {
      str = c;
      localStringBuilder = localStringBuilder.append(str).append(" Type=");
      if (b == null) {
        break label65;
      }
    }
    label65:
    for (String str = b;; str = "null")
    {
      return str + "]";
      str = "null";
      break;
    }
  }
}

/* Location:
 * Qualified Name:     gog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */