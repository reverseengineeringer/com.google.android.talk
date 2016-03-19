public final class kah
  extends lyb<kah>
{
  public Integer a = null;
  public jyc b = null;
  public kcy c = null;
  public kdq[] d = kdq.d();
  public jzh[] e = jzh.d();
  public kdp responseHeader = null;
  
  public kah()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (a != null) {
      paramlxz.a(3, a.intValue());
    }
    if (c != null) {
      paramlxz.b(4, c);
    }
    int i;
    Object localObject;
    if ((d != null) && (d.length > 0))
    {
      i = 0;
      while (i < d.length)
      {
        localObject = d[i];
        if (localObject != null) {
          paramlxz.b(5, (lyi)localObject);
        }
        i += 1;
      }
    }
    if ((e != null) && (e.length > 0))
    {
      i = j;
      while (i < e.length)
      {
        localObject = e[i];
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
    int m = 0;
    int j = super.b();
    int i = j;
    if (responseHeader != null) {
      i = j + lxz.d(1, responseHeader);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    i = j;
    if (a != null) {
      i = j + lxz.e(3, a.intValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(4, c);
    }
    i = j;
    Object localObject;
    if (d != null)
    {
      i = j;
      if (d.length > 0)
      {
        i = j;
        j = 0;
        while (j < d.length)
        {
          localObject = d[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(5, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    int k = i;
    if (e != null)
    {
      k = i;
      if (e.length > 0)
      {
        j = m;
        for (;;)
        {
          k = i;
          if (j >= e.length) {
            break;
          }
          localObject = e[j];
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
 * Qualified Name:     kah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */