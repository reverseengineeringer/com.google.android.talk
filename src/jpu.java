public final class jpu
  extends lyb<jpu>
{
  public Integer a = null;
  public Integer b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public Double g = null;
  public String h = null;
  public Integer i = null;
  public Integer j = null;
  public Boolean k = null;
  public Boolean l = null;
  public String m = null;
  public Integer n = null;
  public Boolean o = null;
  public Boolean p = null;
  public String q = null;
  
  public jpu()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (c != null) {
      paramlxz.a(1, c);
    }
    if (d != null) {
      paramlxz.a(2, d);
    }
    if (e != null) {
      paramlxz.a(3, e);
    }
    if (f != null) {
      paramlxz.a(4, f);
    }
    if (g != null) {
      paramlxz.a(5, g.doubleValue());
    }
    if (h != null) {
      paramlxz.a(6, h);
    }
    if (i != null) {
      paramlxz.a(7, i.intValue());
    }
    if (j != null) {
      paramlxz.a(8, j.intValue());
    }
    if (k != null) {
      paramlxz.a(9, k.booleanValue());
    }
    if (a != null) {
      paramlxz.a(10, a.intValue());
    }
    if (b != null) {
      paramlxz.a(11, b.intValue());
    }
    if (l != null) {
      paramlxz.a(12, l.booleanValue());
    }
    if (m != null) {
      paramlxz.a(13, m);
    }
    if (n != null) {
      paramlxz.a(14, n.intValue());
    }
    if (o != null) {
      paramlxz.a(15, o.booleanValue());
    }
    if (p != null) {
      paramlxz.a(16, p.booleanValue());
    }
    if (q != null) {
      paramlxz.a(17, q);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.b(1, c);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.b(2, d);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(3, e);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.b(4, f);
    }
    i1 = i2;
    if (g != null)
    {
      g.doubleValue();
      i1 = i2 + (lxz.f(5) + 8);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.b(6, h);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.e(7, i.intValue());
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.e(8, j.intValue());
    }
    i1 = i2;
    if (k != null)
    {
      k.booleanValue();
      i1 = i2 + (lxz.f(9) + 1);
    }
    i2 = i1;
    if (a != null) {
      i2 = i1 + lxz.e(10, a.intValue());
    }
    i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.e(11, b.intValue());
    }
    i2 = i1;
    if (l != null)
    {
      l.booleanValue();
      i2 = i1 + (lxz.f(12) + 1);
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.b(13, m);
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.e(14, n.intValue());
    }
    i1 = i2;
    if (o != null)
    {
      o.booleanValue();
      i1 = i2 + (lxz.f(15) + 1);
    }
    i2 = i1;
    if (p != null)
    {
      p.booleanValue();
      i2 = i1 + (lxz.f(16) + 1);
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + lxz.b(17, q);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     jpu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */