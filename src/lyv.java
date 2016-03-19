public final class lyv
  extends lyb<lyv>
{
  public Long a = null;
  public String b = null;
  public lzs[] c = lzs.d();
  public String d = null;
  
  public lyv()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        lzs locallzs = c[i];
        if (locallzs != null) {
          paramlxz.b(3, locallzs);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.e(1, a.longValue());
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
          lzs locallzs = c[j];
          int k = i;
          if (locallzs != null) {
            k = i + lxz.d(3, locallzs);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(4, d);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lyv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */