public final class lyh
  extends lyb<lyh>
{
  public lyn[] a = lyn.d();
  
  public lyh()
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
        lyn locallyn = a[i];
        if (locallyn != null) {
          paramlxz.b(1, locallyn);
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
          lyn locallyn = a[j];
          k = i;
          if (locallyn != null) {
            k = i + lxz.d(1, locallyn);
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
 * Qualified Name:     lyh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */