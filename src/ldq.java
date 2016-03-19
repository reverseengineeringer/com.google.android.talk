public final class ldq
  extends lyb<ldq>
{
  private static volatile ldq[] d;
  public int a = Integer.MIN_VALUE;
  public Float b = null;
  public Float c = null;
  
  public ldq()
  {
    eD = null;
    eE = -1;
  }
  
  public static ldq[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new ldq[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
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
    if (a != Integer.MIN_VALUE) {
      i = j + lxz.e(1, a);
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
 * Qualified Name:     ldq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */