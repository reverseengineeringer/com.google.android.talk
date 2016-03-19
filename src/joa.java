public final class joa
  extends lyb<joa>
{
  public joc[] a = joc.d();
  public joc b = null;
  
  public joa()
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
        joc localjoc = a[i];
        if (localjoc != null) {
          paramlxz.b(1, localjoc);
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
          joc localjoc = a[k];
          j = i;
          if (localjoc != null) {
            j = i + lxz.d(1, localjoc);
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
 * Qualified Name:     joa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */