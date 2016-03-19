public final class lqo
  extends lyb<lqo>
{
  public lsv a = null;
  public String b = null;
  public lgf c = null;
  public lgf[] d = lgf.d();
  public lgf[] e = lgf.d();
  
  public lqo()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    int i;
    lgf locallgf;
    if ((d != null) && (d.length > 0))
    {
      i = 0;
      while (i < d.length)
      {
        locallgf = d[i];
        if (locallgf != null) {
          paramlxz.b(5, locallgf);
        }
        i += 1;
      }
    }
    if ((e != null) && (e.length > 0))
    {
      i = j;
      while (i < e.length)
      {
        locallgf = e[i];
        if (locallgf != null) {
          paramlxz.b(6, locallgf);
        }
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
      i = j + lxz.d(1, a);
    }
    int k = i;
    if (b != null) {
      k = i + lxz.b(2, b);
    }
    j = k;
    if (c != null) {
      j = k + lxz.d(3, c);
    }
    i = j;
    lgf locallgf;
    if (d != null)
    {
      i = j;
      if (d.length > 0)
      {
        i = j;
        j = 0;
        while (j < d.length)
        {
          locallgf = d[j];
          k = i;
          if (locallgf != null) {
            k = i + lxz.d(5, locallgf);
          }
          j += 1;
          i = k;
        }
      }
    }
    k = i;
    if (e != null)
    {
      k = i;
      if (e.length > 0)
      {
        j = m;
        for (;;)
        {
          k = i;
          if (j >= e.length) {
            break;
          }
          locallgf = e[j];
          k = i;
          if (locallgf != null) {
            k = i + lxz.d(6, locallgf);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     lqo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */