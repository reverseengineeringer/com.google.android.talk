public final class kbi
  extends lyb<kbi>
{
  private static volatile kbi[] h;
  public String a = null;
  public String b = null;
  public String c = null;
  public lcf d = null;
  public String e = null;
  public kbj[] f = kbj.d();
  public byte[] g = null;
  
  public kbi()
  {
    eD = null;
    eE = -1;
  }
  
  public static kbi[] d()
  {
    if (h == null) {}
    synchronized (lyf.a)
    {
      if (h == null) {
        h = new kbi[0];
      }
      return h;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (e != null) {
      paramlxz.a(4, e);
    }
    if (g != null) {
      paramlxz.a(5, g);
    }
    if ((f != null) && (f.length > 0))
    {
      int i = 0;
      while (i < f.length)
      {
        kbj localkbj = f[i];
        if (localkbj != null) {
          paramlxz.b(6, localkbj);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.b(7, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    j = i;
    if (e != null) {
      j = i + lxz.b(4, e);
    }
    i = j;
    if (g != null) {
      i = j + lxz.b(5, g);
    }
    j = i;
    if (f != null)
    {
      j = i;
      if (f.length > 0)
      {
        j = 0;
        while (j < f.length)
        {
          kbj localkbj = f[j];
          int k = i;
          if (localkbj != null) {
            k = i + lxz.d(6, localkbj);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(7, d);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kbi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */