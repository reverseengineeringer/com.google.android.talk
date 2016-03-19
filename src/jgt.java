public final class jgt
  extends lyb<jgt>
{
  private static volatile jgt[] d;
  public Double a = null;
  public String b = null;
  public jgv[] c = jgv.d();
  
  public jgt()
  {
    eD = null;
    eE = -1;
  }
  
  public static jgt[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new jgt[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.doubleValue());
    if (b != null) {
      paramlxz.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        jgv localjgv = c[i];
        if (localjgv != null) {
          paramlxz.b(3, localjgv);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    a.doubleValue();
    int j = i + (lxz.f(1) + 8);
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
          jgv localjgv = c[j];
          int k = i;
          if (localjgv != null) {
            k = i + lxz.d(3, localjgv);
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
 * Qualified Name:     jgt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */