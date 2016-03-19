public final class jyn
  extends lyb<jyn>
{
  public Integer a = null;
  public jxw b = null;
  public Long c = null;
  public String[] d = lyo.f;
  public kdo requestHeader = null;
  
  public jyn()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.longValue());
    }
    if (a != null) {
      paramlxz.a(4, a.intValue());
    }
    if ((d != null) && (d.length > 0))
    {
      int i = 0;
      while (i < d.length)
      {
        String str = d[i];
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
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    int k = j;
    if (c != null) {
      k = j + lxz.d(3, c.longValue());
    }
    i = k;
    if (a != null) {
      i = k + lxz.e(4, a.intValue());
    }
    j = i;
    if (d != null)
    {
      j = i;
      if (d.length > 0)
      {
        k = 0;
        int m = 0;
        j = n;
        while (j < d.length)
        {
          String str = d[j];
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
 * Qualified Name:     jyn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */