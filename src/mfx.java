public final class mfx
  extends lyb<mfx>
{
  private static volatile mfx[] d;
  public String a = null;
  public mfv b = null;
  public Long c = null;
  
  public mfx()
  {
    eD = null;
    eE = -1;
  }
  
  public static mfx[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new mfx[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(1, a);
    int i = j;
    if (b != null) {
      i = j + lxz.d(2, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.e(3, c.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mfx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */