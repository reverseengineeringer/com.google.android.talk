public final class mjr
  extends lyb<mjr>
{
  public miv a = null;
  public Long b = null;
  public String c = null;
  public String d = null;
  public mkx[] e = mkx.d();
  public mmo f = null;
  
  public mjr()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b.longValue());
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if ((e != null) && (e.length > 0))
    {
      int i = 0;
      while (i < e.length)
      {
        mkx localmkx = e[i];
        if (localmkx != null) {
          paramlxz.b(5, localmkx);
        }
        i += 1;
      }
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(2, b.longValue());
    }
    int k = j;
    if (c != null) {
      k = j + lxz.b(3, c);
    }
    i = k;
    if (d != null) {
      i = k + lxz.b(4, d);
    }
    j = i;
    if (e != null)
    {
      j = i;
      if (e.length > 0)
      {
        j = 0;
        while (j < e.length)
        {
          mkx localmkx = e[j];
          k = i;
          if (localmkx != null) {
            k = i + lxz.d(5, localmkx);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (f != null) {
      i = j + lxz.d(6, f);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mjr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */