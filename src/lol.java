public final class lol
  extends lyb<lol>
{
  public lmo[] a = lmo.d();
  public String b = null;
  public loo c = null;
  
  public lol()
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
        lmo locallmo = a[i];
        if (locallmo != null) {
          paramlxz.b(1, locallmo);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= a.length) {
            break;
          }
          lmo locallmo = a[k];
          j = i;
          if (locallmo != null) {
            j = i + lxz.d(1, locallmo);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(3, c);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lol
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */