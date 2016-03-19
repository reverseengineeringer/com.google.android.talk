public final class kik
  extends lyb<kik>
{
  public kil[] a = kil.d();
  
  public kik()
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
        kil localkil = a[i];
        if (localkil != null) {
          paramlxz.b(1, localkil);
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
          kil localkil = a[j];
          k = i;
          if (localkil != null) {
            k = i + lxz.d(1, localkil);
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
 * Qualified Name:     kik
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */