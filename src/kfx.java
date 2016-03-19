public final class kfx
  extends lyb<kfx>
{
  private static volatile kfx[] d;
  public kfy a = null;
  public String b = null;
  public Integer c = null;
  
  public kfx()
  {
    eD = null;
    eE = -1;
  }
  
  public static kfx[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new kfx[0];
      }
      return d;
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
    if (c != null) {
      paramlxz.a(3, c.intValue());
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
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kfx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */