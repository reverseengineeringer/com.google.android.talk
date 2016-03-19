public final class mga
  extends lyb<mga>
{
  public String a = null;
  public int b = Integer.MIN_VALUE;
  public mfo c = null;
  public mfs d = null;
  public String e = null;
  public String f = null;
  public byte[] g = null;
  public Long h = null;
  public Long i = null;
  public lyl j = null;
  public lyl k = null;
  public lyl l = null;
  public Long m = null;
  public lyl n = null;
  public Long o = null;
  public String p = null;
  public Long q = null;
  public Long r = null;
  
  public mga()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    if (f != null) {
      paramlxz.a(3, f);
    }
    if (g != null) {
      paramlxz.a(5, g);
    }
    if (e != null) {
      paramlxz.a(6, e);
    }
    if (c != null) {
      paramlxz.b(7, c);
    }
    if (d != null) {
      paramlxz.b(8, d);
    }
    if (h != null) {
      paramlxz.b(9, h.longValue());
    }
    if (o != null) {
      paramlxz.b(10, o.longValue());
    }
    if (i != null) {
      paramlxz.b(11, i.longValue());
    }
    if (p != null) {
      paramlxz.a(12, p);
    }
    if (m != null) {
      paramlxz.b(13, m.longValue());
    }
    if (b != Integer.MIN_VALUE) {
      paramlxz.a(15, b);
    }
    if (q != null) {
      paramlxz.b(16, q.longValue());
    }
    if (r != null) {
      paramlxz.b(17, r.longValue());
    }
    if (j != null) {
      paramlxz.b(18, j);
    }
    if (k != null) {
      paramlxz.b(19, k);
    }
    if (l != null) {
      paramlxz.b(20, l);
    }
    if (n != null) {
      paramlxz.b(21, n);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b() + lxz.b(1, a);
    int i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.b(3, f);
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.b(5, g);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(6, e);
    }
    i2 = i1;
    if (c != null) {
      i2 = i1 + lxz.d(7, c);
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.d(8, d);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.e(9, h.longValue());
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.e(10, o.longValue());
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.e(11, i.longValue());
    }
    i1 = i2;
    if (p != null) {
      i1 = i2 + lxz.b(12, p);
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.e(13, m.longValue());
    }
    i1 = i2;
    if (b != Integer.MIN_VALUE) {
      i1 = i2 + lxz.e(15, b);
    }
    i2 = i1;
    if (q != null) {
      i2 = i1 + lxz.e(16, q.longValue());
    }
    i1 = i2;
    if (r != null) {
      i1 = i2 + lxz.e(17, r.longValue());
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.d(18, j);
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.d(19, k);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.d(20, l);
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.d(21, n);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     mga
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */