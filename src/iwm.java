public final class iwm
  extends lyb<iwm>
{
  private static volatile iwm[] d;
  public ixc a = null;
  public Integer b = null;
  public Boolean c = null;
  
  public iwm()
  {
    eD = null;
    eE = -1;
  }
  
  public static iwm[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new iwm[0];
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
      paramlxz.a(4, b.intValue());
    }
    if (c != null) {
      paramlxz.a(5, c.booleanValue());
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
      j = i + lxz.e(4, b.intValue());
    }
    i = j;
    if (c != null)
    {
      c.booleanValue();
      i = j + (lxz.f(5) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     iwm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */