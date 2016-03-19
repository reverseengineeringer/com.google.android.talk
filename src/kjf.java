public final class kjf
  extends lyb<kjf>
{
  private static volatile kjf[] e;
  public Float a = null;
  public Float b = null;
  public Float c = null;
  public Float d = null;
  
  public kjf()
  {
    eD = null;
    eE = -1;
  }
  
  public static kjf[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new kjf[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.floatValue());
    paramlxz.a(2, b.floatValue());
    paramlxz.a(3, c.floatValue());
    paramlxz.a(4, d.floatValue());
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    a.floatValue();
    int j = lxz.f(1);
    b.floatValue();
    int k = lxz.f(2);
    c.floatValue();
    int m = lxz.f(3);
    d.floatValue();
    return i + (j + 4) + (k + 4) + (m + 4) + (lxz.f(4) + 4);
  }
}

/* Location:
 * Qualified Name:     kjf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */