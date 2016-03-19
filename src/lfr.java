public final class lfr
  extends lyb<lfr>
{
  public Long a = null;
  public mcu[] b = mcu.d();
  public lup c = null;
  
  public lfr()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        mcu localmcu = b[i];
        if (localmcu != null) {
          paramlxz.b(2, localmcu);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.longValue());
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
          mcu localmcu = b[j];
          int k = i;
          if (localmcu != null) {
            k = i + lxz.d(2, localmcu);
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
    return i;
  }
}

/* Location:
 * Qualified Name:     lfr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */