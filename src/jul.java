public final class jul
  extends lyb<jul>
{
  private static volatile jul[] n;
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  public Long d = null;
  public Integer e = null;
  public Integer f = null;
  public Integer g = null;
  public Long h = null;
  public Integer i = null;
  public juh j = null;
  public juh k = null;
  public Integer l = null;
  public jum m = null;
  
  public jul()
  {
    eD = null;
    eE = -1;
  }
  
  public static jul[] d()
  {
    if (n == null) {}
    synchronized (lyf.a)
    {
      if (n == null) {
        n = new jul[0];
      }
      return n;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(19, a.intValue());
    paramlxz.a(20, b.intValue());
    paramlxz.a(21, c.intValue());
    paramlxz.b(22, d.longValue());
    paramlxz.a(23, e.intValue());
    paramlxz.b(24, h.longValue());
    paramlxz.a(25, i.intValue());
    if (j != null) {
      paramlxz.b(26, j);
    }
    if (k != null) {
      paramlxz.b(27, k);
    }
    if (l != null) {
      paramlxz.a(73, l.intValue());
    }
    if (m != null) {
      paramlxz.b(74, m);
    }
    if (f != null) {
      paramlxz.a(108, f.intValue());
    }
    if (g != null) {
      paramlxz.a(109, g.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b() + lxz.e(19, a.intValue()) + lxz.e(20, b.intValue()) + lxz.e(21, c.intValue()) + lxz.e(22, d.longValue()) + lxz.e(23, e.intValue()) + lxz.e(24, h.longValue()) + lxz.e(25, i.intValue());
    int i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.d(26, j);
    }
    i2 = i1;
    if (k != null) {
      i2 = i1 + lxz.d(27, k);
    }
    i1 = i2;
    if (l != null) {
      i1 = i2 + lxz.e(73, l.intValue());
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.d(74, m);
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.e(108, f.intValue());
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.e(109, g.intValue());
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     jul
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */