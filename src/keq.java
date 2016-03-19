public final class keq
  extends lyb<keq>
{
  public kdq[] a = kdq.d();
  public kdp responseHeader = null;
  
  public keq()
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
        kdq localkdq = a[i];
        if (localkdq != null) {
          paramlxz.b(2, localkdq);
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
          kdq localkdq = a[j];
          int k = i;
          if (localkdq != null) {
            k = i + lxz.d(2, localkdq);
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
 * Qualified Name:     keq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */