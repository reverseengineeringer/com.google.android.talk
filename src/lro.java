public final class lro
  extends lyb<lro>
{
  public int a = Integer.MIN_VALUE;
  public lsj b = null;
  public ltq c = null;
  public lgz d = null;
  public lgj[] e = lgj.d();
  
  public lro()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if ((e != null) && (e.length > 0))
    {
      int i = 0;
      while (i < e.length)
      {
        lgj locallgj = e[i];
        if (locallgj != null) {
          paramlxz.b(5, locallgj);
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
    if (a != Integer.MIN_VALUE) {
      i = j + lxz.e(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    int k = j;
    if (c != null) {
      k = j + lxz.d(3, c);
    }
    i = k;
    if (d != null) {
      i = k + lxz.d(4, d);
    }
    j = i;
    if (e != null)
    {
      j = i;
      if (e.length > 0)
      {
        j = 0;
        while (j < e.length)
        {
          lgj locallgj = e[j];
          k = i;
          if (locallgj != null) {
            k = i + lxz.d(5, locallgj);
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
 * Qualified Name:     lro
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */