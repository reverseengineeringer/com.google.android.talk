public final class ldx
  extends lyb<ldx>
{
  public leo[] a = leo.d();
  
  public ldx()
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
        leo localleo = a[i];
        if (localleo != null) {
          paramlxz.b(1, localleo);
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
          leo localleo = a[j];
          k = i;
          if (localleo != null) {
            k = i + lxz.d(1, localleo);
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
 * Qualified Name:     ldx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */