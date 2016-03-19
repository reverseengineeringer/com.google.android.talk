public final class jvv
  extends lyb<jvv>
{
  private static volatile jvv[] l;
  public String a = null;
  public int[] b = lyo.a;
  public String c = null;
  public String d = null;
  public Boolean e = null;
  public Boolean f = null;
  public Boolean g = null;
  public Integer h = null;
  public Boolean i = null;
  public Boolean j = null;
  public Boolean k = null;
  
  public jvv()
  {
    eD = null;
    eE = -1;
  }
  
  public static jvv[] d()
  {
    if (l == null) {}
    synchronized (lyf.a)
    {
      if (l == null) {
        l = new jvv[0];
      }
      return l;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (d != null) {
      paramlxz.a(2, d);
    }
    if (e != null) {
      paramlxz.a(3, e.booleanValue());
    }
    if (f != null) {
      paramlxz.a(4, f.booleanValue());
    }
    if (g != null) {
      paramlxz.a(5, g.booleanValue());
    }
    if (h != null) {
      paramlxz.a(6, h.intValue());
    }
    if (i != null) {
      paramlxz.a(7, i.booleanValue());
    }
    if ((b != null) && (b.length > 0))
    {
      int m = 0;
      while (m < b.length)
      {
        paramlxz.a(8, b[m]);
        m += 1;
      }
    }
    if (j != null) {
      paramlxz.a(9, j.booleanValue());
    }
    if (c != null) {
      paramlxz.a(10, c);
    }
    if (k != null) {
      paramlxz.a(11, k.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int n = super.b();
    int m = n;
    if (a != null) {
      m = n + lxz.b(1, a);
    }
    n = m;
    if (d != null) {
      n = m + lxz.b(2, d);
    }
    m = n;
    if (e != null)
    {
      e.booleanValue();
      m = n + (lxz.f(3) + 1);
    }
    n = m;
    if (f != null)
    {
      f.booleanValue();
      n = m + (lxz.f(4) + 1);
    }
    m = n;
    if (g != null)
    {
      g.booleanValue();
      m = n + (lxz.f(5) + 1);
    }
    n = m;
    if (h != null) {
      n = m + lxz.e(6, h.intValue());
    }
    m = n;
    if (i != null)
    {
      i.booleanValue();
      m = n + (lxz.f(7) + 1);
    }
    n = m;
    if (b != null)
    {
      n = m;
      if (b.length > 0)
      {
        int i1 = 0;
        n = i2;
        while (n < b.length)
        {
          i1 += lxz.e(b[n]);
          n += 1;
        }
        n = m + i1 + b.length * 1;
      }
    }
    m = n;
    if (j != null)
    {
      j.booleanValue();
      m = n + (lxz.f(9) + 1);
    }
    n = m;
    if (c != null) {
      n = m + lxz.b(10, c);
    }
    m = n;
    if (k != null)
    {
      k.booleanValue();
      m = n + (lxz.f(11) + 1);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     jvv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */