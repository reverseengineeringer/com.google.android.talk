public final class mme
  extends lyb<mme>
{
  private static volatile mme[] h;
  public miv a = null;
  public Boolean b = null;
  public String c = null;
  public Integer d = null;
  public mme[] e = d();
  public mmd[] f = mmd.d();
  public Integer g = null;
  
  public mme()
  {
    eD = null;
    eE = -1;
  }
  
  public static mme[] d()
  {
    if (h == null) {}
    synchronized (lyf.a)
    {
      if (h == null) {
        h = new mme[0];
      }
      return h;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (c != null) {
      paramlxz.a(2, c);
    }
    if (d != null) {
      paramlxz.a(3, d.intValue());
    }
    int i;
    Object localObject;
    if ((e != null) && (e.length > 0))
    {
      i = 0;
      while (i < e.length)
      {
        localObject = e[i];
        if (localObject != null) {
          paramlxz.b(4, (lyi)localObject);
        }
        i += 1;
      }
    }
    if ((f != null) && (f.length > 0))
    {
      i = j;
      while (i < f.length)
      {
        localObject = f[i];
        if (localObject != null) {
          paramlxz.b(5, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (g != null) {
      paramlxz.a(6, g.intValue());
    }
    if (b != null) {
      paramlxz.a(7, b.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    int k = i;
    if (c != null) {
      k = i + lxz.b(2, c);
    }
    j = k;
    if (d != null) {
      j = k + lxz.e(3, d.intValue());
    }
    i = j;
    Object localObject;
    if (e != null)
    {
      i = j;
      if (e.length > 0)
      {
        i = j;
        j = 0;
        while (j < e.length)
        {
          localObject = e[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(4, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
      }
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
            j = i + lxz.d(5, (lyi)localObject);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (g != null) {
      i = j + lxz.e(6, g.intValue());
    }
    j = i;
    if (b != null)
    {
      b.booleanValue();
      j = i + (lxz.f(7) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mme
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */