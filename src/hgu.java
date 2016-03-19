public final class hgu
{
  static final Object a = new Object();
  static boolean b;
  static hgu c;
  static hq<Integer, hgu> d = new hq();
  static hq<Integer, hgu> e = new hq();
  static hq<Integer, hgu> f = new hq();
  private final hlp g;
  private final int h;
  
  public hgu(hlp paramhlp, int paramInt)
  {
    g = paramhlp;
    h = paramInt;
  }
  
  public static hgu a(int paramInt)
  {
    a();
    return (hgu)d.get(Integer.valueOf(paramInt));
  }
  
  public static hgu a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    String[] arrayOfString = paramString.split("x");
    if (arrayOfString.length != 3)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {}
      for (paramString = "VideoSpecification can't parse ".concat(paramString);; paramString = new String("VideoSpecification can't parse "))
      {
        hlk.a(6, "vclib", paramString);
        return null;
      }
    }
    try
    {
      int i = Integer.parseInt(arrayOfString[0]);
      int j = Integer.parseInt(arrayOfString[1]);
      int k = Integer.parseInt(arrayOfString[2]);
      return new hgu(new hlp(i, j), k);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() == 0) {}
    }
    for (paramString = "VideoSpecification can't parse ".concat(paramString);; paramString = new String("VideoSpecification can't parse "))
    {
      hlk.a(6, "vclib", paramString);
      return null;
    }
  }
  
  static void a()
  {
    synchronized (a)
    {
      try
      {
        long l = System.currentTimeMillis();
        while (!b)
        {
          a.wait(10L);
          if (System.currentTimeMillis() >= l + 10000L) {
            throw new RuntimeException("Video specs wait timed out (at least 10000ms elapsed)");
          }
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        throw new RuntimeException(localInterruptedException);
      }
    }
  }
  
  public static hgu b(int paramInt)
  {
    a();
    return (hgu)f.get(Integer.valueOf(paramInt));
  }
  
  public hlp b()
  {
    return g;
  }
  
  public int c()
  {
    return g.a * g.b;
  }
  
  public int d()
  {
    return h;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    paramObject = (hgu)paramObject;
    boolean bool1 = bool2;
    if (paramObject != null)
    {
      bool1 = bool2;
      if (g == g)
      {
        bool1 = bool2;
        if (h == h) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return g.hashCode() * 277 + h;
  }
}

/* Location:
 * Qualified Name:     hgu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */