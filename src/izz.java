public final class izz
  extends lyb<izz>
{
  public String a = null;
  public Boolean b = null;
  public int[] c = lyo.a;
  public Integer d = null;
  public Integer e = null;
  public Integer f = null;
  public Integer g = null;
  public String h = null;
  public Boolean i = null;
  public Boolean j = null;
  public Boolean k = null;
  
  public izz()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.booleanValue());
    }
    if ((c != null) && (c.length > 0))
    {
      int m = 0;
      while (m < c.length)
      {
        paramlxz.a(3, c[m]);
        m += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if (f != null) {
      paramlxz.a(6, f.intValue());
    }
    if (g != null) {
      paramlxz.a(7, g.intValue());
    }
    if (h != null) {
      paramlxz.a(8, h);
    }
    if (i != null) {
      paramlxz.a(9, i.booleanValue());
    }
    if (j != null) {
      paramlxz.a(10, j.booleanValue());
    }
    if (k != null) {
      paramlxz.a(11, k.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int m = super.b();
    int n = m;
    if (a != null) {
      n = m + lxz.b(1, a);
    }
    m = n;
    if (b != null)
    {
      b.booleanValue();
      m = n + (lxz.f(2) + 1);
    }
    n = m;
    if (c != null)
    {
      n = m;
      if (c.length > 0)
      {
        int i1 = 0;
        n = i2;
        while (n < c.length)
        {
          i1 += lxz.e(c[n]);
          n += 1;
        }
        n = m + i1 + c.length * 1;
      }
    }
    m = n;
    if (d != null) {
      m = n + lxz.e(4, d.intValue());
    }
    n = m;
    if (e != null) {
      n = m + lxz.e(5, e.intValue());
    }
    m = n;
    if (f != null) {
      m = n + lxz.e(6, f.intValue());
    }
    n = m;
    if (g != null) {
      n = m + lxz.e(7, g.intValue());
    }
    m = n;
    if (h != null) {
      m = n + lxz.b(8, h);
    }
    n = m;
    if (i != null)
    {
      i.booleanValue();
      n = m + (lxz.f(9) + 1);
    }
    m = n;
    if (j != null)
    {
      j.booleanValue();
      m = n + (lxz.f(10) + 1);
    }
    n = m;
    if (k != null)
    {
      k.booleanValue();
      n = m + (lxz.f(11) + 1);
    }
    return n;
  }
}

/* Location:
 * Qualified Name:     izz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */