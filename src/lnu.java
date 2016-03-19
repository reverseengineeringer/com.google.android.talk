public final class lnu
  extends lyb<lnu>
{
  public loj[] a = loj.d();
  
  public lnu()
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
        loj localloj = a[i];
        if (localloj != null) {
          paramlxz.b(1, localloj);
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
          loj localloj = a[j];
          k = i;
          if (localloj != null) {
            k = i + lxz.d(1, localloj);
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
 * Qualified Name:     lnu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */