public final class mmg
  extends lyb<mmg>
{
  public String a = null;
  public Integer b = null;
  public Integer c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public String h = null;
  public String i = null;
  public String j = null;
  public Boolean k = null;
  public Integer l = null;
  public mmh m = null;
  public String n = null;
  
  public mmg()
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
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h);
    }
    if (i != null) {
      paramlxz.a(9, i);
    }
    if (j != null) {
      paramlxz.a(10, j);
    }
    if (k != null) {
      paramlxz.a(11, k.booleanValue());
    }
    if (l != null) {
      paramlxz.a(12, l.intValue());
    }
    if (m != null) {
      paramlxz.b(13, m);
    }
    if (n != null) {
      paramlxz.a(14, n);
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
      i2 = i1 + lxz.e(2, b.intValue());
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.e(3, c.intValue());
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.b(4, d);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(5, e);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.b(6, f);
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.b(7, g);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.b(8, h);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.b(9, i);
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.b(10, j);
    }
    i1 = i2;
    if (k != null)
    {
      k.booleanValue();
      i1 = i2 + (lxz.f(11) + 1);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.e(12, l.intValue());
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.d(13, m);
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.b(14, n);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     mmg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */