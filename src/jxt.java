public final class jxt
  extends lyb<jxt>
{
  private static volatile jxt[] d;
  public jyp a = null;
  public Boolean b = null;
  public Boolean c = null;
  
  public jxt()
  {
    eD = null;
    eE = -1;
  }
  
  public static jxt[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new jxt[0];
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
      paramlxz.a(2, b.booleanValue());
    }
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
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
    if (b != null)
    {
      b.booleanValue();
      j = i + (lxz.f(2) + 1);
    }
    i = j;
    if (c != null)
    {
      c.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jxt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */