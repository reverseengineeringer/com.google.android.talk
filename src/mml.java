public final class mml
  extends lyb<mml>
{
  private static volatile mml[] e;
  public String a = null;
  public Integer b = null;
  public Integer c = null;
  public Boolean d = null;
  
  public mml()
  {
    eD = null;
    eE = -1;
  }
  
  public static mml[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new mml[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    paramlxz.c(2, b.intValue());
    paramlxz.c(3, c.intValue());
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(1, a) + lxz.f(2, b.intValue()) + lxz.f(3, c.intValue());
    int i = j;
    if (d != null)
    {
      d.booleanValue();
      i = j + (lxz.f(4) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mml
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */