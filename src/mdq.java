public final class mdq
  extends lyb<mdq>
{
  public mcf[] a = mcf.d();
  public mcf[] b = mcf.d();
  public boolean[] c = lyo.e;
  
  public mdq()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    int i;
    mcf localmcf;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        localmcf = a[i];
        if (localmcf != null) {
          paramlxz.b(1, localmcf);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        localmcf = b[i];
        if (localmcf != null) {
          paramlxz.b(2, localmcf);
        }
        i += 1;
      }
    }
    if ((c != null) && (c.length > 0))
    {
      i = j;
      while (i < c.length)
      {
        paramlxz.a(3, c[i]);
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b();
    int i = j;
    mcf localmcf;
    int k;
    if (a != null)
    {
      i = j;
      if (a.length > 0)
      {
        i = j;
        j = 0;
        while (j < a.length)
        {
          localmcf = a[j];
          k = i;
          if (localmcf != null) {
            k = i + lxz.d(1, localmcf);
          }
          j += 1;
          i = k;
        }
      }
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        k = m;
        for (;;)
        {
          j = i;
          if (k >= b.length) {
            break;
          }
          localmcf = b[k];
          j = i;
          if (localmcf != null) {
            j = i + lxz.d(2, localmcf);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (c != null)
    {
      i = j;
      if (c.length > 0) {
        i = j + c.length * 1 + c.length * 1;
      }
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mdq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */