public final class mma
  extends lyb<mma>
{
  private static volatile mma[] f;
  public miv a = null;
  public mkt[] b = mkt.d();
  public mkt c = null;
  public String d = null;
  public String e = null;
  
  public mma()
  {
    eD = null;
    eE = -1;
  }
  
  public static mma[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new mma[0];
      }
      return f;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        mkt localmkt = b[i];
        if (localmkt != null) {
          paramlxz.b(2, localmkt);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
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
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          mkt localmkt = b[j];
          int k = i;
          if (localmkt != null) {
            k = i + lxz.d(2, localmkt);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.b(5, e);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mma
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */