public final class kbh
  extends lyb<kbh>
{
  private static volatile kbh[] g;
  public kbi a = null;
  public String b = null;
  public Integer c = null;
  public String d = null;
  public String e = null;
  public byte[] f = null;
  
  public kbh()
  {
    eD = null;
    eE = -1;
  }
  
  public static kbh[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new kbh[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
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
    if (b != null) {
      paramlxz.a(5, b);
    }
    if (c != null) {
      paramlxz.a(6, c.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(2, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.b(3, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.b(4, f);
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(5, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.e(6, c.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kbh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */