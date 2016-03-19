public final class kam
  extends lyb<kam>
{
  public kaa[] a = kaa.d();
  public byte[] b = null;
  public kdp responseHeader = null;
  
  public kam()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        kaa localkaa = a[i];
        if (localkaa != null) {
          paramlxz.b(2, localkaa);
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
    if (responseHeader != null) {
      i = j + lxz.d(1, responseHeader);
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
          kaa localkaa = a[j];
          int k = i;
          if (localkaa != null) {
            k = i + lxz.d(2, localkaa);
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
 * Qualified Name:     kam
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */