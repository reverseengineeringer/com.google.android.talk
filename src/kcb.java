public final class kcb
  extends lyb<kcb>
{
  private static volatile kcb[] b;
  public med a = null;
  
  public kcb()
  {
    eD = null;
    eE = -1;
  }
  
  public static kcb[] d()
  {
    if (b == null) {}
    synchronized (lyf.a)
    {
      if (b == null) {
        b = new kcb[0];
      }
      return b;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
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
    return i;
  }
}

/* Location:
 * Qualified Name:     kcb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */