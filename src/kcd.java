public final class kcd
  extends lyb<kcd>
{
  private static volatile kcd[] c;
  public mel[] a = mel.d();
  public med[] b = med.d();
  
  public kcd()
  {
    eD = null;
    eE = -1;
  }
  
  public static kcd[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new kcd[0];
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
          paramlxz.b(1, (lyi)localObject);
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
    int m = 0;
    int j = super.b();
    int i = j;
    Object localObject;
    if (a != null)
    {
      i = j;
      if (a.length > 0)
      {
        i = j;
        j = 0;
        while (j < a.length)
        {
          localObject = a[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(1, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    int k = i;
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

/* Location:
 * Qualified Name:     kcd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */