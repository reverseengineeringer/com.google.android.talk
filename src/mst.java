public final class mst
  extends lyb<mst>
{
  public mri[] a = mri.d();
  public mri[] b = mri.d();
  public boolean[] c = lyo.e;
  
  public mst()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    int i;
    mri localmri;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        localmri = a[i];
        if (localmri != null) {
          paramlxz.b(1, localmri);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        localmri = b[i];
        if (localmri != null) {
          paramlxz.b(2, localmri);
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
    mri localmri;
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
          localmri = a[j];
          k = i;
          if (localmri != null) {
            k = i + lxz.d(1, localmri);
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
          localmri = b[k];
          j = i;
          if (localmri != null) {
            j = i + lxz.d(2, localmri);
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
 * Qualified Name:     mst
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */