public final class lnw
  extends lyb<lnw>
{
  public Integer a = null;
  public loi b = null;
  public loz c = null;
  public lhs d = null;
  public lnl[] e = lnl.d();
  
  public lnw()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
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
        lnl locallnl = e[i];
        if (locallnl != null) {
          paramlxz.b(5, locallnl);
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
      i = j + lxz.e(1, a.intValue());
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
          lnl locallnl = e[j];
          k = i;
          if (locallnl != null) {
            k = i + lxz.d(5, locallnl);
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
 * Qualified Name:     lnw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */