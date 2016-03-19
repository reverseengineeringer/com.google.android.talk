public final class mkt
  extends lyb<mkt>
{
  private static volatile mkt[] d;
  public String a = null;
  public mks b = null;
  public String c = null;
  
  public mkt()
  {
    eD = null;
    eE = -1;
  }
  
  public static mkt[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new mkt[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
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
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mkt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */