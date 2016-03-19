public final class jbn
  extends lyb<jbn>
{
  public String a = null;
  public jon b = null;
  public Boolean c = null;
  public Boolean d = null;
  public Boolean e = null;
  public String[] f = lyo.f;
  public Integer g = null;
  
  public jbn()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (c != null) {
      paramlxz.a(2, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(3, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(4, e.booleanValue());
    }
    if ((f != null) && (f.length > 0))
    {
      int i = 0;
      while (i < f.length)
      {
        String str = f[i];
        if (str != null) {
          paramlxz.a(5, str);
        }
        i += 1;
      }
    }
    if (g != null) {
      paramlxz.a(6, g.intValue());
    }
    if (b != null) {
      paramlxz.b(7, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = 0;
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (c != null)
    {
      c.booleanValue();
      j = i + (lxz.f(2) + 1);
    }
    int k = j;
    if (d != null)
    {
      d.booleanValue();
      k = j + (lxz.f(3) + 1);
    }
    i = k;
    if (e != null)
    {
      e.booleanValue();
      i = k + (lxz.f(4) + 1);
    }
    j = i;
    if (f != null)
    {
      j = i;
      if (f.length > 0)
      {
        k = 0;
        int m = 0;
        j = n;
        while (j < f.length)
        {
          String str = f[j];
          int i1 = k;
          n = m;
          if (str != null)
          {
            n = m + 1;
            i1 = k + lxz.a(str);
          }
          j += 1;
          k = i1;
          m = n;
        }
        j = i + k + m * 1;
      }
    }
    i = j;
    if (g != null) {
      i = j + lxz.e(6, g.intValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(7, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jbn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */