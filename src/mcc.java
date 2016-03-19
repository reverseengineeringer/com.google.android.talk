public final class mcc
  extends lyb<mcc>
{
  public mcd[] a = mcd.d();
  
  public mcc()
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
        mcd localmcd = a[i];
        if (localmcd != null) {
          paramlxz.b(1, localmcd);
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
          mcd localmcd = a[j];
          k = i;
          if (localmcd != null) {
            k = i + lxz.d(1, localmcd);
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
 * Qualified Name:     mcc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */