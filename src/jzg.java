public final class jzg
  extends lyb<jzg>
{
  public Integer a = null;
  public Integer b = null;
  public String[] c = lyo.f;
  public Integer d = null;
  
  public jzg()
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
      paramlxz.a(2, b.intValue());
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        String str = c[i];
        if (str != null) {
          paramlxz.a(3, str);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = 0;
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.e(1, a.intValue());
    }
    i = j;
    if (b != null) {
      i = j + lxz.e(2, b.intValue());
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        int k = 0;
        int m = 0;
        j = n;
        while (j < c.length)
        {
          String str = c[j];
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
    if (d != null) {
      i = j + lxz.e(4, d.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jzg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */