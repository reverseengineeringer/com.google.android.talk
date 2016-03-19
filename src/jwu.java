public final class jwu
  extends lyb<jwu>
{
  public jzr a = null;
  public kbi[] b = kbi.d();
  public byte[] c = null;
  public Long d = null;
  public kdo requestHeader = null;
  
  public jwu()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (c != null) {
      paramlxz.a(2, c);
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
    if (d != null) {
      paramlxz.a(4, d.longValue());
    }
    if (a != null) {
      paramlxz.b(5, a);
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
    if (c != null) {
      i = j + lxz.b(2, c);
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
    if (d != null) {
      i = j + lxz.d(4, d.longValue());
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(5, a);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jwu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */