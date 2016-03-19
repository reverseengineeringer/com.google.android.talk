public final class mgf
  extends lyb<mgf>
{
  public mgd[] a = mgd.d();
  
  public mgf()
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
        mgd localmgd = a[i];
        if (localmgd != null) {
          paramlxz.b(1, localmgd);
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
          mgd localmgd = a[j];
          k = i;
          if (localmgd != null) {
            k = i + lxz.d(1, localmgd);
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
 * Qualified Name:     mgf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */