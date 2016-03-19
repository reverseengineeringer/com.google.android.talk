public final class mkm
  extends lyb<mkm>
{
  private static volatile mkm[] d;
  public Integer a = null;
  public mkj b = null;
  public mkj[] c = mkj.d();
  
  public mkm()
  {
    eD = null;
    eE = -1;
  }
  
  public static mkm[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new mkm[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        mkj localmkj = c[i];
        if (localmkj != null) {
          paramlxz.b(3, localmkj);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.e(1, a.intValue());
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(2, b);
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
          mkj localmkj = c[j];
          int k = i;
          if (localmkj != null) {
            k = i + lxz.d(3, localmkj);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mkm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */