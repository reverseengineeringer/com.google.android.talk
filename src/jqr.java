public final class jqr
  extends lyb<jqr>
{
  public jpt[] a = jpt.d();
  
  public jqr()
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
        jpt localjpt = a[i];
        if (localjpt != null) {
          paramlxz.b(1, localjpt);
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
          jpt localjpt = a[j];
          k = i;
          if (localjpt != null) {
            k = i + lxz.d(1, localjpt);
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
 * Qualified Name:     jqr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */