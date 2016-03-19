public final class mjb
  extends lyb<mjb>
{
  private static volatile mjb[] k;
  public String a = null;
  public String[] b = lyo.f;
  public mks c = null;
  public Integer d = null;
  public String e = null;
  public Double f = null;
  public Double g = null;
  public Integer h = null;
  public Integer i = null;
  public Float j = null;
  
  public mjb()
  {
    eD = null;
    eE = -1;
  }
  
  public static mjb[] d()
  {
    if (k == null) {}
    synchronized (lyf.a)
    {
      if (k == null) {
        k = new mjb[0];
      }
      return k;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (c != null) {
      paramlxz.b(2, c);
    }
    if (d != null) {
      paramlxz.a(3, d.intValue());
    }
    if (e != null) {
      paramlxz.a(4, e);
    }
    if (f != null) {
      paramlxz.a(5, f.doubleValue());
    }
    if ((b != null) && (b.length > 0))
    {
      int m = 0;
      while (m < b.length)
      {
        String str = b[m];
        if (str != null) {
          paramlxz.a(6, str);
        }
        m += 1;
      }
    }
    if (g != null) {
      paramlxz.a(7, g.doubleValue());
    }
    if (h != null) {
      paramlxz.b(8, h.intValue());
    }
    if (i != null) {
      paramlxz.b(9, i.intValue());
    }
    if (j != null) {
      paramlxz.a(10, j.floatValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i3 = 0;
    int n = super.b();
    int m = n;
    if (a != null) {
      m = n + lxz.b(1, a);
    }
    n = m;
    if (c != null) {
      n = m + lxz.d(2, c);
    }
    m = n;
    if (d != null) {
      m = n + lxz.e(3, d.intValue());
    }
    n = m;
    if (e != null) {
      n = m + lxz.b(4, e);
    }
    m = n;
    if (f != null)
    {
      f.doubleValue();
      m = n + (lxz.f(5) + 8);
    }
    n = m;
    if (b != null)
    {
      n = m;
      if (b.length > 0)
      {
        int i1 = 0;
        int i2 = 0;
        n = i3;
        while (n < b.length)
        {
          String str = b[n];
          int i4 = i1;
          i3 = i2;
          if (str != null)
          {
            i3 = i2 + 1;
            i4 = i1 + lxz.a(str);
          }
          n += 1;
          i1 = i4;
          i2 = i3;
        }
        n = m + i1 + i2 * 1;
      }
    }
    m = n;
    if (g != null)
    {
      g.doubleValue();
      m = n + (lxz.f(7) + 8);
    }
    n = m;
    if (h != null)
    {
      h.intValue();
      n = m + (lxz.f(8) + 4);
    }
    m = n;
    if (i != null)
    {
      i.intValue();
      m = n + (lxz.f(9) + 4);
    }
    n = m;
    if (j != null)
    {
      j.floatValue();
      n = m + (lxz.f(10) + 4);
    }
    return n;
  }
}

/* Location:
 * Qualified Name:     mjb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */