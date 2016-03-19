public final class mcq
  extends lyb<mcq>
{
  public mcu[] a = mcu.d();
  public Long b = null;
  public mcp c = null;
  public int d = Integer.MIN_VALUE;
  public mcr e = null;
  
  public mcq()
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
        mcu localmcu = a[i];
        if (localmcu != null) {
          paramlxz.b(1, localmcu);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.b(2, b.longValue());
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != Integer.MIN_VALUE) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
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
          mcu localmcu = a[k];
          j = i;
          if (localmcu != null) {
            j = i + lxz.d(1, localmcu);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.e(2, b.longValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(3, c);
    }
    i = j;
    if (d != Integer.MIN_VALUE) {
      i = j + lxz.e(4, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.d(5, e);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mcq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */