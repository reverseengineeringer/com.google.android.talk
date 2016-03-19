public final class lue
  extends lyb<lue>
{
  public llw a = null;
  public String b = null;
  public luc c = null;
  public luc[] d = luc.d();
  public luc[] e = luc.d();
  
  public lue()
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
    luc localluc;
    if ((d != null) && (d.length > 0))
    {
      i = 0;
      while (i < d.length)
      {
        localluc = d[i];
        if (localluc != null) {
          paramlxz.b(5, localluc);
        }
        i += 1;
      }
    }
    if ((e != null) && (e.length > 0))
    {
      i = j;
      while (i < e.length)
      {
        localluc = e[i];
        if (localluc != null) {
          paramlxz.b(6, localluc);
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
    luc localluc;
    if (d != null)
    {
      i = j;
      if (d.length > 0)
      {
        i = j;
        j = 0;
        while (j < d.length)
        {
          localluc = d[j];
          k = i;
          if (localluc != null) {
            k = i + lxz.d(5, localluc);
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
          localluc = e[j];
          k = i;
          if (localluc != null) {
            k = i + lxz.d(6, localluc);
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
 * Qualified Name:     lue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */