public final class lkv
  extends lyb<lkv>
{
  private static volatile lkv[] d;
  public Integer a = null;
  public Boolean b = null;
  public Boolean c = null;
  
  public lkv()
  {
    eD = null;
    eE = -1;
  }
  
  public static lkv[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new lkv[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (c != null) {
      paramlxz.a(2, c.booleanValue());
    }
    if (b != null) {
      paramlxz.a(3, b.booleanValue());
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
    if (c != null)
    {
      c.booleanValue();
      j = i + (lxz.f(2) + 1);
    }
    i = j;
    if (b != null)
    {
      b.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lkv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */