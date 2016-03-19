public final class ltc
  extends lyb<ltc>
{
  private static volatile ltc[] c;
  public String a = null;
  public lte[] b = lte.d();
  
  public ltc()
  {
    eD = null;
    eE = -1;
  }
  
  public static ltc[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new ltc[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        lte locallte = b[i];
        if (locallte != null) {
          paramlxz.b(2, locallte);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
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
          lte locallte = b[j];
          int k = i;
          if (locallte != null) {
            k = i + lxz.d(2, locallte);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     ltc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */