public final class awf
  extends lyb<awf>
{
  public Integer a = null;
  public Integer b = null;
  public int[] c = lyo.a;
  public Integer d = null;
  public Boolean e = null;
  
  public awf()
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
      paramlxz.a(2, b.intValue());
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        paramlxz.a(3, c[i]);
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.e(1, a.intValue());
    }
    i = j;
    if (b != null) {
      i = j + lxz.e(2, b.intValue());
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        int k = 0;
        j = m;
        while (j < c.length)
        {
          k += lxz.e(c[j]);
          j += 1;
        }
        j = i + k + c.length * 1;
      }
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(4, d.intValue());
    }
    j = i;
    if (e != null)
    {
      e.booleanValue();
      j = i + (lxz.f(5) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     awf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */