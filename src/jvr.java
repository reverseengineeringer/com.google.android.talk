public final class jvr
  extends lyb<jvr>
{
  private static volatile jvr[] e;
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  public String d = null;
  
  public jvr()
  {
    eD = null;
    eE = -1;
  }
  
  public static jvr[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new jvr[0];
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
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d);
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
      j = i + lxz.e(2, b.intValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(4, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jvr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */