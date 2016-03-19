public final class jow
  extends lyb<jow>
{
  private static volatile jow[] e;
  public Integer a = null;
  public String b = null;
  public Boolean c = null;
  public Integer d = null;
  
  public jow()
  {
    eD = null;
    eE = -1;
  }
  
  public static jow[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new jow[0];
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
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
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
    i = j;
    if (c != null)
    {
      c.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */