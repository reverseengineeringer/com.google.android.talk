public final class jcu
  extends lyb<jcu>
{
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  public Long d = null;
  public int[] e = lyo.a;
  public jct f = null;
  public Boolean g = null;
  public Boolean h = null;
  
  public jcu()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(3, b.intValue());
    }
    if (c != null) {
      paramlxz.a(4, c.intValue());
    }
    if (d != null) {
      paramlxz.b(5, d.longValue());
    }
    if ((e != null) && (e.length > 0))
    {
      int i = 0;
      while (i < e.length)
      {
        paramlxz.a(6, e[i]);
        i += 1;
      }
    }
    if (f != null) {
      paramlxz.b(8, f);
    }
    if (g != null) {
      paramlxz.a(9, g.booleanValue());
    }
    if (h != null) {
      paramlxz.a(10, h.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(3, b.intValue());
    }
    int k = j;
    if (c != null) {
      k = j + lxz.e(4, c.intValue());
    }
    i = k;
    if (d != null) {
      i = k + lxz.e(5, d.longValue());
    }
    j = i;
    if (e != null)
    {
      j = i;
      if (e.length > 0)
      {
        k = 0;
        j = m;
        while (j < e.length)
        {
          k += lxz.e(e[j]);
          j += 1;
        }
        j = i + k + e.length * 1;
      }
    }
    i = j;
    if (f != null) {
      i = j + lxz.d(8, f);
    }
    j = i;
    if (g != null)
    {
      g.booleanValue();
      j = i + (lxz.f(9) + 1);
    }
    i = j;
    if (h != null)
    {
      h.booleanValue();
      i = j + (lxz.f(10) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jcu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */