public final class lio
  extends lyb<lio>
{
  public Integer a = null;
  public lku[] b = lku.d();
  
  public lio()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        lku locallku = b[i];
        if (locallku != null) {
          paramlxz.b(2, locallku);
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
      i = j + lxz.e(1, a.intValue());
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
          lku locallku = b[j];
          int k = i;
          if (locallku != null) {
            k = i + lxz.d(2, locallku);
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
 * Qualified Name:     lio
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */