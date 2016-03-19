public final class lma
  extends lyb<lma>
{
  private static volatile lma[] d;
  public lop a = null;
  public lku b = null;
  public Float c = null;
  
  public lma()
  {
    eD = null;
    eE = -1;
  }
  
  public static lma[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new lma[0];
      }
      return d;
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
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
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
 * Qualified Name:     lma
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */