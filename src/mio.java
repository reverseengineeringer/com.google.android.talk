public final class mio
  extends lyb<mio>
{
  public min[] a = min.d();
  
  public mio()
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
        min localmin = a[i];
        if (localmin != null) {
          paramlxz.b(1, localmin);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int k = i;
    if (a != null)
    {
      k = i;
      if (a.length > 0)
      {
        int j = 0;
        for (;;)
        {
          k = i;
          if (j >= a.length) {
            break;
          }
          min localmin = a[j];
          k = i;
          if (localmin != null) {
            k = i + lxz.d(1, localmin);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     mio
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */