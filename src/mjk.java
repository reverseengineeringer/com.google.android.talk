public final class mjk
  extends lyb<mjk>
{
  private static volatile mjk[] c;
  public mks a = null;
  public mks b = null;
  
  public mjk()
  {
    eD = null;
    eE = -1;
  }
  
  public static mjk[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new mjk[0];
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
 * Qualified Name:     mjk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */