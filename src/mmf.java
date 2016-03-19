public final class mmf
  extends lyb<mmf>
{
  public mme[] a = mme.d();
  public mme[] b = mme.d();
  
  public mmf()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    int i;
    mme localmme;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        localmme = a[i];
        if (localmme != null) {
          paramlxz.b(1, localmme);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = j;
      while (i < b.length)
      {
        localmme = b[i];
        if (localmme != null) {
          paramlxz.b(2, localmme);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b();
    int i = j;
    mme localmme;
    if (a != null)
    {
      i = j;
      if (a.length > 0)
      {
        i = j;
        j = 0;
        while (j < a.length)
        {
          localmme = a[j];
          k = i;
          if (localmme != null) {
            k = i + lxz.d(1, localmme);
          }
          j += 1;
          i = k;
        }
      }
    }
    int k = i;
    if (b != null)
    {
      k = i;
      if (b.length > 0)
      {
        j = m;
        for (;;)
        {
          k = i;
          if (j >= b.length) {
            break;
          }
          localmme = b[j];
          k = i;
          if (localmme != null) {
            k = i + lxz.d(2, localmme);
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
 * Qualified Name:     mmf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */