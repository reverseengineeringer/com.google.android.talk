public final class jpy
  extends lyb<jpy>
{
  private static volatile jpy[] e;
  public Integer a = null;
  public String b = null;
  public String c = null;
  public Boolean d = null;
  
  public jpy()
  {
    eD = null;
    eE = -1;
  }
  
  public static jpy[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new jpy[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    paramlxz.a(3, c);
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
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
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    j += lxz.b(3, c);
    i = j;
    if (d != null)
    {
      d.booleanValue();
      i = j + (lxz.f(4) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jpy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */