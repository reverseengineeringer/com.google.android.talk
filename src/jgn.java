public final class jgn
  extends lyb<jgn>
{
  private static volatile jgn[] d;
  public Double a = null;
  public String b = null;
  public jgp[] c = jgp.d();
  
  public jgn()
  {
    eD = null;
    eE = -1;
  }
  
  public static jgn[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new jgn[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.doubleValue());
    if (b != null) {
      paramlxz.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        jgp localjgp = c[i];
        if (localjgp != null) {
          paramlxz.b(3, localjgp);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    a.doubleValue();
    int j = i + (lxz.f(1) + 8);
    i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        j = 0;
        while (j < c.length)
        {
          jgp localjgp = c[j];
          int k = i;
          if (localjgp != null) {
            k = i + lxz.d(3, localjgp);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jgn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */