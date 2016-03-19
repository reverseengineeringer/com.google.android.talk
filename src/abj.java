public final class abj
  extends lyb<abj>
{
  public static final lyc<msu, abj> a = lyc.a(abj.class, 196484970L);
  private static final abj[] d = new abj[0];
  public c b = null;
  public b[] c = b.a();
  
  public abj()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        b localb = c[i];
        if (localb != null) {
          paramlxz.b(2, localb);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.d(1, b);
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
          b localb = c[j];
          int k = i;
          if (localb != null) {
            k = i + lxz.d(2, localb);
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
 * Qualified Name:     abj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */