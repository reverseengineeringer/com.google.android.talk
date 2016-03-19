public final class min
  extends lyb<min>
{
  private static volatile min[] e;
  public String a = null;
  public String b = null;
  public Long c = null;
  public String d = null;
  
  public min()
  {
    eD = null;
    eE = -1;
  }
  
  public static min[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new min[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (c != null) {
      paramlxz.a(4, c.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(3, d);
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(4, c.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     min
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */