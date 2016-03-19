public final class kft
  extends lyb<kft>
{
  public kab[] a = kab.d();
  public byte[] b = null;
  public kdo requestHeader = null;
  
  public kft()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        kab localkab = a[i];
        if (localkab != null) {
          paramlxz.b(2, localkab);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(3, b);
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
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        j = 0;
        while (j < a.length)
        {
          kab localkab = a[j];
          int k = i;
          if (localkab != null) {
            k = i + lxz.d(2, localkab);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(3, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */