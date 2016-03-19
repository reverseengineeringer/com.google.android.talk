public final class jdh
  extends lyb<jdh>
{
  public Boolean a = null;
  public jdj b = null;
  public long[] c = lyo.b;
  public String d = null;
  public Integer e = null;
  public String f = null;
  public jdi g = null;
  
  public jdh()
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
      paramlxz.b(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        paramlxz.b(3, c[i]);
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if (g != null) {
      paramlxz.b(6, g);
    }
    if (f != null) {
      paramlxz.a(7, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int i = super.b();
    int j = i;
    if (a != null)
    {
      a.booleanValue();
      j = i + (lxz.f(1) + 1);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(2, b);
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
          k += lxz.b(c[j]);
          j += 1;
        }
        j = i + k + c.length * 1;
      }
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(4, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.e(5, e.intValue());
    }
    i = j;
    if (g != null) {
      i = j + lxz.d(6, g);
    }
    j = i;
    if (f != null) {
      j = i + lxz.b(7, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jdh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */