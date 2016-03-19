public final class kjo
  extends lyb<kjo>
{
  private static volatile kjo[] c;
  public String a = null;
  public int[] b = lyo.a;
  
  public kjo()
  {
    eD = null;
    eE = -1;
  }
  
  public static kjo[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new kjo[0];
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
        paramlxz.c(2, b[i]);
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
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
        int k = 0;
        j = m;
        while (j < b.length)
        {
          k += lxz.h(b[j]);
          j += 1;
        }
        j = i + k + b.length * 1;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kjo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */