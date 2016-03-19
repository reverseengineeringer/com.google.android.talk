public final class lfw
  extends lyb<lfw>
{
  private static volatile lfw[] d;
  public int a = Integer.MIN_VALUE;
  public Boolean b = null;
  public Boolean c = null;
  
  public lfw()
  {
    eD = null;
    eE = -1;
  }
  
  public static lfw[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new lfw[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
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
    if (a != Integer.MIN_VALUE) {
      i = j + lxz.e(1, a);
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
 * Qualified Name:     lfw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */