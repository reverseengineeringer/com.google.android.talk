public final class kgd
  extends lyb<kgd>
{
  private static volatile kgd[] n;
  public String a = null;
  public String b = null;
  public String c = null;
  public Integer d = null;
  public String e = null;
  public String f = null;
  public kgm g = null;
  public Integer h = null;
  public kgi i = null;
  public kgg j = null;
  public kgh k = null;
  public kgj l = null;
  public Integer m = null;
  
  public kgd()
  {
    eD = null;
    eE = -1;
  }
  
  public static kgd[] d()
  {
    if (n == null) {}
    synchronized (lyf.a)
    {
      if (n == null) {
        n = new kgd[0];
      }
      return n;
    }
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
      paramlxz.a(4, d.intValue());
    }
    if (f != null) {
      paramlxz.a(5, f);
    }
    if (g != null) {
      paramlxz.b(6, g);
    }
    if (h != null) {
      paramlxz.a(7, h.intValue());
    }
    if (i != null) {
      paramlxz.b(8, i);
    }
    if (j != null) {
      paramlxz.b(9, j);
    }
    if (e != null) {
      paramlxz.a(10, e);
    }
    if (k != null) {
      paramlxz.b(11, k);
    }
    if (l != null) {
      paramlxz.b(12, l);
    }
    if (m != null) {
      paramlxz.a(13, m.intValue());
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
      i2 = i1 + lxz.e(4, d.intValue());
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.b(5, f);
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.d(6, g);
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.e(7, h.intValue());
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.d(8, i);
    }
    i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.d(9, j);
    }
    i2 = i1;
    if (e != null) {
      i2 = i1 + lxz.b(10, e);
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.d(11, k);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.d(12, l);
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.e(13, m.intValue());
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     kgd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */