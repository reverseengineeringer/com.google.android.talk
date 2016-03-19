public final class ivl
  extends lyb<ivl>
{
  private static volatile ivl[] n;
  public ixc a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public String h = null;
  public String i = null;
  public String j = null;
  public String k = null;
  public String l = null;
  public String m = null;
  
  public ivl()
  {
    eD = null;
    eE = -1;
  }
  
  public static ivl[] d()
  {
    if (n == null) {}
    synchronized (lyf.a)
    {
      if (n == null) {
        n = new ivl[0];
      }
      return n;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (e != null) {
      paramlxz.a(4, e);
    }
    if (f != null) {
      paramlxz.a(5, f);
    }
    if (h != null) {
      paramlxz.a(6, h);
    }
    if (i != null) {
      paramlxz.a(7, i);
    }
    if (j != null) {
      paramlxz.a(8, j);
    }
    if (k != null) {
      paramlxz.a(9, k);
    }
    if (l != null) {
      paramlxz.a(10, l);
    }
    if (c != null) {
      paramlxz.a(11, c);
    }
    if (g != null) {
      paramlxz.a(12, g);
    }
    if (m != null) {
      paramlxz.a(13, m);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.d(1, a);
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.b(2, b);
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.b(3, d);
    }
    i2 = i1;
    if (e != null) {
      i2 = i1 + lxz.b(4, e);
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.b(5, f);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.b(6, h);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.b(7, i);
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.b(8, j);
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.b(9, k);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.b(10, l);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.b(11, c);
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.b(12, g);
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.b(13, m);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     ivl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */