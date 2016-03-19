public final class ixo
  extends lyb<ixo>
{
  private static volatile ixo[] f;
  public Integer a = null;
  public String b = null;
  public Boolean c = null;
  public Long d = null;
  public String e = null;
  
  public ixo()
  {
    eD = null;
    eE = -1;
  }
  
  public static ixo[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new ixo[0];
      }
      return f;
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
      paramlxz.b(4, d.longValue());
    }
    if (e != null) {
      paramlxz.a(5, e);
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
      j = i + lxz.e(4, d.longValue());
    }
    i = j;
    if (e != null) {
      i = j + lxz.b(5, e);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     ixo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */