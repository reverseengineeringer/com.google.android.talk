public final class kkx
  extends lyb<kkx>
{
  public Boolean a = null;
  public Boolean b = null;
  public Boolean c = null;
  public Integer d = null;
  public Long e = null;
  public String f = null;
  public Boolean g = null;
  public Long h = null;
  public Long i = null;
  public Long j = null;
  public Integer k = null;
  public Integer l = null;
  public Boolean m = null;
  
  public kkx()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.booleanValue());
    }
    if (b != null) {
      paramlxz.a(2, b.booleanValue());
    }
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.b(5, e.longValue());
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g.booleanValue());
    }
    if (h != null) {
      paramlxz.b(8, h.longValue());
    }
    if (i != null) {
      paramlxz.b(9, i.longValue());
    }
    if (j != null) {
      paramlxz.b(10, j.longValue());
    }
    if (k != null) {
      paramlxz.a(11, k.intValue());
    }
    if (l != null) {
      paramlxz.a(12, l.intValue());
    }
    if (m != null) {
      paramlxz.a(13, m.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i1 = super.b();
    int n = i1;
    if (a != null)
    {
      a.booleanValue();
      n = i1 + (lxz.f(1) + 1);
    }
    i1 = n;
    if (b != null)
    {
      b.booleanValue();
      i1 = n + (lxz.f(2) + 1);
    }
    n = i1;
    if (c != null)
    {
      c.booleanValue();
      n = i1 + (lxz.f(3) + 1);
    }
    i1 = n;
    if (d != null) {
      i1 = n + lxz.e(4, d.intValue());
    }
    n = i1;
    if (e != null) {
      n = i1 + lxz.e(5, e.longValue());
    }
    i1 = n;
    if (f != null) {
      i1 = n + lxz.b(6, f);
    }
    n = i1;
    if (g != null)
    {
      g.booleanValue();
      n = i1 + (lxz.f(7) + 1);
    }
    i1 = n;
    if (h != null) {
      i1 = n + lxz.e(8, h.longValue());
    }
    n = i1;
    if (i != null) {
      n = i1 + lxz.e(9, i.longValue());
    }
    i1 = n;
    if (j != null) {
      i1 = n + lxz.e(10, j.longValue());
    }
    n = i1;
    if (k != null) {
      n = i1 + lxz.e(11, k.intValue());
    }
    i1 = n;
    if (l != null) {
      i1 = n + lxz.e(12, l.intValue());
    }
    n = i1;
    if (m != null)
    {
      m.booleanValue();
      n = i1 + (lxz.f(13) + 1);
    }
    return n;
  }
}

/* Location:
 * Qualified Name:     kkx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */