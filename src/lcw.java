public final class lcw
  extends lyb<lcw>
{
  public lcx[] a = lcx.d();
  public lcy b = null;
  
  public lcw()
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
        lcx locallcx = a[i];
        if (locallcx != null) {
          paramlxz.b(1, locallcx);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.b(2, b);
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
          lcx locallcx = a[k];
          j = i;
          if (locallcx != null) {
            j = i + lxz.d(1, locallcx);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(2, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lcw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */