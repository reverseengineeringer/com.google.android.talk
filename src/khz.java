public final class khz
  extends lyb<khz>
{
  public khe a = null;
  public kbi[] b = kbi.d();
  public kib c = null;
  public Boolean d = null;
  public Integer e = null;
  public String f = null;
  public kii g = null;
  public kdo requestHeader = null;
  
  public khz()
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
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        kbi localkbi = b[i];
        if (localkbi != null) {
          paramlxz.b(3, localkbi);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(4, c);
    }
    if (d != null) {
      paramlxz.a(5, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(6, e.intValue());
    }
    if (f != null) {
      paramlxz.a(7, f);
    }
    if (g != null) {
      paramlxz.b(8, g);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (requestHeader != null) {
      j = i + lxz.d(1, requestHeader);
    }
    i = j;
    if (a != null) {
      i = j + lxz.d(2, a);
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          kbi localkbi = b[j];
          int k = i;
          if (localkbi != null) {
            k = i + lxz.d(3, localkbi);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(4, c);
    }
    j = i;
    if (d != null)
    {
      d.booleanValue();
      j = i + (lxz.f(5) + 1);
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(6, e.intValue());
    }
    j = i;
    if (f != null) {
      j = i + lxz.b(7, f);
    }
    i = j;
    if (g != null) {
      i = j + lxz.d(8, g);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     khz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */