public final class jyu
  extends lyb<jyu>
{
  private static volatile jyu[] g;
  public Integer a = null;
  public Double b = null;
  public Double c = null;
  public Long d = null;
  public Integer e = null;
  public String f = null;
  
  public jyu()
  {
    eD = null;
    eE = -1;
  }
  
  public static jyu[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new jyu[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b.doubleValue());
    }
    if (c != null) {
      paramlxz.a(3, c.doubleValue());
    }
    if (d != null) {
      paramlxz.b(4, d.longValue());
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if (f != null) {
      paramlxz.a(6, f);
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
    if (b != null)
    {
      b.doubleValue();
      j = i + (lxz.f(2) + 8);
    }
    i = j;
    if (c != null)
    {
      c.doubleValue();
      i = j + (lxz.f(3) + 8);
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.longValue());
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(5, e.intValue());
    }
    j = i;
    if (f != null) {
      j = i + lxz.b(6, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jyu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */