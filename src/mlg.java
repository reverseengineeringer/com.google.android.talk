public final class mlg
  extends lyb<mlg>
{
  public mmm a = null;
  public mlf[] b = mlf.d();
  public Integer c = null;
  public Integer d = null;
  public mks e = null;
  public mmb f = null;
  public mla g = null;
  public mld h = null;
  public mlh i = null;
  
  public mlg()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int j = 0;
      while (j < b.length)
      {
        mlf localmlf = b[j];
        if (localmlf != null) {
          paramlxz.b(2, localmlf);
        }
        j += 1;
      }
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.b(60, h);
    }
    if (i != null) {
      paramlxz.b(61, i);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int j = k;
    if (a != null) {
      j = k + lxz.d(1, a);
    }
    k = j;
    if (b != null)
    {
      k = j;
      if (b.length > 0)
      {
        k = 0;
        while (k < b.length)
        {
          mlf localmlf = b[k];
          int m = j;
          if (localmlf != null) {
            m = j + lxz.d(2, localmlf);
          }
          k += 1;
          j = m;
        }
        k = j;
      }
    }
    j = k;
    if (c != null) {
      j = k + lxz.e(3, c.intValue());
    }
    k = j;
    if (d != null) {
      k = j + lxz.e(4, d.intValue());
    }
    j = k;
    if (e != null) {
      j = k + lxz.d(5, e);
    }
    k = j;
    if (f != null) {
      k = j + lxz.d(6, f);
    }
    j = k;
    if (g != null) {
      j = k + lxz.d(7, g);
    }
    k = j;
    if (h != null) {
      k = j + lxz.d(60, h);
    }
    j = k;
    if (i != null) {
      j = k + lxz.d(61, i);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mlg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */