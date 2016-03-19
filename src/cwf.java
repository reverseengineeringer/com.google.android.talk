import java.util.Locale;

public final class cwf
{
  private static final boolean b = false;
  public cwk a;
  private final cwi c;
  private byte[] d;
  private int e;
  private cwl f;
  private String g;
  
  static
  {
    imx localimx = ezi.j;
  }
  
  public cwf(long paramLong1, String paramString, int paramInt1, int paramInt2, int paramInt3, long paramLong2, cwi paramcwi)
  {
    a = new cwk(paramLong1, paramString, paramInt1, paramInt2, paramInt3, paramLong2);
    c = paramcwi;
  }
  
  public cwf(String paramString, int paramInt, cwi paramcwi)
  {
    this(0L, paramString, paramInt, 0, 0, System.currentTimeMillis(), paramcwi);
  }
  
  public int a(cwe paramcwe, cwl paramcwl)
  {
    if (dvd.e(a.c) == null)
    {
      int i = a.c;
      paramcwe = String.valueOf(toString());
      ezi.c("Babel_NetworkQueue", String.valueOf(paramcwe).length() + 95 + "Account does not exist on device, removing request from the queue for id " + i + ", request: " + paramcwe, new Object[0]);
      paramcwl.a(dvn.a);
      return cwj.d;
    }
    if (e())
    {
      paramcwl.a(dvn.a);
      return cwj.d;
    }
    if ((a().F_()) && (!paramcwe.b()))
    {
      paramcwl.a(new dvn(101));
      return cwj.c;
    }
    if (paramcwe.g())
    {
      paramcwl.a(new dvn(102, null, 0L, true, null));
      return cwj.c;
    }
    return cwj.a;
  }
  
  public cwi a()
  {
    return c;
  }
  
  lbb<cwf> a(cwe paramcwe, cwl paramcwl, lbd paramlbd)
  {
    return lau.a(paramlbd.a(new cwg(this, paramcwe, paramcwl)), Throwable.class, new cwh(this), paramlbd);
  }
  
  public void a(dvn paramdvn)
  {
    a().b(a.c, paramdvn);
  }
  
  public void a(String paramString)
  {
    try
    {
      g = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public boolean a(cwl paramcwl)
  {
    Object localObject = a;
    d += 1;
    switch (paramcwl.a())
    {
    }
    for (int i = 0;; i = 1)
    {
      if (i != 0)
      {
        localObject = a;
        e += 1;
      }
      if (a.d % 10 == 0)
      {
        i = a.d;
        int j = paramcwl.a();
        localObject = String.valueOf(c);
        long l = a.g;
        ezi.e("Babel_NetworkQueue", String.valueOf(localObject).length() + 83 + "Retried: " + i + " errorCode: " + j + " Request: " + (String)localObject + " created: " + l, new Object[0]);
      }
      return c.a(a, paramcwl.c());
    }
  }
  
  public boolean a(Class paramClass, String paramString)
  {
    return (paramClass.isInstance(c)) && (c.a(paramString));
  }
  
  public int b()
  {
    return e;
  }
  
  public int b(cwe paramcwe, cwl paramcwl)
  {
    if (b)
    {
      long l = a.a;
      new StringBuilder(31).append("Processing ").append(l);
    }
    cwi localcwi = a();
    try
    {
      localcwi.a(paramcwe.f(), a, paramcwe.c());
      i = cwj.b;
      return i;
    }
    catch (dvn paramcwe)
    {
      int i;
      paramcwl.a(paramcwe);
      paramcwl.a(paramcwe.a());
      paramcwl.a(paramcwe.c());
      switch (paramcwl.a())
      {
      case 109: 
      case 110: 
      case 111: 
      case 112: 
      case 113: 
      case 114: 
      case 115: 
      case 117: 
      case 119: 
      case 120: 
      case 121: 
      default: 
        i = 0;
      }
      while (i != 0)
      {
        return cwj.c;
        i = 0;
        continue;
        i = 1;
      }
    }
    return cwj.d;
  }
  
  cwf c(cwe paramcwe, cwl paramcwl)
  {
    try
    {
      e = a(paramcwe, paramcwl);
      if (e == cwj.a) {
        e = b(paramcwe, paramcwl);
      }
      f = paramcwl;
      return this;
    }
    finally {}
  }
  
  public cwl c()
  {
    return f;
  }
  
  public String d()
  {
    try
    {
      String str = g;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean e()
  {
    long l = c.b();
    if (l == Long.MAX_VALUE) {}
    while ((l <= 0L) || (System.currentTimeMillis() <= l + a.g)) {
      return false;
    }
    return true;
  }
  
  public long f()
  {
    long l = c.b();
    if (l == Long.MAX_VALUE) {}
    do
    {
      return Long.MAX_VALUE;
      if (l == 0L) {
        return 0L;
      }
    } while (l <= 0L);
    return a.g + l - System.currentTimeMillis();
  }
  
  public long g()
  {
    return a.f;
  }
  
  public byte[] h()
  {
    if (d == null) {
      d = efc.a(c);
    }
    return d;
  }
  
  public String toString()
  {
    Locale localLocale = Locale.US;
    long l1 = a.a;
    int i = a.d;
    long l2 = a.g;
    if (c == null) {}
    for (String str = "null";; str = c.toString()) {
      return String.format(localLocale, "REQUEST[id:%d; fc:%d; create:%d; type:%s]", new Object[] { Long.valueOf(l1), Integer.valueOf(i), Long.valueOf(l2), str });
    }
  }
}

/* Location:
 * Qualified Name:     cwf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */