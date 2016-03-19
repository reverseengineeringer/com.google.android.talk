public final class jye
  extends lyb<jye>
{
  public Integer a = null;
  public jzx b = null;
  public Long c = null;
  public String d = null;
  public String e = null;
  public kbi[] f = kbi.d();
  public jyp g = null;
  public kbf h = null;
  public Integer i = null;
  public kdo requestHeader = null;
  
  public jye()
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
      paramlxz.a(2, a.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.longValue());
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if ((f != null) && (f.length > 0))
    {
      int j = 0;
      while (j < f.length)
      {
        kbi localkbi = f[j];
        if (localkbi != null) {
          paramlxz.b(5, localkbi);
        }
        j += 1;
      }
    }
    if (g != null) {
      paramlxz.b(11, g);
    }
    if (h != null) {
      paramlxz.b(12, h);
    }
    if (b != null) {
      paramlxz.b(13, b);
    }
    if (e != null) {
      paramlxz.a(14, e);
    }
    if (i != null) {
      paramlxz.a(15, i.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int j = k;
    if (requestHeader != null) {
      j = k + lxz.d(1, requestHeader);
    }
    k = j;
    if (a != null) {
      k = j + lxz.e(2, a.intValue());
    }
    int m = k;
    if (c != null) {
      m = k + lxz.d(3, c.longValue());
    }
    j = m;
    if (d != null) {
      j = m + lxz.b(4, d);
    }
    k = j;
    if (f != null)
    {
      k = j;
      if (f.length > 0)
      {
        k = 0;
        while (k < f.length)
        {
          kbi localkbi = f[k];
          m = j;
          if (localkbi != null) {
            m = j + lxz.d(5, localkbi);
          }
          k += 1;
          j = m;
        }
        k = j;
      }
    }
    j = k;
    if (g != null) {
      j = k + lxz.d(11, g);
    }
    k = j;
    if (h != null) {
      k = j + lxz.d(12, h);
    }
    j = k;
    if (b != null) {
      j = k + lxz.d(13, b);
    }
    k = j;
    if (e != null) {
      k = j + lxz.b(14, e);
    }
    j = k;
    if (i != null) {
      j = k + lxz.e(15, i.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jye
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */