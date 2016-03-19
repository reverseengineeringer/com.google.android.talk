public final class kgg
  extends lyb<kgg>
{
  public String a = null;
  public String b = null;
  public Boolean c = null;
  public Integer d = null;
  public String[] e = lyo.f;
  
  public kgg()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if ((e != null) && (e.length > 0))
    {
      int i = 0;
      while (i < e.length)
      {
        String str = e[i];
        if (str != null) {
          paramlxz.a(5, str);
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
      i = j + lxz.b(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    int k = j;
    if (c != null)
    {
      c.booleanValue();
      k = j + (lxz.f(3) + 1);
    }
    i = k;
    if (d != null) {
      i = k + lxz.e(4, d.intValue());
    }
    j = i;
    if (e != null)
    {
      j = i;
      if (e.length > 0)
      {
        k = 0;
        int m = 0;
        j = n;
        while (j < e.length)
        {
          String str = e[j];
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
 * Qualified Name:     kgg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */