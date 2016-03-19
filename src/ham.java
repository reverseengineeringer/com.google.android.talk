public final class ham
{
  private static final hav a = new hav();
  private final String b;
  private final hav c;
  private final int d;
  
  public ham(String paramString)
  {
    this(paramString, a);
  }
  
  private ham(String paramString, hav paramhav)
  {
    this(paramString, paramhav, -1);
  }
  
  public ham(String paramString, hav paramhav, int paramInt)
  {
    b = paramString;
    c = paramhav;
    d = paramInt;
    if (!idd.a(paramString))
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {}
      for (paramString = "baseUrl is not a fife Url: ".concat(paramString);; paramString = new String("baseUrl is not a fife Url: ")) {
        throw new IllegalArgumentException(paramString);
      }
    }
  }
  
  public hav a()
  {
    return c;
  }
  
  public String b()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof ham))
    {
      paramObject = (ham)paramObject;
      bool1 = bool2;
      if (c.equals(c))
      {
        bool1 = bool2;
        if (b.equals(b)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return c.hashCode() * 31 + b.hashCode();
  }
  
  public String toString()
  {
    String str1 = String.valueOf("FifeModel{baseUrl='");
    String str2 = b;
    String str3 = String.valueOf(c);
    return String.valueOf(str1).length() + 19 + String.valueOf(str2).length() + String.valueOf(str3).length() + str1 + str2 + "', fifeUrlOptions=" + str3 + "}";
  }
}

/* Location:
 * Qualified Name:     ham
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */