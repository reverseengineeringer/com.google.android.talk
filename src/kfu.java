public final class kfu
  extends lyb<kfu>
{
  public Integer a = null;
  public kaa[] b = kaa.d();
  public byte[] c = null;
  public kdp responseHeader = null;
  
  public kfu()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if (a != null) {
      paramlxz.a(2, a.intValue());
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        kaa localkaa = b[i];
        if (localkaa != null) {
          paramlxz.b(3, localkaa);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(4, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (responseHeader != null) {
      j = i + lxz.d(1, responseHeader);
    }
    i = j;
    if (a != null) {
      i = j + lxz.e(2, a.intValue());
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
          kaa localkaa = b[j];
          int k = i;
          if (localkaa != null) {
            k = i + lxz.d(3, localkaa);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(4, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kfu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */