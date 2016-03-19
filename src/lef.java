public final class lef
  extends lyb<lef>
{
  private static volatile lef[] d;
  public Integer a = null;
  public Float b = null;
  public Float c = null;
  
  public lef()
  {
    eD = null;
    eE = -1;
  }
  
  public static lef[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new lef[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b.floatValue());
    }
    if (c != null) {
      paramlxz.a(3, c.floatValue());
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
    if (b != null)
    {
      b.floatValue();
      j = i + (lxz.f(2) + 4);
    }
    i = j;
    if (c != null)
    {
      c.floatValue();
      i = j + (lxz.f(3) + 4);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */