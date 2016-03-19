public final class mmk
  extends lyb<mmk>
{
  public mks a = null;
  public mml b = null;
  public Long c = null;
  public Long d = null;
  public Integer e = null;
  public mml[] f = mml.d();
  public mks g = null;
  
  public mmk()
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
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c.longValue());
    }
    if (d != null) {
      paramlxz.b(4, d.longValue());
    }
    if (e != null) {
      paramlxz.c(5, e.intValue());
    }
    if ((f != null) && (f.length > 0))
    {
      int i = 0;
      while (i < f.length)
      {
        mml localmml = f[i];
        if (localmml != null) {
          paramlxz.b(6, localmml);
        }
        i += 1;
      }
    }
    if (g != null) {
      paramlxz.b(7, g);
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
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.longValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.longValue());
    }
    i = j;
    if (e != null) {
      i = j + lxz.f(5, e.intValue());
    }
    j = i;
    if (f != null)
    {
      j = i;
      if (f.length > 0)
      {
        j = 0;
        while (j < f.length)
        {
          mml localmml = f[j];
          int k = i;
          if (localmml != null) {
            k = i + lxz.d(6, localmml);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (g != null) {
      i = j + lxz.d(7, g);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mmk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */