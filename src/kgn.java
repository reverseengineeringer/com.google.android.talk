public final class kgn
  extends lyb<kgn>
{
  public kgd a = null;
  public kii b = null;
  public kgd[] c = kgd.d();
  public kdo requestHeader = null;
  
  public kgn()
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
    if (b != null) {
      paramlxz.b(3, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        kgd localkgd = c[i];
        if (localkgd != null) {
          paramlxz.b(4, localkgd);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(2, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(3, b);
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        j = 0;
        while (j < c.length)
        {
          kgd localkgd = c[j];
          int k = i;
          if (localkgd != null) {
            k = i + lxz.d(4, localkgd);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kgn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */