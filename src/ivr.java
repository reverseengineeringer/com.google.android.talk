public final class ivr
  extends lyb<ivr>
{
  private static volatile ivr[] h;
  public ixc a = null;
  public String b = null;
  public String c = null;
  public Integer d = null;
  public Integer e = null;
  public Boolean f = null;
  public Boolean g = null;
  
  public ivr()
  {
    eD = null;
    eE = -1;
  }
  
  public static ivr[] d()
  {
    if (h == null) {}
    synchronized (lyf.a)
    {
      if (h == null) {
        h = new ivr[0];
      }
      return h;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b);
    }
    if (c != null) {
      paramlxz.a(2, c);
    }
    if (d != null) {
      paramlxz.a(3, d.intValue());
    }
    if (e != null) {
      paramlxz.a(4, e.intValue());
    }
    if (f != null) {
      paramlxz.a(5, f.booleanValue());
    }
    if (a != null) {
      paramlxz.b(6, a);
    }
    if (g != null) {
      paramlxz.a(7, g.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.b(1, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(2, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(3, d.intValue());
    }
    j = i;
    if (e != null) {
      j = i + lxz.e(4, e.intValue());
    }
    i = j;
    if (f != null)
    {
      f.booleanValue();
      i = j + (lxz.f(5) + 1);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(6, a);
    }
    i = j;
    if (g != null)
    {
      g.booleanValue();
      i = j + (lxz.f(7) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     ivr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */