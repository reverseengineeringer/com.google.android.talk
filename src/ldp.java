public final class ldp
  extends lyb<ldp>
{
  private static volatile ldp[] c;
  public ldf a = null;
  public ldq[] b = ldq.d();
  
  public ldp()
  {
    eD = null;
    eE = -1;
  }
  
  public static ldp[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new ldp[0];
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
        ldq localldq = b[i];
        if (localldq != null) {
          paramlxz.b(2, localldq);
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
          ldq localldq = b[j];
          int k = i;
          if (localldq != null) {
            k = i + lxz.d(2, localldq);
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
 * Qualified Name:     ldp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */