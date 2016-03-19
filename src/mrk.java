public final class mrk
  extends lyb<mrk>
{
  private static volatile mrk[] k;
  public Float a = null;
  public Float b = null;
  public Float c = null;
  public Boolean d = null;
  public Float e = null;
  public Float f = null;
  public Float g = null;
  public Float h = null;
  public Float i = null;
  public Float j = null;
  
  public mrk()
  {
    eD = null;
    eE = -1;
  }
  
  public static mrk[] d()
  {
    if (k == null) {}
    synchronized (lyf.a)
    {
      if (k == null) {
        k = new mrk[0];
      }
      return k;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.floatValue());
    }
    if (b != null) {
      paramlxz.a(2, b.floatValue());
    }
    if (c != null) {
      paramlxz.a(3, c.floatValue());
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(5, e.floatValue());
    }
    if (f != null) {
      paramlxz.a(6, f.floatValue());
    }
    if (g != null) {
      paramlxz.a(7, g.floatValue());
    }
    if (h != null) {
      paramlxz.a(8, h.floatValue());
    }
    if (i != null) {
      paramlxz.a(9, i.floatValue());
    }
    if (j != null) {
      paramlxz.a(10, j.floatValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = super.b();
    int m = n;
    if (a != null)
    {
      a.floatValue();
      m = n + (lxz.f(1) + 4);
    }
    n = m;
    if (b != null)
    {
      b.floatValue();
      n = m + (lxz.f(2) + 4);
    }
    m = n;
    if (c != null)
    {
      c.floatValue();
      m = n + (lxz.f(3) + 4);
    }
    n = m;
    if (d != null)
    {
      d.booleanValue();
      n = m + (lxz.f(4) + 1);
    }
    m = n;
    if (e != null)
    {
      e.floatValue();
      m = n + (lxz.f(5) + 4);
    }
    n = m;
    if (f != null)
    {
      f.floatValue();
      n = m + (lxz.f(6) + 4);
    }
    m = n;
    if (g != null)
    {
      g.floatValue();
      m = n + (lxz.f(7) + 4);
    }
    n = m;
    if (h != null)
    {
      h.floatValue();
      n = m + (lxz.f(8) + 4);
    }
    m = n;
    if (i != null)
    {
      i.floatValue();
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
 * Qualified Name:     mrk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */