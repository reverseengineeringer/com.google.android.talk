public final class jot
  extends lyb<jot>
{
  private static volatile jot[] c;
  public jox[] a = jox.d();
  public Integer b = null;
  
  public jot()
  {
    eD = null;
    eE = -1;
  }
  
  public static jot[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new jot[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        jox localjox = a[i];
        if (localjox != null) {
          paramlxz.b(1, localjox);
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
          jox localjox = a[k];
          j = i;
          if (localjox != null) {
            j = i + lxz.d(1, localjox);
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
 * Qualified Name:     jot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */