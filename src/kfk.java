public final class kfk
  extends lyb<kfk>
{
  public Boolean a = null;
  public Long b = null;
  public jyc[] c = jyc.d();
  public Boolean d = null;
  public kbc e = null;
  public jzh[] f = jzh.d();
  public jxc g = null;
  public kdp responseHeader = null;
  
  public kfk()
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
      paramlxz.a(2, b.longValue());
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
          paramlxz.b(3, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (a != null) {
      paramlxz.a(6, a.booleanValue());
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
    if (g != null) {
      paramlxz.b(8, g);
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
    if (b != null) {
      i = j + lxz.d(2, b.longValue());
    }
    j = i;
    Object localObject;
    int k;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        j = 0;
        while (j < c.length)
        {
          localObject = c[j];
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
    i = j;
    if (d != null)
    {
      d.booleanValue();
      i = j + (lxz.f(4) + 1);
    }
    j = i;
    if (e != null) {
      j = i + lxz.d(5, e);
    }
    i = j;
    if (a != null)
    {
      a.booleanValue();
      i = j + (lxz.f(6) + 1);
    }
    j = i;
    if (f != null)
    {
      j = i;
      if (f.length > 0)
      {
        k = m;
        for (;;)
        {
          j = i;
          if (k >= f.length) {
            break;
          }
          localObject = f[k];
          j = i;
          if (localObject != null) {
            j = i + lxz.d(7, (lyi)localObject);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (g != null) {
      i = j + lxz.d(8, g);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kfk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */