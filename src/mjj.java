public final class mjj
  extends lyb<mjj>
{
  private static volatile mjj[] f;
  public String a = null;
  public String b = null;
  public mjk[] c = mjk.d();
  public mks d = null;
  public mks e = null;
  
  public mjj()
  {
    eD = null;
    eE = -1;
  }
  
  public static mjj[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new mjj[0];
      }
      return f;
    }
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
        mjk localmjk = c[i];
        if (localmjk != null) {
          paramlxz.b(3, localmjk);
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
          mjk localmjk = c[j];
          int k = i;
          if (localmjk != null) {
            k = i + lxz.d(3, localmjk);
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
    return j;
  }
}

/* Location:
 * Qualified Name:     mjj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */