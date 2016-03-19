public final class kbv
  extends lyb<kbv>
{
  private static volatile kbv[] c;
  public jxw a = null;
  public String[] b = lyo.f;
  
  public kbv()
  {
    eD = null;
    eE = -1;
  }
  
  public static kbv[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new kbv[0];
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
        String str = b[i];
        if (str != null) {
          paramlxz.a(2, str);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = 0;
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
        int k = 0;
        int m = 0;
        j = n;
        while (j < b.length)
        {
          String str = b[j];
          int i1 = k;
          n = m;
          if (str != null)
          {
            n = m + 1;
            i1 = k + lxz.a(str);
          }
          j += 1;
          k = i1;
          m = n;
        }
        j = i + k + m * 1;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kbv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */