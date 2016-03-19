public final class izp
  extends lyb<izp>
{
  public int a = Integer.MIN_VALUE;
  public int b = Integer.MIN_VALUE;
  public izo[] c = izo.d();
  public lcw d = null;
  
  public izp()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
    }
    if (b != Integer.MIN_VALUE) {
      paramlxz.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        izo localizo = c[i];
        if (localizo != null) {
          paramlxz.b(3, localizo);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != Integer.MIN_VALUE) {
      j = i + lxz.e(1, a);
    }
    i = j;
    if (b != Integer.MIN_VALUE) {
      i = j + lxz.e(2, b);
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
          izo localizo = c[j];
          int k = i;
          if (localizo != null) {
            k = i + lxz.d(3, localizo);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(4, d);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     izp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */