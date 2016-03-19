public final class jdi
  extends lyb<jdi>
{
  public Long a = null;
  public Long b = null;
  public Boolean c = null;
  public int d = Integer.MIN_VALUE;
  public Long e = null;
  public Long f = null;
  public Integer g = null;
  public long[] h = lyo.b;
  
  public jdi()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    if (b != null) {
      paramlxz.b(2, b.longValue());
    }
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
    }
    if (d != Integer.MIN_VALUE) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e.longValue());
    }
    if (f != null) {
      paramlxz.b(6, f.longValue());
    }
    if (g != null) {
      paramlxz.a(7, g.intValue());
    }
    if ((h != null) && (h.length > 0))
    {
      int i = 0;
      while (i < h.length)
      {
        paramlxz.b(8, h[i]);
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.longValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(2, b.longValue());
    }
    i = j;
    if (c != null)
    {
      c.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    j = i;
    if (d != Integer.MIN_VALUE) {
      j = i + lxz.e(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(5, e.longValue());
    }
    j = i;
    if (f != null) {
      j = i + lxz.e(6, f.longValue());
    }
    i = j;
    if (g != null) {
      i = j + lxz.e(7, g.intValue());
    }
    j = i;
    if (h != null)
    {
      j = i;
      if (h.length > 0)
      {
        int k = 0;
        j = m;
        while (j < h.length)
        {
          k += lxz.b(h[j]);
          j += 1;
        }
        j = i + k + h.length * 1;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jdi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */