public final class mfz
  extends lyb<mfz>
{
  private static volatile mfz[] c;
  public Long a = null;
  public Long b = null;
  
  public mfz()
  {
    eD = null;
    eE = -1;
  }
  
  public static mfz[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new mfz[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.b(1, a.longValue());
    paramlxz.b(2, b.longValue());
    super.a(paramlxz);
  }
  
  protected int b()
  {
    return super.b() + lxz.e(1, a.longValue()) + lxz.e(2, b.longValue());
  }
}

/* Location:
 * Qualified Name:     mfz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */