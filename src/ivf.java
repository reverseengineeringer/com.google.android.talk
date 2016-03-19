public final class ivf
  extends lyb<ivf>
{
  public ivh a = null;
  public ivb b = null;
  public iuz c = null;
  public int[] d = lyo.a;
  
  public ivf()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
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
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
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
 * Qualified Name:     ivf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */