public final class kdm
  extends lyb<kdm>
{
  public jxw a = null;
  public Long b = null;
  public Integer c = null;
  public int[] d = lyo.a;
  public kdo requestHeader = null;
  
  public kdm()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (a != null) {
      paramlxz.b(2, a);
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (b != null) {
      paramlxz.a(4, b.longValue());
    }
    if ((d != null) && (d.length > 0))
    {
      int i = 0;
      while (i < d.length)
      {
        paramlxz.a(5, d[i]);
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
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(2, a);
    }
    int k = j;
    if (c != null) {
      k = j + lxz.e(3, c.intValue());
    }
    i = k;
    if (b != null) {
      i = k + lxz.d(4, b.longValue());
    }
    j = i;
    if (d != null)
    {
      j = i;
      if (d.length > 0)
      {
        k = 0;
        j = m;
        while (j < d.length)
        {
          k += lxz.e(d[j]);
          j += 1;
        }
        j = i + k + d.length * 1;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kdm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */