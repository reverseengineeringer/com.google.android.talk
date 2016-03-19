public final class khr
  extends lyb<khr>
{
  public String a = null;
  public String b = null;
  public Integer c = null;
  public kii d = null;
  public String[] e = lyo.f;
  public kig[] f = kig.d();
  public kdo requestHeader = null;
  
  public khr()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (a != null) {
      paramlxz.a(2, a);
    }
    if (b != null) {
      paramlxz.a(3, b);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (c != null) {
      paramlxz.a(5, c.intValue());
    }
    int i;
    Object localObject;
    if ((e != null) && (e.length > 0))
    {
      i = 0;
      while (i < e.length)
      {
        localObject = e[i];
        if (localObject != null) {
          paramlxz.a(6, (String)localObject);
        }
        i += 1;
      }
    }
    if ((f != null) && (f.length > 0))
    {
      i = j;
      while (i < f.length)
      {
        localObject = f[i];
        if (localObject != null) {
          paramlxz.b(7, (lyi)localObject);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
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
    int k = i;
    if (d != null) {
      k = i + lxz.d(4, d);
    }
    j = k;
    if (c != null) {
      j = k + lxz.e(5, c.intValue());
    }
    i = j;
    Object localObject;
    if (e != null)
    {
      i = j;
      if (e.length > 0)
      {
        i = 0;
        k = 0;
        int n;
        for (int m = 0; i < e.length; m = n)
        {
          localObject = e[i];
          int i1 = k;
          n = m;
          if (localObject != null)
          {
            n = m + 1;
            i1 = k + lxz.a((String)localObject);
          }
          i += 1;
          k = i1;
        }
        i = j + k + m * 1;
      }
    }
    k = i;
    if (f != null)
    {
      k = i;
      if (f.length > 0)
      {
        j = i2;
        for (;;)
        {
          k = i;
          if (j >= f.length) {
            break;
          }
          localObject = f[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(7, (lyi)localObject);
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
 * Qualified Name:     khr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */