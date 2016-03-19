public final class jwz
  extends lyb<jwz>
{
  public kez[] a = kez.d();
  
  public jwz()
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
        kez localkez = a[i];
        if (localkez != null) {
          paramlxz.b(1, localkez);
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
          kez localkez = a[j];
          k = i;
          if (localkez != null) {
            k = i + lxz.d(1, localkez);
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
 * Qualified Name:     jwz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */