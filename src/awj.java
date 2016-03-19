public final class awj
  extends lyb<awj>
{
  public jwq[] a = jwq.d();
  public Integer b = null;
  
  public awj()
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
        jwq localjwq = a[i];
        if (localjwq != null) {
          paramlxz.b(1, localjwq);
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
          jwq localjwq = a[k];
          j = i;
          if (localjwq != null) {
            j = i + lxz.d(1, localjwq);
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
 * Qualified Name:     awj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */