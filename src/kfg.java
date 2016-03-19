public final class kfg
  extends lyb<kfg>
{
  private static volatile kfg[] g;
  public String a = null;
  public Long b = null;
  public Integer c = null;
  public med d = null;
  public jzg e = null;
  public String f = null;
  
  public kfg()
  {
    eD = null;
    eE = -1;
  }
  
  public static kfg[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new kfg[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.longValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.b(6, d);
    }
    if (e != null) {
      paramlxz.b(7, e);
    }
    if (f != null) {
      paramlxz.a(8, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b.longValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(6, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(7, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.b(8, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kfg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */