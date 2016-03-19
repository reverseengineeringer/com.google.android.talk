public final class msv
  extends lyi
{
  private static volatile msv[] g;
  public int a = 0;
  public int b = 0;
  public int c = 0;
  public int d = 0;
  public int e = 0;
  public int f = 0;
  
  public msv()
  {
    eE = -1;
  }
  
  public static msv[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new msv[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != 0) {
      paramlxz.a(1, a);
    }
    if (b != 0) {
      paramlxz.a(2, b);
    }
    if (c != 0) {
      paramlxz.a(3, c);
    }
    if (d != 0) {
      paramlxz.a(4, d);
    }
    if (e != 0) {
      paramlxz.a(5, e);
    }
    if (f != 0) {
      paramlxz.a(6, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != 0) {
      i = j + lxz.e(1, a);
    }
    j = i;
    if (b != 0) {
      j = i + lxz.e(2, b);
    }
    i = j;
    if (c != 0) {
      i = j + lxz.e(3, c);
    }
    j = i;
    if (d != 0) {
      j = i + lxz.e(4, d);
    }
    i = j;
    if (e != 0) {
      i = j + lxz.e(5, e);
    }
    j = i;
    if (f != 0) {
      j = i + lxz.e(6, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     msv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */