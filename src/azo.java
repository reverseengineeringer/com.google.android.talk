public final class azo
{
  public static boolean b;
  public final int a;
  public final baw c;
  public final String d;
  public long e;
  
  public azo(long paramLong, jxg paramjxg)
  {
    b = aal.a(d, false);
    d = a.a;
    if (b == null)
    {
      a = 0;
      if (c == null) {
        break label134;
      }
    }
    label134:
    for (paramjxg = new baw(this, paramLong, d, c);; paramjxg = null)
    {
      c = paramjxg;
      return;
      Integer localInteger;
      switch (aal.a(b, 0))
      {
      default: 
        localInteger = null;
      }
      for (;;)
      {
        a = aal.a(localInteger, 0);
        break;
        localInteger = Integer.valueOf(1);
        continue;
        localInteger = Integer.valueOf(2);
      }
    }
  }
  
  private boolean e()
  {
    return (c != null) && (c.b != null) && (c.a > 0L) && (a == 0);
  }
  
  private long f()
  {
    if (e()) {
      return c.a;
    }
    throw new IllegalStateException("Tokens expired or invalid have no expiration time");
  }
  
  public void a(long paramLong)
  {
    e = paramLong;
  }
  
  public boolean a()
  {
    return (e()) && (f() - azu.a > System.currentTimeMillis());
  }
  
  @Deprecated
  public long b()
  {
    return e;
  }
  
  public String c()
  {
    return d;
  }
  
  public byte[] d()
  {
    if (e()) {
      return c.b;
    }
    throw new IllegalStateException("Tokens expired or invalid have no signature data");
  }
}

/* Location:
 * Qualified Name:     azo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */