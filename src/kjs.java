public final class kjs
  extends lyb<kjs>
{
  public Boolean a = null;
  public Boolean b = null;
  public kjt c = null;
  public Integer d = null;
  public int[] e = lyo.a;
  
  public kjs()
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
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.c(4, d.intValue());
    }
    if ((e != null) && (e.length > 0))
    {
      int i = 0;
      while (i < e.length)
      {
        paramlxz.a(5, e[i]);
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
    int k = j;
    if (c != null) {
      k = j + lxz.d(3, c);
    }
    i = k;
    if (d != null) {
      i = k + lxz.f(4, d.intValue());
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
    return j;
  }
}

/* Location:
 * Qualified Name:     kjs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */