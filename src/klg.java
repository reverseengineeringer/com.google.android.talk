public final class klg
  extends lyb<klg>
{
  public Long a = null;
  public String[] b = lyo.f;
  public klb[] c = klb.d();
  public Boolean d = null;
  public String e = null;
  public Boolean f = null;
  public klp g = null;
  
  public klg()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    int i;
    Object localObject;
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        localObject = b[i];
        if (localObject != null) {
          paramlxz.a(2, (String)localObject);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(3, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(4, e);
    }
    if (f != null) {
      paramlxz.a(5, f.booleanValue());
    }
    if ((c != null) && (c.length > 0))
    {
      i = j;
      while (i < c.length)
      {
        localObject = c[i];
        if (localObject != null) {
          paramlxz.b(6, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.longValue());
    }
    j = i;
    int k;
    Object localObject;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        k = 0;
        int n;
        for (int m = 0; j < b.length; m = n)
        {
          localObject = b[j];
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
    i = j;
    if (d != null)
    {
      d.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    j = i;
    if (e != null) {
      j = i + lxz.b(4, e);
    }
    i = j;
    if (f != null)
    {
      f.booleanValue();
      i = j + (lxz.f(5) + 1);
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        k = i2;
        for (;;)
        {
          j = i;
          if (k >= c.length) {
            break;
          }
          localObject = c[k];
          j = i;
          if (localObject != null) {
            j = i + lxz.d(6, (lyi)localObject);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (g != null) {
      i = j + lxz.d(7, g);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     klg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */