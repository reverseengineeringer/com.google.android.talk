public final class mjn
  extends lyb<mjn>
{
  private static volatile mjn[] d;
  public String a = null;
  public mjj[] b = mjj.d();
  public mks c = null;
  
  public mjn()
  {
    eD = null;
    eE = -1;
  }
  
  public static mjn[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new mjn[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        mjj localmjj = b[i];
        if (localmjj != null) {
          paramlxz.b(2, localmjj);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
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
          mjj localmjj = b[j];
          int k = i;
          if (localmjj != null) {
            k = i + lxz.d(2, localmjj);
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
    return i;
  }
}

/* Location:
 * Qualified Name:     mjn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */