public final class jwd
  extends lyb<jwd>
{
  private static volatile jwd[] i;
  public Integer a = null;
  public String b = null;
  public Integer c = null;
  public String d = null;
  public Integer e = null;
  public Boolean f = null;
  public Boolean g = null;
  public Boolean h = null;
  
  public jwd()
  {
    eD = null;
    eE = -1;
  }
  
  public static jwd[] d()
  {
    if (i == null) {}
    synchronized (lyf.a)
    {
      if (i == null) {
        i = new jwd[0];
      }
      return i;
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
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if (f != null) {
      paramlxz.a(6, f.booleanValue());
    }
    if (g != null) {
      paramlxz.a(7, g.booleanValue());
    }
    if (h != null) {
      paramlxz.a(8, h.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int j = k;
    if (a != null) {
      j = k + lxz.e(1, a.intValue());
    }
    k = j;
    if (b != null) {
      k = j + lxz.b(2, b);
    }
    j = k;
    if (c != null) {
      j = k + lxz.e(3, c.intValue());
    }
    k = j;
    if (d != null) {
      k = j + lxz.b(4, d);
    }
    j = k;
    if (e != null) {
      j = k + lxz.e(5, e.intValue());
    }
    k = j;
    if (f != null)
    {
      f.booleanValue();
      k = j + (lxz.f(6) + 1);
    }
    j = k;
    if (g != null)
    {
      g.booleanValue();
      j = k + (lxz.f(7) + 1);
    }
    k = j;
    if (h != null)
    {
      h.booleanValue();
      k = j + (lxz.f(8) + 1);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     jwd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */