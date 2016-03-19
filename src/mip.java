public final class mip
  extends lyb<mip>
{
  public String a = null;
  public String b = null;
  public String[] c = lyo.f;
  public Boolean d = null;
  
  public mip()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        String str = c[i];
        if (str != null) {
          paramlxz.a(2, str);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(3, b);
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
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
    if (b != null) {
      i = j + lxz.b(3, b);
    }
    j = i;
    if (d != null)
    {
      d.booleanValue();
      j = i + (lxz.f(4) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */