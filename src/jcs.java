public final class jcs
  extends lyb<jcs>
{
  private static volatile jcs[] d;
  public Integer a = null;
  public jco[] b = jco.d();
  public Boolean c = null;
  
  public jcs()
  {
    eD = null;
    eE = -1;
  }
  
  public static jcs[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new jcs[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.intValue());
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        jco localjco = b[i];
        if (localjco != null) {
          paramlxz.b(2, localjco);
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
    int i = super.b();
    i = lxz.e(1, a.intValue()) + i;
    int j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= b.length) {
            break;
          }
          jco localjco = b[k];
          j = i;
          if (localjco != null) {
            j = i + lxz.d(2, localjco);
          }
          k += 1;
          i = j;
        }
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
 * Qualified Name:     jcs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */