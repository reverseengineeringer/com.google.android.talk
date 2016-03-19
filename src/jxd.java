public final class jxd
  extends lyb<jxd>
{
  public Boolean a = null;
  public Boolean b = null;
  public Integer c = null;
  public int[] d = lyo.a;
  
  public jxd()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.booleanValue());
    }
    if (b != null) {
      paramlxz.a(2, b.booleanValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if ((d != null) && (d.length > 0))
    {
      int i = 0;
      while (i < d.length)
      {
        paramlxz.a(4, d[i]);
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
    if (a != null)
    {
      a.booleanValue();
      i = j + (lxz.f(1) + 1);
    }
    j = i;
    if (b != null)
    {
      b.booleanValue();
      j = i + (lxz.f(2) + 1);
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    j = i;
    if (d != null)
    {
      j = i;
      if (d.length > 0)
      {
        int k = 0;
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
 * Qualified Name:     jxd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */