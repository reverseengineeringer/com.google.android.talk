public final class mkh
  extends lyb<mkh>
{
  public mki[] a = mki.d();
  
  public mkh()
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
        mki localmki = a[i];
        if (localmki != null) {
          paramlxz.b(1, localmki);
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
          mki localmki = a[j];
          k = i;
          if (localmki != null) {
            k = i + lxz.d(1, localmki);
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
 * Qualified Name:     mkh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */