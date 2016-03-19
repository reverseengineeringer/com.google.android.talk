public final class jfr
  extends lyb<jfr>
{
  private static volatile jfr[] e;
  public String a = null;
  public Integer b = null;
  public Integer c = null;
  public Integer d = null;
  
  public jfr()
  {
    eD = null;
    eE = -1;
  }
  
  public static jfr[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new jfr[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(1, a);
    int i = j;
    if (b != null) {
      i = j + lxz.e(2, b.intValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.e(3, c.intValue());
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(4, d.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jfr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */