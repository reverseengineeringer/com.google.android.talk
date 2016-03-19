public final class mlj
  extends lyb<mlj>
{
  private static volatile mlj[] d;
  public String a = null;
  public mlk[] b = mlk.d();
  public Boolean c = null;
  
  public mlj()
  {
    eD = null;
    eE = -1;
  }
  
  public static mlj[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new mlj[0];
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
        mlk localmlk = b[i];
        if (localmlk != null) {
          paramlxz.b(2, localmlk);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
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
          mlk localmlk = b[j];
          int k = i;
          if (localmlk != null) {
            k = i + lxz.d(2, localmlk);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null)
    {
      c.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mlj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */