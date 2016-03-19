public final class kiq
  extends lyb<kiq>
{
  private static volatile kiq[] i;
  public Integer a = null;
  public String b = null;
  public Integer c = null;
  public Integer d = null;
  public Integer e = null;
  public Integer f = null;
  public Integer g = null;
  public kir[] h = kir.d();
  
  public kiq()
  {
    eD = null;
    eE = -1;
  }
  
  public static kiq[] d()
  {
    if (i == null) {}
    synchronized (lyf.a)
    {
      if (i == null) {
        i = new kiq[0];
      }
      return i;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if (f != null) {
      paramlxz.a(6, f.intValue());
    }
    if (g != null) {
      paramlxz.a(7, g.intValue());
    }
    if ((h != null) && (h.length > 0))
    {
      int j = 0;
      while (j < h.length)
      {
        kir localkir = h[j];
        if (localkir != null) {
          paramlxz.b(8, localkir);
        }
        j += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int j = k;
    if (a != null) {
      j = k + lxz.e(1, a.intValue());
    }
    k = j;
    if (b != null) {
      k = j + lxz.b(2, b);
    }
    j = k;
    if (c != null) {
      j = k + lxz.e(3, c.intValue());
    }
    k = j;
    if (d != null) {
      k = j + lxz.e(4, d.intValue());
    }
    j = k;
    if (e != null) {
      j = k + lxz.e(5, e.intValue());
    }
    k = j;
    if (f != null) {
      k = j + lxz.e(6, f.intValue());
    }
    j = k;
    if (g != null) {
      j = k + lxz.e(7, g.intValue());
    }
    k = j;
    if (h != null)
    {
      k = j;
      if (h.length > 0)
      {
        k = 0;
        while (k < h.length)
        {
          kir localkir = h[k];
          int m = j;
          if (localkir != null) {
            m = j + lxz.d(8, localkir);
          }
          k += 1;
          j = m;
        }
        k = j;
      }
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     kiq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */