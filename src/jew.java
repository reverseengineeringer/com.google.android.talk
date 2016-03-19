public final class jew
  extends lyb<jew>
{
  private static volatile jew[] c;
  public String a = null;
  public jex[] b = jex.d();
  
  public jew()
  {
    eD = null;
    eE = -1;
  }
  
  public static jew[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new jew[0];
      }
      return c;
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
        jex localjex = b[i];
        if (localjex != null) {
          paramlxz.b(2, localjex);
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
          jex localjex = b[j];
          int k = i;
          if (localjex != null) {
            k = i + lxz.d(2, localjex);
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
 * Qualified Name:     jew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */