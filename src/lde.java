public final class lde
  extends lyb<lde>
{
  public ldf[] a = ldf.d();
  
  public lde()
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
        ldf localldf = a[i];
        if (localldf != null) {
          paramlxz.b(1, localldf);
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
          ldf localldf = a[j];
          k = i;
          if (localldf != null) {
            k = i + lxz.d(1, localldf);
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
 * Qualified Name:     lde
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */