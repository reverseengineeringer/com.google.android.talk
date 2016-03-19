public final class lpq
  extends lyb<lpq>
{
  public Integer a = null;
  public lpn[] b = lpn.d();
  public String c = null;
  
  public lpq()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        lpn locallpn = b[i];
        if (locallpn != null) {
          paramlxz.b(2, locallpn);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.intValue());
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
          lpn locallpn = b[j];
          int k = i;
          if (locallpn != null) {
            k = i + lxz.d(2, locallpn);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lpq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */