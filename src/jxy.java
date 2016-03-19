public final class jxy
  extends lyb<jxy>
{
  private static volatile jxy[] h;
  public kcr a = null;
  public String b = null;
  public Integer c = null;
  public Integer d = null;
  public lcf e = null;
  public Integer f = null;
  public Boolean g = null;
  
  public jxy()
  {
    eD = null;
    eE = -1;
  }
  
  public static jxy[] d()
  {
    if (h == null) {}
    synchronized (lyf.a)
    {
      if (h == null) {
        h = new jxy[0];
      }
      return h;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (e != null) {
      paramlxz.b(4, e);
    }
    if (f != null) {
      paramlxz.a(5, f.intValue());
    }
    if (d != null) {
      paramlxz.a(6, d.intValue());
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
    if (a != null) {
      i = j + lxz.d(1, a);
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
    if (e != null) {
      j = i + lxz.d(4, e);
    }
    i = j;
    if (f != null) {
      i = j + lxz.e(5, f.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(6, d.intValue());
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
 * Qualified Name:     jxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */