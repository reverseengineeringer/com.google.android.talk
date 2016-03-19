public final class mro
  extends lyb<mro>
{
  private static volatile mro[] d;
  public mrp a = null;
  public mrq b = null;
  public Integer c = null;
  
  public mro()
  {
    eD = null;
    eE = -1;
  }
  
  public static mro[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new mro[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (c != null) {
      paramlxz.a(2, c.intValue());
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
    if (c != null) {
      j = i + lxz.e(2, c.intValue());
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(3, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mro
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */