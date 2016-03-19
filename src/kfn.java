public final class kfn
  extends lyb<kfn>
{
  public Long a = null;
  public jyc[] b = jyc.d();
  public Long c = null;
  public kbc d = null;
  public jzh[] e = jzh.d();
  public jxc f = null;
  public kdp responseHeader = null;
  
  public kfn()
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
    if (a != null) {
      paramlxz.a(2, a.longValue());
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
          paramlxz.b(3, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(4, c.longValue());
    }
    if (d != null) {
      paramlxz.b(5, d);
    }
    if ((e != null) && (e.length > 0))
    {
      i = j;
      while (i < e.length)
      {
        localObject = e[i];
        if (localObject != null) {
          paramlxz.b(6, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (f != null) {
      paramlxz.b(7, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int i = super.b();
    int j = i;
    if (responseHeader != null) {
      j = i + lxz.d(1, responseHeader);
    }
    i = j;
    if (a != null) {
      i = j + lxz.d(2, a.longValue());
    }
    j = i;
    Object localObject;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          localObject = b[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(3, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    int k = j;
    if (c != null) {
      k = j + lxz.d(4, c.longValue());
    }
    i = k;
    if (d != null) {
      i = k + lxz.d(5, d);
    }
    j = i;
    if (e != null)
    {
      j = i;
      if (e.length > 0)
      {
        k = m;
        for (;;)
        {
          j = i;
          if (k >= e.length) {
            break;
          }
          localObject = e[k];
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
    if (f != null) {
      i = j + lxz.d(7, f);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kfn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */