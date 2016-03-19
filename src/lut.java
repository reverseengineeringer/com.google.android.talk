public final class lut
  extends lyb<lut>
{
  private static volatile lut[] g;
  public Integer a = null;
  public Float b = null;
  public Integer c = null;
  public Float d = null;
  public Float e = null;
  public int f = Integer.MIN_VALUE;
  
  public lut()
  {
    eD = null;
    eE = -1;
  }
  
  public static lut[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new lut[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (c != null) {
      paramlxz.a(2, c.intValue());
    }
    if (e != null) {
      paramlxz.a(3, e.floatValue());
    }
    if (f != Integer.MIN_VALUE) {
      paramlxz.a(4, f);
    }
    if (b != null) {
      paramlxz.a(5, b.floatValue());
    }
    if (d != null) {
      paramlxz.a(6, d.floatValue());
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
    if (c != null) {
      j = i + lxz.e(2, c.intValue());
    }
    i = j;
    if (e != null)
    {
      e.floatValue();
      i = j + (lxz.f(3) + 4);
    }
    j = i;
    if (f != Integer.MIN_VALUE) {
      j = i + lxz.e(4, f);
    }
    i = j;
    if (b != null)
    {
      b.floatValue();
      i = j + (lxz.f(5) + 4);
    }
    j = i;
    if (d != null)
    {
      d.floatValue();
      j = i + (lxz.f(6) + 4);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lut
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */