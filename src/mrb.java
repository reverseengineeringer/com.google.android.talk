public final class mrb
  extends lyb<mrb>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public Long d = null;
  public abj e = null;
  public String f = null;
  public String g = null;
  public String h = null;
  public String i = null;
  public Integer j = null;
  public Boolean k = null;
  public String l = null;
  public String m = null;
  public mdz n = null;
  public String o = null;
  public mrf p = null;
  public mrc q = null;
  public mrd r = null;
  public meb s = null;
  
  public mrb()
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
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d.longValue());
    }
    if (e != null) {
      paramlxz.b(5, e);
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
      paramlxz.a(10, j.intValue());
    }
    if (k != null) {
      paramlxz.a(11, k.booleanValue());
    }
    if (l != null) {
      paramlxz.a(12, l);
    }
    if (m != null) {
      paramlxz.a(13, m);
    }
    if (n != null) {
      paramlxz.b(14, n);
    }
    if (o != null) {
      paramlxz.a(15, o);
    }
    if (p != null) {
      paramlxz.b(16, p);
    }
    if (q != null) {
      paramlxz.b(17, q);
    }
    if (r != null) {
      paramlxz.b(18, r);
    }
    if (s != null) {
      paramlxz.b(20, s);
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
      i1 = i2 + lxz.b(3, c);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.d(4, d.longValue());
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.d(5, e);
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
      i2 = i1 + lxz.e(10, j.intValue());
    }
    i1 = i2;
    if (k != null)
    {
      k.booleanValue();
      i1 = i2 + (lxz.f(11) + 1);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.b(12, l);
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.b(13, m);
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.d(14, n);
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.b(15, o);
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.d(16, p);
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + lxz.d(17, q);
    }
    i2 = i1;
    if (r != null) {
      i2 = i1 + lxz.d(18, r);
    }
    i1 = i2;
    if (s != null) {
      i1 = i2 + lxz.d(20, s);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     mrb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */