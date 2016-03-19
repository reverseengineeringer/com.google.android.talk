public final class jma
  extends lyb<jma>
{
  public Integer a = null;
  public Long b = null;
  public Long c = null;
  public lzu[] d = lzu.b;
  public Integer e = null;
  public mac[] f = mac.d();
  
  public jma()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.b(2, b.longValue());
    }
    if (c != null) {
      paramlxz.b(3, c.longValue());
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
          paramlxz.b(4, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
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
    int m = 0;
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(2, b.longValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.longValue());
    }
    j = i;
    Object localObject;
    if (d != null)
    {
      j = i;
      if (d.length > 0)
      {
        j = 0;
        while (j < d.length)
        {
          localObject = d[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(4, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(5, e.intValue());
    }
    int k = i;
    if (f != null)
    {
      k = i;
      if (f.length > 0)
      {
        j = m;
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
 * Qualified Name:     jma
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */