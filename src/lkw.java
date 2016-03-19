public final class lkw
  extends lyb<lkw>
{
  private static volatile lkw[] h;
  public Integer a = null;
  public String b = null;
  public lky c = null;
  public lkz d = null;
  public lla e = null;
  public llb f = null;
  public lkx g = null;
  
  public lkw()
  {
    eD = null;
    eE = -1;
  }
  
  public static lkw[] d()
  {
    if (h == null) {}
    synchronized (lyf.a)
    {
      if (h == null) {
        h = new lkw[0];
      }
      return h;
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
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
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
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(5, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.d(6, f);
    }
    i = j;
    if (g != null) {
      i = j + lxz.d(7, g);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lkw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */