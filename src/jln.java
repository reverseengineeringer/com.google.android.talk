public final class jln
  extends lyb<jln>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public jlq[] e = jlq.d();
  public String[] f = lyo.f;
  
  public jln()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    paramlxz.a(3, c);
    int i;
    Object localObject;
    if ((e != null) && (e.length > 0))
    {
      i = 0;
      while (i < e.length)
      {
        localObject = e[i];
        if (localObject != null) {
          paramlxz.b(4, (lyi)localObject);
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
          paramlxz.a(5, (String)localObject);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(6, d);
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
    j += lxz.b(3, c);
    i = j;
    Object localObject;
    int k;
    if (e != null)
    {
      i = j;
      if (e.length > 0)
      {
        i = j;
        j = 0;
        while (j < e.length)
        {
          localObject = e[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(4, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
      }
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
          localObject = f[j];
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
    i = j;
    if (d != null) {
      i = j + lxz.b(6, d);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jln
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */