public final class ldg
  extends lyb<ldg>
{
  public int a = Integer.MIN_VALUE;
  public Integer b = null;
  public ldh[] c = ldh.d();
  public ldi[] d = ldi.d();
  
  public ldg()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
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
    if ((d != null) && (d.length > 0))
    {
      i = j;
      while (i < d.length)
      {
        localObject = d[i];
        if (localObject != null) {
          paramlxz.b(4, (lyi)localObject);
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
    if (a != Integer.MIN_VALUE) {
      i = j + lxz.e(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(2, b.intValue());
    }
    i = j;
    Object localObject;
    if (c != null)
    {
      i = j;
      if (c.length > 0)
      {
        i = j;
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
      }
    }
    int k = i;
    if (d != null)
    {
      k = i;
      if (d.length > 0)
      {
        j = m;
        for (;;)
        {
          k = i;
          if (j >= d.length) {
            break;
          }
          localObject = d[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(4, (lyi)localObject);
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
 * Qualified Name:     ldg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */