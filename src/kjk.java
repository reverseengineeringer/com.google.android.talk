public final class kjk
  extends lyb<kjk>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public kii d = null;
  public String[] e = lyo.f;
  public kdo requestHeader = null;
  
  public kjk()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (a != null) {
      paramlxz.a(2, a);
    }
    if (b != null) {
      paramlxz.a(3, b);
    }
    if (c != null) {
      paramlxz.a(4, c);
    }
    if (d != null) {
      paramlxz.b(5, d);
    }
    if ((e != null) && (e.length > 0))
    {
      int i = 0;
      while (i < e.length)
      {
        String str = e[i];
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
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.b(2, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(3, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(4, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(5, d);
    }
    j = i;
    if (e != null)
    {
      j = i;
      if (e.length > 0)
      {
        int k = 0;
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
 * Qualified Name:     kjk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */