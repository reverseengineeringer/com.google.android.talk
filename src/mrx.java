public final class mrx
  extends lyb<mrx>
{
  private static volatile mrx[] f;
  public Boolean a = null;
  public mrw b = null;
  public Integer c = null;
  public String d = null;
  public mry e = null;
  
  public mrx()
  {
    eD = null;
    eE = -1;
  }
  
  public static mrx[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new mrx[0];
      }
      return f;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.booleanValue());
    }
    if (e != null) {
      paramlxz.b(2, e);
    }
    if (b != null) {
      paramlxz.b(3, b);
    }
    if (c != null) {
      paramlxz.a(4, c.intValue());
    }
    if (d != null) {
      paramlxz.a(5, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null)
    {
      a.booleanValue();
      i = j + (lxz.f(1) + 1);
    }
    j = i;
    if (e != null) {
      j = i + lxz.d(2, e);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(3, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.e(4, c.intValue());
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(5, d);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mrx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */