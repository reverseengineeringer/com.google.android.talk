public final class jwc
  extends lyb<jwc>
{
  private static volatile jwc[] l;
  public int a = Integer.MIN_VALUE;
  public Long b = null;
  public Long c = null;
  public Integer d = null;
  public Integer e = null;
  public Integer f = null;
  public Boolean g = null;
  public Boolean h = null;
  public Boolean i = null;
  public Boolean j = null;
  public Integer k = null;
  
  public jwc()
  {
    eD = null;
    eE = -1;
  }
  
  public static jwc[] d()
  {
    if (l == null) {}
    synchronized (lyf.a)
    {
      if (l == null) {
        l = new jwc[0];
      }
      return l;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    if (b != null) {
      paramlxz.b(2, b.longValue());
    }
    if (e != null) {
      paramlxz.a(4, e.intValue());
    }
    if (f != null) {
      paramlxz.a(5, f.intValue());
    }
    if (g != null) {
      paramlxz.a(6, g.booleanValue());
    }
    if (h != null) {
      paramlxz.a(7, h.booleanValue());
    }
    if (i != null) {
      paramlxz.a(8, i.booleanValue());
    }
    if (k != null) {
      paramlxz.a(11, k.intValue());
    }
    if (d != null) {
      paramlxz.a(12, d.intValue());
    }
    if (j != null) {
      paramlxz.a(13, j.booleanValue());
    }
    if (c != null) {
      paramlxz.b(14, c.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = super.b() + lxz.e(1, a);
    int m = n;
    if (b != null) {
      m = n + lxz.e(2, b.longValue());
    }
    n = m;
    if (e != null) {
      n = m + lxz.e(4, e.intValue());
    }
    m = n;
    if (f != null) {
      m = n + lxz.e(5, f.intValue());
    }
    n = m;
    if (g != null)
    {
      g.booleanValue();
      n = m + (lxz.f(6) + 1);
    }
    m = n;
    if (h != null)
    {
      h.booleanValue();
      m = n + (lxz.f(7) + 1);
    }
    n = m;
    if (i != null)
    {
      i.booleanValue();
      n = m + (lxz.f(8) + 1);
    }
    m = n;
    if (k != null) {
      m = n + lxz.e(11, k.intValue());
    }
    n = m;
    if (d != null) {
      n = m + lxz.e(12, d.intValue());
    }
    m = n;
    if (j != null)
    {
      j.booleanValue();
      m = n + (lxz.f(13) + 1);
    }
    n = m;
    if (c != null) {
      n = m + lxz.e(14, c.longValue());
    }
    return n;
  }
}

/* Location:
 * Qualified Name:     jwc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */