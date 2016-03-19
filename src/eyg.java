public abstract class eyg
{
  private String a;
  public String b;
  public String c;
  public boolean d;
  private final String e;
  private String f;
  private String g;
  
  public eyg(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, (byte)0);
  }
  
  private eyg(String paramString1, String paramString2, byte paramByte)
  {
    e = paramString1;
    if ((e == null) || (e.contains("focus"))) {
      a = paramString2;
    }
    d = false;
  }
  
  public abstract void a();
  
  public void a(String paramString)
  {
    f = paramString;
  }
  
  public void b(String paramString)
  {
    g = paramString;
  }
  
  public String n()
  {
    return e;
  }
  
  public String o()
  {
    return a;
  }
  
  public boolean p()
  {
    return d;
  }
  
  public String q()
  {
    return f;
  }
  
  public String r()
  {
    return g;
  }
  
  public String s()
  {
    if (c == null) {
      a();
    }
    return c;
  }
  
  public String t()
  {
    if (b == null) {
      a();
    }
    return b;
  }
  
  public String toString()
  {
    String str1 = e;
    String str2 = a;
    String str3 = b;
    String str4 = c;
    boolean bool = d;
    return String.valueOf(str1).length() + 41 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + "Base:" + str1 + " Account name=" + str2 + " Load:" + str3 + " key=" + str4 + " save:" + bool;
  }
}

/* Location:
 * Qualified Name:     eyg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */