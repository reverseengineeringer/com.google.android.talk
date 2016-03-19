public final class jol
  extends lyb<jol>
{
  private static volatile jol[] c;
  public jok[] a = jok.d();
  public jon b = null;
  
  public jol()
  {
    eD = null;
    eE = -1;
  }
  
  public static jol[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new jol[0];
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
        jok localjok = a[i];
        if (localjok != null) {
          paramlxz.b(1, localjok);
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
          jok localjok = a[k];
          j = i;
          if (localjok != null) {
            j = i + lxz.d(1, localjok);
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
 * Qualified Name:     jol
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */