public final class ldt
  extends lyb<ldt>
{
  public ldv[] a = ldv.d();
  public lds b = null;
  
  public ldt()
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
        ldv localldv = a[i];
        if (localldv != null) {
          paramlxz.b(1, localldv);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.b(2, b);
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
          ldv localldv = a[k];
          j = i;
          if (localldv != null) {
            j = i + lxz.d(1, localldv);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(2, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     ldt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */