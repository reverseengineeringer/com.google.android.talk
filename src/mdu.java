public final class mdu
  extends lyb<mdu>
{
  private static volatile mdu[] d;
  public String a = null;
  public String[] b = lyo.f;
  public mdt[] c = mdt.d();
  
  public mdu()
  {
    eD = null;
    eE = -1;
  }
  
  public static mdu[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new mdu[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    paramlxz.a(1, a);
    int i;
    Object localObject;
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        localObject = b[i];
        if (localObject != null) {
          paramlxz.a(2, (String)localObject);
        }
        i += 1;
      }
    }
    if ((c != null) && (c.length > 0))
    {
      i = j;
      while (i < c.length)
      {
        localObject = c[i];
        if (localObject != null) {
          paramlxz.b(3, (lyi)localObject);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i1 = 0;
    int i2 = super.b() + lxz.b(1, a);
    int j;
    int k;
    Object localObject;
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      j = 0;
      int m;
      for (k = 0; i < b.length; k = m)
      {
        localObject = b[i];
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
      if (c != null)
      {
        k = i;
        if (c.length > 0)
        {
          j = i1;
          for (;;)
          {
            k = i;
            if (j >= c.length) {
              break;
            }
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
      return k;
    }
  }
}

/* Location:
 * Qualified Name:     mdu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */