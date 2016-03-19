public final class lrl
  extends lyb<lrl>
{
  public lsu[] a = lsu.d();
  
  public lrl()
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
        lsu locallsu = a[i];
        if (locallsu != null) {
          paramlxz.b(1, locallsu);
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
          lsu locallsu = a[j];
          k = i;
          if (locallsu != null) {
            k = i + lxz.d(1, locallsu);
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
 * Qualified Name:     lrl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */