public final class hkv
{
  private hkt a;
  private hkw b;
  private String c;
  private String d;
  private int e;
  private String f;
  private int g;
  
  public hkt a()
  {
    return a;
  }
  
  public hkv a(int paramInt)
  {
    e = paramInt;
    return this;
  }
  
  public hkv a(hkt paramhkt)
  {
    a = paramhkt;
    return this;
  }
  
  public hkv a(hkw paramhkw)
  {
    b = paramhkw;
    return this;
  }
  
  public hkv a(String paramString)
  {
    c = paramString;
    return this;
  }
  
  public hkv b(int paramInt)
  {
    g = paramInt;
    return this;
  }
  
  public hkv b(String paramString)
  {
    d = paramString;
    return this;
  }
  
  public hkw b()
  {
    return b;
  }
  
  public hkv c(String paramString)
  {
    f = paramString;
    return this;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    return d;
  }
  
  public int e()
  {
    return e;
  }
  
  public String f()
  {
    return f;
  }
  
  public int g()
  {
    return g;
  }
  
  public String toString()
  {
    String str1 = String.valueOf("CallStateInfo: \n localMediaSessionId: ");
    String str2 = c;
    String str3 = d;
    int i = e;
    String str4 = f;
    int j = g;
    String str5 = String.valueOf(a);
    if (String.valueOf(str1).length() + 106 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + str1 + str2 + "\n remoteMediaSessionId: " + str3 + "\n mediaSessionType: " + i + "\n participantLogId: " + str4 + "\n mediaNetworkType: " + j + str5 == null) {
      return "";
    }
    str1 = String.valueOf(a);
    str2 = String.valueOf(b);
    if (String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + "\n" + str1 + str2 == null) {
      return "";
    }
    str1 = String.valueOf(b);
    return String.valueOf(str1).length() + 1 + "\n" + str1;
  }
}

/* Location:
 * Qualified Name:     hkv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */