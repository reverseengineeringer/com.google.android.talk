public final class mrt
  extends lyb<mrt>
{
  public mrx[] a = mrx.d();
  public Long b = null;
  public mrs c = null;
  public Integer d = null;
  public mru e = null;
  
  public mrt()
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
        mrx localmrx = a[i];
        if (localmrx != null) {
          paramlxz.b(1, localmrx);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.b(2, b.longValue());
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
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
          mrx localmrx = a[k];
          j = i;
          if (localmrx != null) {
            j = i + lxz.d(1, localmrx);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.e(2, b.longValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(3, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(4, d.intValue());
    }
    j = i;
    if (e != null) {
      j = i + lxz.d(5, e);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mrt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */