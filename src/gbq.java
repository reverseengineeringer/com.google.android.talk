public final class gbq
  extends gbh<gbq>
{
  public String[] a = gbp.f;
  public String[] b = gbp.f;
  public int[] c = gbp.a;
  public long[] d = gbp.b;
  
  public gbq()
  {
    o = null;
    p = -1;
  }
  
  protected int a()
  {
    int i2 = 0;
    int i1 = super.a();
    int j;
    int k;
    String str;
    int n;
    int m;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      j = 0;
      for (k = 0; i < a.length; k = m)
      {
        str = a[i];
        n = j;
        m = k;
        if (str != null)
        {
          m = k + 1;
          n = j + gbg.a(str);
        }
        i += 1;
        j = n;
      }
    }
    for (int i = i1 + j + k * 1;; i = i1)
    {
      j = i;
      if (b != null)
      {
        j = i;
        if (b.length > 0)
        {
          j = 0;
          k = 0;
          for (m = 0; j < b.length; m = n)
          {
            str = b[j];
            i1 = k;
            n = m;
            if (str != null)
            {
              n = m + 1;
              i1 = k + gbg.a(str);
            }
            j += 1;
            k = i1;
          }
          j = i + k + m * 1;
        }
      }
      i = j;
      if (c != null)
      {
        i = j;
        if (c.length > 0)
        {
          i = 0;
          k = 0;
          while (i < c.length)
          {
            k += gbg.b(c[i]);
            i += 1;
          }
          i = j + k + c.length * 1;
        }
      }
      j = i;
      if (d != null)
      {
        j = i;
        if (d.length > 0)
        {
          k = 0;
          j = i2;
          while (j < d.length)
          {
            k += gbg.b(d[j]);
            j += 1;
          }
          j = i + k + d.length * 1;
        }
      }
      return j;
    }
  }
  
  public void a(gbg paramgbg)
  {
    int j = 0;
    int i;
    String str;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        str = a[i];
        if (str != null) {
          paramgbg.a(1, str);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        str = b[i];
        if (str != null) {
          paramgbg.a(2, str);
        }
        i += 1;
      }
    }
    if ((c != null) && (c.length > 0))
    {
      i = 0;
      while (i < c.length)
      {
        paramgbg.a(3, c[i]);
        i += 1;
      }
    }
    if ((d != null) && (d.length > 0))
    {
      i = j;
      while (i < d.length)
      {
        paramgbg.a(4, d[i]);
        i += 1;
      }
    }
    super.a(paramgbg);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return bool1;
              bool1 = bool2;
            } while (!(paramObject instanceof gbq));
            paramObject = (gbq)paramObject;
            bool1 = bool2;
          } while (!gbl.a(a, a));
          bool1 = bool2;
        } while (!gbl.a(b, b));
        bool1 = bool2;
      } while (!gbl.a(c, c));
      bool1 = bool2;
    } while (!gbl.a(d, d));
    return a((gbh)paramObject);
  }
  
  public int hashCode()
  {
    return ((((gbl.a(a) + 527) * 31 + gbl.a(b)) * 31 + gbl.a(c)) * 31 + gbl.a(d)) * 31 + c();
  }
}

/* Location:
 * Qualified Name:     gbq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */