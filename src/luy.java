public final class luy
  extends lyb<luy>
{
  private static volatile luy[] g;
  public Integer a = null;
  public Float b = null;
  public Integer c = null;
  public Float d = null;
  public Float e = null;
  public Integer f = null;
  
  public luy()
  {
    eD = null;
    eE = -1;
  }
  
  public static luy[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new luy[0];
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
    if (f != null) {
      paramlxz.a(4, f.intValue());
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
    if (f != null) {
      j = i + lxz.e(4, f.intValue());
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
 * Qualified Name:     luy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */