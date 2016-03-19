public final class kfe
  extends lyb<kfe>
{
  public kcd[] a = kcd.d();
  public Long b = null;
  
  public kfe()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        kcd localkcd = a[i];
        if (localkcd != null) {
          paramlxz.b(1, localkcd);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(2, b.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= a.length) {
            break;
          }
          kcd localkcd = a[k];
          j = i;
          if (localkcd != null) {
            j = i + lxz.d(1, localkcd);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(2, b.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kfe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */