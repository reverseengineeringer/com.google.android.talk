public final class loc
  extends lyb<loc>
{
  public log a = null;
  public loe[] b = loe.d();
  
  public loc()
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
        loe localloe = b[i];
        if (localloe != null) {
          paramlxz.b(2, localloe);
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
          loe localloe = b[j];
          int k = i;
          if (localloe != null) {
            k = i + lxz.d(2, localloe);
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
 * Qualified Name:     loc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */