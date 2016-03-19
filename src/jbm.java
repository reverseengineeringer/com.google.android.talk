public final class jbm
  extends lyb<jbm>
{
  public jbn a = null;
  public String b = null;
  public String[] c = lyo.f;
  public String d = null;
  public jbd e = null;
  public jbd[] f = jbd.d();
  
  public jbm()
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
    int i;
    Object localObject;
    if ((c != null) && (c.length > 0))
    {
      i = 0;
      while (i < c.length)
      {
        localObject = c[i];
        if (localObject != null) {
          paramlxz.a(3, (String)localObject);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if ((f != null) && (f.length > 0))
    {
      i = j;
      while (i < f.length)
      {
        localObject = f[i];
        if (localObject != null) {
          paramlxz.b(6, (lyi)localObject);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.d(1, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
    }
    j = i;
    Object localObject;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        j = 0;
        k = 0;
        int n;
        for (int m = 0; j < c.length; m = n)
        {
          localObject = c[j];
          int i1 = k;
          n = m;
          if (localObject != null)
          {
            n = m + 1;
            i1 = k + lxz.a((String)localObject);
          }
          j += 1;
          k = i1;
        }
        j = i + k + m * 1;
      }
    }
    int k = j;
    if (d != null) {
      k = j + lxz.b(4, d);
    }
    i = k;
    if (e != null) {
      i = k + lxz.d(5, e);
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
            k = i + lxz.d(6, (lyi)localObject);
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
 * Qualified Name:     jbm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */