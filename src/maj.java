public final class maj
  extends lyb<maj>
{
  public mad a = null;
  public lzu[] b = lzu.b;
  public lzu c = null;
  public Integer d = null;
  
  public maj()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        lzu locallzu = b[i];
        if (locallzu != null) {
          paramlxz.b(2, locallzu);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          lzu locallzu = b[j];
          int k = i;
          if (locallzu != null) {
            k = i + lxz.d(2, locallzu);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     maj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */