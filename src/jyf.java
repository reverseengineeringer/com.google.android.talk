public final class jyf
  extends lyb<jyf>
{
  public Integer a = null;
  public jxr b = null;
  public kbh[] c = kbh.d();
  public Boolean d = null;
  public Long e = null;
  public String f = null;
  public byte[][] g = lyo.g;
  public kdp responseHeader = null;
  
  public jyf()
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
    if (e != null) {
      paramlxz.a(4, e.longValue());
    }
    if (f != null) {
      paramlxz.a(5, f);
    }
    if ((g != null) && (g.length > 0))
    {
      i = j;
      while (i < g.length)
      {
        localObject = g[i];
        if (localObject != null) {
          paramlxz.a(6, (byte[])localObject);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(7, d.booleanValue());
    }
    if (a != null) {
      paramlxz.a(8, a.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = 0;
    int i = super.b();
    int j = i;
    if (responseHeader != null) {
      j = i + lxz.d(1, responseHeader);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(2, b);
    }
    j = i;
    Object localObject;
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
    int k = j;
    if (e != null) {
      k = j + lxz.d(4, e.longValue());
    }
    i = k;
    if (f != null) {
      i = k + lxz.b(5, f);
    }
    j = i;
    if (g != null)
    {
      j = i;
      if (g.length > 0)
      {
        k = 0;
        int m = 0;
        j = n;
        while (j < g.length)
        {
          localObject = g[j];
          int i1 = k;
          n = m;
          if (localObject != null)
          {
            n = m + 1;
            i1 = k + lxz.a((byte[])localObject);
          }
          j += 1;
          k = i1;
          m = n;
        }
        j = i + k + m * 1;
      }
    }
    i = j;
    if (d != null)
    {
      d.booleanValue();
      i = j + (lxz.f(7) + 1);
    }
    j = i;
    if (a != null) {
      j = i + lxz.e(8, a.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jyf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */