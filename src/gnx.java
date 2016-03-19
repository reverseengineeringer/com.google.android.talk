public final class gnx
  implements gps
{
  private final String b;
  private final String c;
  private final double d;
  private final double e;
  private final double f;
  private final double g;
  private final double h;
  private final String i;
  private final String j;
  private final String k;
  private final String l;
  private final String m;
  
  public gnx(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, 0.0D, 0.0D, 0.0D, 0.0D, 0.0D, null, null, null, null, null);
  }
  
  public gnx(String paramString1, String paramString2, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    b = paramString1;
    c = paramString2;
    d = paramDouble1;
    e = paramDouble2;
    f = paramDouble3;
    g = paramDouble4;
    h = paramDouble5;
    i = paramString3;
    j = paramString4;
    k = paramString5;
    l = paramString6;
    m = paramString7;
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
    if ((paramObject instanceof gnx))
    {
      paramObject = (gnx)paramObject;
      return aal.a(c, c);
    }
    return false;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("EmailAddress:[Value=");
    if (c != null)
    {
      str = c;
      localStringBuilder = localStringBuilder.append(str).append(" Type=");
      if (b == null) {
        break label185;
      }
    }
    label185:
    for (String str = b;; str = "null")
    {
      return str + " a1=" + d + "," + i + " a2=" + e + "," + j + " a3=" + f + "," + k + " a4=" + g + "," + l + " a5=" + h + "," + m + "]";
      str = "null";
      break;
    }
  }
}

/* Location:
 * Qualified Name:     gnx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */