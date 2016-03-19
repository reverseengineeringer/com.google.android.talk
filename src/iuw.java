public final class iuw
  extends lyb<iuw>
{
  public Integer a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public Integer e = null;
  public String[] f = lyo.f;
  
  public iuw()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.intValue());
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if ((f != null) && (f.length > 0))
    {
      int i = 0;
      while (i < f.length)
      {
        String str = f[i];
        if (str != null) {
          paramlxz.a(6, str);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = 0;
    int j = super.b() + lxz.e(1, a.intValue());
    int i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(3, c);
    }
    int k = j;
    if (d != null) {
      k = j + lxz.b(4, d);
    }
    i = k;
    if (e != null) {
      i = k + lxz.e(5, e.intValue());
    }
    j = i;
    if (f != null)
    {
      j = i;
      if (f.length > 0)
      {
        k = 0;
        int m = 0;
        j = n;
        while (j < f.length)
        {
          String str = f[j];
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
 * Qualified Name:     iuw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */