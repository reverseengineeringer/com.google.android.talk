public final class lfn
  extends lyb<lfn>
{
  private static volatile lfn[] p;
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  public Integer d = null;
  public Float e = null;
  public Float f = null;
  public Float g = null;
  public Float h = null;
  public Float i = null;
  public Float j = null;
  public Float k = null;
  public Integer l = null;
  public Float m = null;
  public Float n = null;
  public Float o = null;
  
  public lfn()
  {
    eD = null;
    eE = -1;
  }
  
  public static lfn[] d()
  {
    if (p == null) {}
    synchronized (lyf.a)
    {
      if (p == null) {
        p = new lfn[0];
      }
      return p;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
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
    if (k != null) {
      paramlxz.a(11, k.floatValue());
    }
    if (l != null) {
      paramlxz.a(12, l.intValue());
    }
    if (m != null) {
      paramlxz.a(13, m.floatValue());
    }
    if (n != null) {
      paramlxz.a(14, n.floatValue());
    }
    if (o != null) {
      paramlxz.a(15, o.floatValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.e(1, a.intValue());
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.e(2, b.intValue());
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.e(3, c.intValue());
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.e(4, d.intValue());
    }
    i1 = i2;
    if (e != null)
    {
      e.floatValue();
      i1 = i2 + (lxz.f(5) + 4);
    }
    i2 = i1;
    if (f != null)
    {
      f.floatValue();
      i2 = i1 + (lxz.f(6) + 4);
    }
    i1 = i2;
    if (g != null)
    {
      g.floatValue();
      i1 = i2 + (lxz.f(7) + 4);
    }
    i2 = i1;
    if (h != null)
    {
      h.floatValue();
      i2 = i1 + (lxz.f(8) + 4);
    }
    i1 = i2;
    if (i != null)
    {
      i.floatValue();
      i1 = i2 + (lxz.f(9) + 4);
    }
    i2 = i1;
    if (j != null)
    {
      j.floatValue();
      i2 = i1 + (lxz.f(10) + 4);
    }
    i1 = i2;
    if (k != null)
    {
      k.floatValue();
      i1 = i2 + (lxz.f(11) + 4);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.e(12, l.intValue());
    }
    i1 = i2;
    if (m != null)
    {
      m.floatValue();
      i1 = i2 + (lxz.f(13) + 4);
    }
    i2 = i1;
    if (n != null)
    {
      n.floatValue();
      i2 = i1 + (lxz.f(14) + 4);
    }
    i1 = i2;
    if (o != null)
    {
      o.floatValue();
      i1 = i2 + (lxz.f(15) + 4);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     lfn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */