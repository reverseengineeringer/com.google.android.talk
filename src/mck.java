public final class mck
  extends lyb<mck>
{
  private static volatile mck[] d;
  public mcm a = null;
  public mcn b = null;
  public int c = Integer.MIN_VALUE;
  
  public mck()
  {
    eD = null;
    eE = -1;
  }
  
  public static mck[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new mck[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (c != Integer.MIN_VALUE) {
      paramlxz.a(2, c);
    }
    if (b != null) {
      paramlxz.b(3, b);
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
    if (c != Integer.MIN_VALUE) {
      j = i + lxz.e(2, c);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(3, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */