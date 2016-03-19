public final class izi
  extends lyb<izi>
{
  public izf[] a = izf.d();
  public izf[] b = izf.d();
  public String c = null;
  public String d = null;
  public izj[] e = izj.d();
  public izh f = null;
  public izg g = null;
  public Boolean h = null;
  
  public izi()
  {
    eD = null;
    eE = -1;
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
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if ((e != null) && (e.length > 0))
    {
      i = j;
      while (i < e.length)
      {
        localObject = e[i];
        if (localObject != null) {
          paramlxz.b(5, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h.booleanValue());
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
    j = i;
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
    int k = j;
    if (c != null) {
      k = j + lxz.b(3, c);
    }
    i = k;
    if (d != null) {
      i = k + lxz.b(4, d);
    }
    j = i;
    if (e != null)
    {
      j = i;
      if (e.length > 0)
      {
        k = m;
        for (;;)
        {
          j = i;
          if (k >= e.length) {
            break;
          }
          localObject = e[k];
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
    if (f != null) {
      i = j + lxz.d(6, f);
    }
    j = i;
    if (g != null) {
      j = i + lxz.d(7, g);
    }
    i = j;
    if (h != null)
    {
      h.booleanValue();
      i = j + (lxz.f(8) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     izi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */