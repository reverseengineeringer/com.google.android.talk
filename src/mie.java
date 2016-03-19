public final class mie
  extends lyb<mie>
{
  public mid[] a = mid.d();
  
  public mie()
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
        mid localmid = a[i];
        if (localmid != null) {
          paramlxz.b(1, localmid);
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
          mid localmid = a[j];
          k = i;
          if (localmid != null) {
            k = i + lxz.d(1, localmid);
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
 * Qualified Name:     mie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */