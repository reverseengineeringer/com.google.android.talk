public final class jwr
  extends lyb<jwr>
{
  public int a = Integer.MIN_VALUE;
  public String[] b = lyo.f;
  public Integer c = null;
  
  public jwr()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
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
    if (c != null) {
      paramlxz.c(3, c.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = 0;
    int j = super.b();
    int i = j;
    if (a != Integer.MIN_VALUE) {
      i = j + lxz.e(1, a);
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
    i = j;
    if (c != null) {
      i = j + lxz.f(3, c.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jwr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */