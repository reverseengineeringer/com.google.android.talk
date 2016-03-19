public final class jwv
  extends lyb<jwv>
{
  public kbh[] a = kbh.d();
  public jzl b = null;
  public jxr c = null;
  public Integer d = null;
  public Long e = null;
  public String f = null;
  public kdp responseHeader = null;
  
  public jwv()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        kbh localkbh = a[i];
        if (localkbh != null) {
          paramlxz.b(2, localkbh);
        }
        i += 1;
      }
    }
    if (e != null) {
      paramlxz.a(3, e.longValue());
    }
    if (f != null) {
      paramlxz.a(4, f);
    }
    if (b != null) {
      paramlxz.b(5, b);
    }
    if (c != null) {
      paramlxz.b(6, c);
    }
    if (d != null) {
      paramlxz.a(8, d.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (responseHeader != null) {
      i = j + lxz.d(1, responseHeader);
    }
    j = i;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        j = 0;
        while (j < a.length)
        {
          kbh localkbh = a[j];
          int k = i;
          if (localkbh != null) {
            k = i + lxz.d(2, localkbh);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(3, e.longValue());
    }
    j = i;
    if (f != null) {
      j = i + lxz.b(4, f);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(5, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(6, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(8, d.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jwv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */