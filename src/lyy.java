public final class lyy
  extends lyb<lyy>
{
  public Long a = null;
  public String b = null;
  public lzb[] c = lzb.d();
  public String d = null;
  
  public lyy()
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
        lzb locallzb = c[i];
        if (locallzb != null) {
          paramlxz.b(3, locallzb);
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
          lzb locallzb = c[j];
          int k = i;
          if (locallzb != null) {
            k = i + lxz.d(3, locallzb);
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
 * Qualified Name:     lyy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */