public final class jnf
  extends lyb<jnf>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public Integer d = null;
  public int e = Integer.MIN_VALUE;
  public String[] f = lyo.f;
  
  public jnf()
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
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != Integer.MIN_VALUE) {
      paramlxz.a(5, e);
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
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.intValue());
    }
    i = j;
    if (e != Integer.MIN_VALUE) {
      i = j + lxz.e(5, e);
    }
    j = i;
    if (f != null)
    {
      j = i;
      if (f.length > 0)
      {
        int k = 0;
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
 * Qualified Name:     jnf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */