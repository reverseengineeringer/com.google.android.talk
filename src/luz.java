public final class luz
  extends lyb<luz>
{
  private static volatile luz[] g;
  public Integer a = null;
  public Float b = null;
  public Integer c = null;
  public Float d = null;
  public Float e = null;
  public Integer f = null;
  
  public luz()
  {
    eD = null;
    eE = -1;
  }
  
  public static luz[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new luz[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.intValue());
    paramlxz.a(2, c.intValue());
    paramlxz.a(3, f.intValue());
    if (e != null) {
      paramlxz.a(4, e.floatValue());
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
    int j = super.b() + lxz.e(1, a.intValue()) + lxz.e(2, c.intValue()) + lxz.e(3, f.intValue());
    int i = j;
    if (e != null)
    {
      e.floatValue();
      i = j + (lxz.f(4) + 4);
    }
    j = i;
    if (b != null)
    {
      b.floatValue();
      j = i + (lxz.f(5) + 4);
    }
    i = j;
    if (d != null)
    {
      d.floatValue();
      i = j + (lxz.f(6) + 4);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     luz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */