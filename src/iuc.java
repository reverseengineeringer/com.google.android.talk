public final class iuc
  extends lyb<iuc>
{
  public String[] a = lyo.f;
  public String[] b = lyo.f;
  
  public iuc()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
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
          paramlxz.a(1, str);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = j;
      while (i < b.length)
      {
        str = b[i];
        if (str != null) {
          paramlxz.a(2, str);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i1 = 0;
    int i2 = super.b();
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
          n = j + lxz.a(str);
        }
        i += 1;
        j = n;
      }
    }
    for (int i = i2 + j + k * 1;; i = i2)
    {
      j = i;
      if (b != null)
      {
        j = i;
        if (b.length > 0)
        {
          k = 0;
          m = 0;
          j = i1;
          while (j < b.length)
          {
            str = b[j];
            i1 = k;
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
}

/* Location:
 * Qualified Name:     iuc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */