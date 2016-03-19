public final class awi
  extends lyb<awi>
{
  public jwm[] a = jwm.d();
  public Integer b = null;
  
  public awi()
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
        jwm localjwm = a[i];
        if (localjwm != null) {
          paramlxz.b(1, localjwm);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
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
          jwm localjwm = a[k];
          j = i;
          if (localjwm != null) {
            j = i + lxz.d(1, localjwm);
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
    return i;
  }
}

/* Location:
 * Qualified Name:     awi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */