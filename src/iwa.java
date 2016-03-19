public final class iwa
  extends lyb<iwa>
{
  private static volatile iwa[] c;
  public Integer a = null;
  public iwb b = null;
  
  public iwa()
  {
    eD = null;
    eE = -1;
  }
  
  public static iwa[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new iwa[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
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
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     iwa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */