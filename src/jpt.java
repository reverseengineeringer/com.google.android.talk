public final class jpt
  extends lyb<jpt>
{
  private static volatile jpt[] f;
  public jpp a = null;
  public jpp[] b = jpp.d();
  public jpq c = null;
  public jqe[] d = jqe.d();
  public jpv e = null;
  
  public jpt()
  {
    eD = null;
    eE = -1;
  }
  
  public static jpt[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new jpt[0];
      }
      return f;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.b(1, a);
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
          paramlxz.b(2, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(3, c);
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
    if (e != null) {
      paramlxz.b(5, e);
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
    j = i;
    Object localObject;
    int k;
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
            k = i + lxz.d(2, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    j = i;
    if (d != null)
    {
      j = i;
      if (d.length > 0)
      {
        k = m;
        for (;;)
        {
          j = i;
          if (k >= d.length) {
            break;
          }
          localObject = d[k];
          j = i;
          if (localObject != null) {
            j = i + lxz.d(4, (lyi)localObject);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(5, e);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jpt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */