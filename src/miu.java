public final class miu
  extends lyb<miu>
{
  public mkt[] a = mkt.d();
  public Integer b = null;
  public Integer c = null;
  
  public miu()
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
        mkt localmkt = a[i];
        if (localmkt != null) {
          paramlxz.b(1, localmkt);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
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
          mkt localmkt = a[k];
          j = i;
          if (localmkt != null) {
            j = i + lxz.d(1, localmkt);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.e(2, b.intValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.e(3, c.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     miu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */