public final class jww
  extends lyb<jww>
{
  private static volatile jww[] q;
  public Integer a = null;
  public Long b = null;
  public String c = null;
  public Boolean d = null;
  public Boolean e = null;
  public Boolean f = null;
  public Boolean g = null;
  public Boolean h = null;
  public Integer i = null;
  public Integer j = null;
  public Long k = null;
  public String l = null;
  public Long m = null;
  public Integer n = null;
  public Integer o = null;
  public Integer p = null;
  
  public jww()
  {
    eD = null;
    eE = -1;
  }
  
  public static jww[] d()
  {
    if (q == null) {}
    synchronized (lyf.a)
    {
      if (q == null) {
        q = new jww[0];
      }
      return q;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.b(2, b.longValue());
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
    }
    if (f != null) {
      paramlxz.a(6, f.booleanValue());
    }
    if (g != null) {
      paramlxz.a(7, g.booleanValue());
    }
    if (h != null) {
      paramlxz.a(8, h.booleanValue());
    }
    if (i != null) {
      paramlxz.a(9, i.intValue());
    }
    if (j != null) {
      paramlxz.a(10, j.intValue());
    }
    if (k != null) {
      paramlxz.a(11, k.longValue());
    }
    if (l != null) {
      paramlxz.a(12, l);
    }
    if (m != null) {
      paramlxz.a(13, m.longValue());
    }
    if (n != null) {
      paramlxz.a(14, n.intValue());
    }
    if (o != null) {
      paramlxz.a(15, o.intValue());
    }
    if (p != null) {
      paramlxz.a(16, p.intValue());
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
      i2 = i1 + lxz.e(2, b.longValue());
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.b(3, c);
    }
    i2 = i1;
    if (d != null)
    {
      d.booleanValue();
      i2 = i1 + (lxz.f(4) + 1);
    }
    i1 = i2;
    if (e != null)
    {
      e.booleanValue();
      i1 = i2 + (lxz.f(5) + 1);
    }
    i2 = i1;
    if (f != null)
    {
      f.booleanValue();
      i2 = i1 + (lxz.f(6) + 1);
    }
    i1 = i2;
    if (g != null)
    {
      g.booleanValue();
      i1 = i2 + (lxz.f(7) + 1);
    }
    i2 = i1;
    if (h != null)
    {
      h.booleanValue();
      i2 = i1 + (lxz.f(8) + 1);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.e(9, i.intValue());
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.e(10, j.intValue());
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.d(11, k.longValue());
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.b(12, l);
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.d(13, m.longValue());
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.e(14, n.intValue());
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.e(15, o.intValue());
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.e(16, p.intValue());
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     jww
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */