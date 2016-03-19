public final class jhz
  extends lyb<jhz>
{
  private static volatile jhz[] e;
  public String a = null;
  public String b = null;
  public Integer c = null;
  public Integer d = null;
  
  public jhz()
  {
    eD = null;
    eE = -1;
  }
  
  public static jhz[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new jhz[0];
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
      paramlxz.a(3, c.intValue());
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
      i = j + lxz.b(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jhz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */