public final class lzr
  extends lyb<lzr>
{
  private static volatile lzr[] h;
  public int a = Integer.MIN_VALUE;
  public Integer b = null;
  public lzq[] c = lzq.d();
  public Boolean d = null;
  public Integer e = null;
  public String f = null;
  public Boolean g = null;
  
  public lzr()
  {
    eD = null;
    eE = -1;
  }
  
  public static lzr[] d()
  {
    if (h == null) {}
    synchronized (lyf.a)
    {
      if (h == null) {
        h = new lzr[0];
      }
      return h;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        lzq locallzq = c[i];
        if (locallzq != null) {
          paramlxz.b(3, locallzq);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != Integer.MIN_VALUE) {
      j = i + lxz.e(1, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.e(2, b.intValue());
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
          lzq locallzq = c[j];
          int k = i;
          if (locallzq != null) {
            k = i + lxz.d(3, locallzq);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (d != null)
    {
      d.booleanValue();
      i = j + (lxz.f(4) + 1);
    }
    j = i;
    if (e != null) {
      j = i + lxz.e(5, e.intValue());
    }
    i = j;
    if (f != null) {
      i = j + lxz.b(6, f);
    }
    j = i;
    if (g != null)
    {
      g.booleanValue();
      j = i + (lxz.f(7) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lzr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */