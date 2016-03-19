public final class klu
  extends lyb<klu>
{
  private static volatile klu[] e;
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  public Long d = null;
  
  public klu()
  {
    eD = null;
    eE = -1;
  }
  
  public static klu[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new klu[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b.intValue());
    }
    if (c != null) {
      paramlxz.a(2, c.intValue());
    }
    if (d != null) {
      paramlxz.b(3, d.longValue());
    }
    if (a != null) {
      paramlxz.a(4, a.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.e(1, b.intValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.e(2, c.intValue());
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(3, d.longValue());
    }
    j = i;
    if (a != null) {
      j = i + lxz.e(4, a.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     klu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */