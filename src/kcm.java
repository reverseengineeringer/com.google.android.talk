public final class kcm
  extends lyb<kcm>
{
  private static volatile kcm[] c;
  public jxw a = null;
  public kcn[] b = kcn.d();
  
  public kcm()
  {
    eD = null;
    eE = -1;
  }
  
  public static kcm[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new kcm[0];
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
        kcn localkcn = b[i];
        if (localkcn != null) {
          paramlxz.b(2, localkcn);
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
          kcn localkcn = b[j];
          int k = i;
          if (localkcn != null) {
            k = i + lxz.d(2, localkcn);
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
 * Qualified Name:     kcm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */