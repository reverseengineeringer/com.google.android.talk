public final class mbz
  extends lyb<mbz>
{
  public static final lyc<Object, mbz> a = lyc.a(mbz.class, 367806914L);
  private static final mbz[] e = new mbz[0];
  public String b = null;
  public mby[] c = mby.d();
  public int d = Integer.MIN_VALUE;
  
  public mbz()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (d != Integer.MIN_VALUE) {
      paramlxz.a(1, d);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        mby localmby = c[i];
        if (localmby != null) {
          paramlxz.b(3, localmby);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (d != Integer.MIN_VALUE) {
      j = i + lxz.e(1, d);
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        j = 0;
        while (j < c.length)
        {
          mby localmby = c[j];
          int k = i;
          if (localmby != null) {
            k = i + lxz.d(3, localmby);
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
 * Qualified Name:     mbz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */