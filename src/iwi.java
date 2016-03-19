public final class iwi
  extends lyb<iwi>
{
  public String[] a = lyo.f;
  public String[] b = lyo.f;
  public ixo[] c = ixo.d();
  
  public iwi()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    int i;
    Object localObject;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        localObject = a[i];
        if (localObject != null) {
          paramlxz.a(1, (String)localObject);
        }
        i += 1;
      }
    }
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
    if ((c != null) && (c.length > 0))
    {
      i = j;
      while (i < c.length)
      {
        localObject = c[i];
        if (localObject != null) {
          paramlxz.b(3, (lyi)localObject);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int i1 = super.b();
    int i;
    int k;
    Object localObject;
    int n;
    int m;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      j = 0;
      for (k = 0; i < a.length; k = m)
      {
        localObject = a[i];
        n = j;
        m = k;
        if (localObject != null)
        {
          m = k + 1;
          n = j + lxz.a((String)localObject);
        }
        i += 1;
        j = n;
      }
    }
    for (int j = i1 + j + k * 1;; j = i1)
    {
      i = j;
      if (b != null)
      {
        i = j;
        if (b.length > 0)
        {
          i = 0;
          k = 0;
          for (m = 0; i < b.length; m = n)
          {
            localObject = b[i];
            i1 = k;
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
      if (c != null)
      {
        k = i;
        if (c.length > 0)
        {
          j = i2;
          for (;;)
          {
            k = i;
            if (j >= c.length) {
              break;
            }
            localObject = c[j];
            k = i;
            if (localObject != null) {
              k = i + lxz.d(3, (lyi)localObject);
            }
            j += 1;
            i = k;
          }
        }
      }
      return k;
    }
  }
}

/* Location:
 * Qualified Name:     iwi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */