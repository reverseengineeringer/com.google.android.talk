public final class kak
  extends lyb<kak>
{
  private static volatile kak[] c;
  public jzi a = null;
  public jzh[] b = jzh.d();
  
  public kak()
  {
    eD = null;
    eE = -1;
  }
  
  public static kak[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new kak[0];
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
        jzh localjzh = b[i];
        if (localjzh != null) {
          paramlxz.b(2, localjzh);
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
          jzh localjzh = b[j];
          int k = i;
          if (localjzh != null) {
            k = i + lxz.d(2, localjzh);
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
 * Qualified Name:     kak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */