public final class jxi
  extends lyb<jxi>
{
  private static volatile jxi[] f;
  public mel[] a = mel.d();
  public kbx b = null;
  public kbs c = null;
  public jzy d = null;
  public kff e = null;
  
  public jxi()
  {
    eD = null;
    eE = -1;
  }
  
  public static jxi[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new jxi[0];
      }
      return f;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        mel localmel = a[i];
        if (localmel != null) {
          paramlxz.b(1, localmel);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
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
          mel localmel = a[k];
          j = i;
          if (localmel != null) {
            j = i + lxz.d(1, localmel);
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
    j = i;
    if (c != null) {
      j = i + lxz.d(3, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(4, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.d(5, e);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jxi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */