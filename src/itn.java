public final class itn
  extends lyb<itn>
{
  private static volatile itn[] b;
  public Integer a = null;
  
  public itn()
  {
    eD = null;
    eE = -1;
  }
  
  public static itn[] d()
  {
    if (b == null) {}
    synchronized (lyf.a)
    {
      if (b == null) {
        b = new itn[0];
      }
      return b;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
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
    return i;
  }
}

/* Location:
 * Qualified Name:     itn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */