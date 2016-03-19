public final class lee
  extends lyb<lee>
{
  private static volatile lee[] c;
  public leo a = null;
  public lef[] b = lef.d();
  
  public lee()
  {
    eD = null;
    eE = -1;
  }
  
  public static lee[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new lee[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        lef locallef = b[i];
        if (locallef != null) {
          paramlxz.b(2, locallef);
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
    if (a != null) {
      i = j + lxz.d(1, a);
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
          lef locallef = b[j];
          int k = i;
          if (locallef != null) {
            k = i + lxz.d(2, locallef);
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
 * Qualified Name:     lee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */