public final class jzh
  extends lyb<jzh>
{
  private static volatile jzh[] r;
  public Integer a = null;
  public Boolean b = null;
  public kcr c = null;
  public jzj d = null;
  public jzb e = null;
  public kcv f = null;
  public Boolean g = null;
  public Boolean h = null;
  public Boolean i = null;
  public Integer j = null;
  public Integer k = null;
  public Integer l = null;
  public byte[] m = null;
  public byte[] n = null;
  public byte[] o = null;
  public byte[] p = null;
  public byte[] q = null;
  
  public jzh()
  {
    eD = null;
    eE = -1;
  }
  
  public static jzh[] d()
  {
    if (r == null) {}
    synchronized (lyf.a)
    {
      if (r == null) {
        r = new jzh[0];
      }
      return r;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (m != null) {
      paramlxz.a(1, m);
    }
    if (n != null) {
      paramlxz.a(2, n);
    }
    if (o != null) {
      paramlxz.a(3, o);
    }
    if (p != null) {
      paramlxz.a(4, p);
    }
    if (q != null) {
      paramlxz.a(5, q);
    }
    if (g != null) {
      paramlxz.a(7, g.booleanValue());
    }
    if (f != null) {
      paramlxz.b(8, f);
    }
    if (c != null) {
      paramlxz.b(9, c);
    }
    if (d != null) {
      paramlxz.b(10, d);
    }
    if (h != null) {
      paramlxz.a(11, h.booleanValue());
    }
    if (e != null) {
      paramlxz.b(12, e);
    }
    if (a != null) {
      paramlxz.a(13, a.intValue());
    }
    if (i != null) {
      paramlxz.a(14, i.booleanValue());
    }
    if (j != null) {
      paramlxz.a(15, j.intValue());
    }
    if (k != null) {
      paramlxz.a(16, k.intValue());
    }
    if (l != null) {
      paramlxz.a(17, l.intValue());
    }
    if (b != null) {
      paramlxz.a(18, b.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.b(1, m);
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.b(2, n);
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.b(3, o);
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.b(4, p);
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + lxz.b(5, q);
    }
    i2 = i1;
    if (g != null)
    {
      g.booleanValue();
      i2 = i1 + (lxz.f(7) + 1);
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.d(8, f);
    }
    i2 = i1;
    if (c != null) {
      i2 = i1 + lxz.d(9, c);
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.d(10, d);
    }
    i2 = i1;
    if (h != null)
    {
      h.booleanValue();
      i2 = i1 + (lxz.f(11) + 1);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.d(12, e);
    }
    i2 = i1;
    if (a != null) {
      i2 = i1 + lxz.e(13, a.intValue());
    }
    i1 = i2;
    if (i != null)
    {
      i.booleanValue();
      i1 = i2 + (lxz.f(14) + 1);
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.e(15, j.intValue());
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.e(16, k.intValue());
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.e(17, l.intValue());
    }
    i1 = i2;
    if (b != null)
    {
      b.booleanValue();
      i1 = i2 + (lxz.f(18) + 1);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     jzh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */