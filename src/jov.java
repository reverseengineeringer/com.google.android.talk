public final class jov
  extends lyb<jov>
{
  private static volatile jov[] c;
  public String[] a = lyo.f;
  public jow[] b = jow.d();
  
  public jov()
  {
    eD = null;
    eE = -1;
  }
  
  public static jov[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new jov[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    int i;
    Object localObject;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        localObject = a[i];
        if (localObject != null) {
          paramlxz.a(1, (String)localObject);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = j;
      while (i < b.length)
      {
        localObject = b[i];
        if (localObject != null) {
          paramlxz.b(2, (lyi)localObject);
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
    Object localObject;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      j = 0;
      int m;
      for (k = 0; i < a.length; k = m)
      {
        localObject = a[i];
        int n = j;
        m = k;
        if (localObject != null)
        {
          m = k + 1;
          n = j + lxz.a((String)localObject);
        }
        i += 1;
        j = n;
      }
    }
    for (int i = i2 + j + k * 1;; i = i2)
    {
      k = i;
      if (b != null)
      {
        k = i;
        if (b.length > 0)
        {
          j = i1;
          for (;;)
          {
            k = i;
            if (j >= b.length) {
              break;
            }
            localObject = b[j];
            k = i;
            if (localObject != null) {
              k = i + lxz.d(2, (lyi)localObject);
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
 * Qualified Name:     jov
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */