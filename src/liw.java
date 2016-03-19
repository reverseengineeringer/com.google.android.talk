public final class liw
  extends lyb<liw>
{
  private static volatile liw[] e;
  public Integer a = null;
  public liv[] b = liv.d();
  public Integer c = null;
  public String d = null;
  
  public liw()
  {
    eD = null;
    eE = -1;
  }
  
  public static liw[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new liw[0];
      }
      return e;
    }
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
        liv localliv = b[i];
        if (localliv != null) {
          paramlxz.b(2, localliv);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (c != null) {
      paramlxz.a(4, c.intValue());
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
          liv localliv = b[j];
          int k = i;
          if (localliv != null) {
            k = i + lxz.d(2, localliv);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(3, d);
    }
    j = i;
    if (c != null) {
      j = i + lxz.e(4, c.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     liw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */