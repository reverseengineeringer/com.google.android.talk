public final class jwi
  extends lyb<jwi>
{
  public jwc[] a = jwc.d();
  public long[] b = lyo.b;
  public String[] c = lyo.f;
  
  public jwi()
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
          paramlxz.b(1, (lyi)localObject);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        paramlxz.b(2, b[i]);
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
          paramlxz.a(3, (String)localObject);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = 0;
    int i = super.b();
    int j = i;
    Object localObject;
    int k;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        j = 0;
        while (j < a.length)
        {
          localObject = a[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(1, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (b != null)
    {
      i = j;
      if (b.length > 0)
      {
        i = 0;
        k = 0;
        while (i < b.length)
        {
          k += lxz.b(b[i]);
          i += 1;
        }
        i = j + k + b.length * 1;
      }
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        k = 0;
        int m = 0;
        j = n;
        while (j < c.length)
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
          m = n;
        }
        j = i + k + m * 1;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jwi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */