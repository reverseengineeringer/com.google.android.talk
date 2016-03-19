public final class jdx
  extends lyb<jdx>
{
  public String a = null;
  public String b = null;
  public Integer c = null;
  public Float d = null;
  public Float e = null;
  public Float f = null;
  public Long g = null;
  public Float h = null;
  public Boolean i = null;
  public Float j = null;
  public String k = null;
  public Long l = null;
  public Integer m = null;
  public Integer n = null;
  public Integer o = null;
  public String p = null;
  public String q = null;
  public String r = null;
  public String s = null;
  
  public jdx()
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
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d.floatValue());
    }
    if (e != null) {
      paramlxz.a(5, e.floatValue());
    }
    if (f != null) {
      paramlxz.a(6, f.floatValue());
    }
    if (g != null) {
      paramlxz.b(7, g.longValue());
    }
    if (h != null) {
      paramlxz.a(8, h.floatValue());
    }
    if (i != null) {
      paramlxz.a(9, i.booleanValue());
    }
    if (j != null) {
      paramlxz.a(10, j.floatValue());
    }
    if (k != null) {
      paramlxz.a(11, k);
    }
    if (l != null) {
      paramlxz.b(12, l.longValue());
    }
    if (m != null) {
      paramlxz.a(13, m.intValue());
    }
    if (n != null) {
      paramlxz.a(14, n.intValue());
    }
    if (o != null) {
      paramlxz.a(15, o.intValue());
    }
    if (p != null) {
      paramlxz.a(16, p);
    }
    if (q != null) {
      paramlxz.a(17, q);
    }
    if (r != null) {
      paramlxz.a(18, r);
    }
    if (s != null) {
      paramlxz.a(19, s);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.b(1, a);
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.b(2, b);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.e(3, c.intValue());
    }
    i2 = i1;
    if (d != null)
    {
      d.floatValue();
      i2 = i1 + (lxz.f(4) + 4);
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
    if (g != null) {
      i1 = i2 + lxz.e(7, g.longValue());
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
      i.booleanValue();
      i1 = i2 + (lxz.f(9) + 1);
    }
    i2 = i1;
    if (j != null)
    {
      j.floatValue();
      i2 = i1 + (lxz.f(10) + 4);
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.b(11, k);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.e(12, l.longValue());
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.e(13, m.intValue());
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
      i2 = i1 + lxz.b(16, p);
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + lxz.b(17, q);
    }
    i2 = i1;
    if (r != null) {
      i2 = i1 + lxz.b(18, r);
    }
    i1 = i2;
    if (s != null) {
      i1 = i2 + lxz.b(19, s);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     jdx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */