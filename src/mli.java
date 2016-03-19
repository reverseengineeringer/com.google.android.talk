public final class mli
  extends lyb<mli>
{
  public byte[] a = null;
  public String b = null;
  public mlj[] c = mlj.d();
  public mlj d = null;
  public mks e = null;
  public Integer f = null;
  
  public mli()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        mlj localmlj = c[i];
        if (localmlj != null) {
          paramlxz.b(3, localmlj);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.b(1, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        j = 0;
        while (j < c.length)
        {
          mlj localmlj = c[j];
          int k = i;
          if (localmlj != null) {
            k = i + lxz.d(3, localmlj);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(4, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.d(5, e);
    }
    i = j;
    if (f != null) {
      i = j + lxz.e(6, f.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mli
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */