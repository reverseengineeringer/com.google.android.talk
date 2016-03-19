public final class mlq
  extends lyb<mlq>
{
  public mkx[] a = mkx.d();
  public mks b = null;
  public mks c = null;
  public Integer d = null;
  public Integer e = null;
  public Integer f = null;
  public mmb g = null;
  public mla h = null;
  
  public mlq()
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
        mkx localmkx = a[i];
        if (localmkx != null) {
          paramlxz.b(1, localmkx);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.b(3, b);
    }
    if (c != null) {
      paramlxz.b(4, c);
    }
    if (d != null) {
      paramlxz.a(6, d.intValue());
    }
    if (e != null) {
      paramlxz.a(7, e.intValue());
    }
    if (f != null) {
      paramlxz.a(8, f.intValue());
    }
    if (g != null) {
      paramlxz.b(9, g);
    }
    if (h != null) {
      paramlxz.b(10, h);
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
          mkx localmkx = a[k];
          j = i;
          if (localmkx != null) {
            j = i + lxz.d(1, localmkx);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(3, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(4, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(6, d.intValue());
    }
    j = i;
    if (e != null) {
      j = i + lxz.e(7, e.intValue());
    }
    i = j;
    if (f != null) {
      i = j + lxz.e(8, f.intValue());
    }
    j = i;
    if (g != null) {
      j = i + lxz.d(9, g);
    }
    i = j;
    if (h != null) {
      i = j + lxz.d(10, h);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mlq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */