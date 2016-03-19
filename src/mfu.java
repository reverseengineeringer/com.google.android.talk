public final class mfu
  extends lyb<mfu>
{
  private static volatile mfu[] c;
  public Integer a = null;
  public mfz b = null;
  
  public mfu()
  {
    eD = null;
    eE = -1;
  }
  
  public static mfu[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new mfu[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.intValue());
    if (b != null) {
      paramlxz.b(2, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.e(1, a.intValue());
    int i = j;
    if (b != null) {
      i = j + lxz.d(2, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mfu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */