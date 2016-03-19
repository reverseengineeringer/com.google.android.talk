public final class kjn
  extends lyb<kjn>
{
  public int[] a = lyo.a;
  public kjo[] b = kjo.d();
  
  public kjn()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    int i;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        paramlxz.c(1, a[i]);
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = j;
      while (i < b.length)
      {
        kjo localkjo = b[i];
        if (localkjo != null) {
          paramlxz.b(2, localkjo);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int k = super.b();
    int j;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      j = 0;
      while (i < a.length)
      {
        j += lxz.h(a[i]);
        i += 1;
      }
    }
    for (int i = k + j + a.length * 1;; i = k)
    {
      k = i;
      if (b != null)
      {
        k = i;
        if (b.length > 0)
        {
          j = m;
          for (;;)
          {
            k = i;
            if (j >= b.length) {
              break;
            }
            kjo localkjo = b[j];
            k = i;
            if (localkjo != null) {
              k = i + lxz.d(2, localkjo);
            }
            j += 1;
            i = k;
          }
        }
      }
      return k;
    }
  }
}

/* Location:
 * Qualified Name:     kjn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */