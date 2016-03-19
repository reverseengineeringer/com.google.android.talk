public final class jnx
  extends lyb<jnx>
{
  private static volatile jnx[] c;
  public jnw[] a = jnw.d();
  public joa b = null;
  
  public jnx()
  {
    eD = null;
    eE = -1;
  }
  
  public static jnx[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new jnx[0];
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
        jnw localjnw = a[i];
        if (localjnw != null) {
          paramlxz.b(1, localjnw);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.b(2, b);
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
          jnw localjnw = a[k];
          j = i;
          if (localjnw != null) {
            j = i + lxz.d(1, localjnw);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(2, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jnx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */