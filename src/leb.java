public final class leb
  extends lyb<leb>
{
  public lec[] a = lec.d();
  
  public leb()
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
        lec locallec = a[i];
        if (locallec != null) {
          paramlxz.b(1, locallec);
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
          lec locallec = a[j];
          k = i;
          if (locallec != null) {
            k = i + lxz.d(1, locallec);
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
 * Qualified Name:     leb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */