public final class jwm
  extends lyb<jwm>
{
  private static volatile jwm[] e;
  public String a = null;
  public String b = null;
  public Long c = null;
  public String d = null;
  
  public jwm()
  {
    eD = null;
    eE = -1;
  }
  
  public static jwm[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new jwm[0];
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
    if (c != null) {
      paramlxz.b(3, c.longValue());
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
      i = j + lxz.b(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.longValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(4, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jwm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */