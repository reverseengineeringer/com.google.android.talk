public final class iwy
  extends lyb<iwy>
{
  private static volatile iwy[] c;
  public iwx a = null;
  public iwx b = null;
  
  public iwy()
  {
    eD = null;
    eE = -1;
  }
  
  public static iwy[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new iwy[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
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
      j = i + lxz.d(2, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     iwy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */