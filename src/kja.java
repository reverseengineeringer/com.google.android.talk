public final class kja
  extends lyb<kja>
{
  private static volatile kja[] i;
  public String a = null;
  public String b = null;
  public String c = null;
  public Integer d = null;
  public kjc e = null;
  public kjb f = null;
  public kje g = null;
  public kjd h = null;
  
  public kja()
  {
    eD = null;
    eE = -1;
  }
  
  public static kja[] d()
  {
    if (i == null) {}
    synchronized (lyf.a)
    {
      if (i == null) {
        i = new kja[0];
      }
      return i;
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
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.b(8, h);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int j = k;
    if (a != null) {
      j = k + lxz.b(1, a);
    }
    k = j;
    if (b != null) {
      k = j + lxz.b(2, b);
    }
    j = k;
    if (c != null) {
      j = k + lxz.b(3, c);
    }
    k = j;
    if (d != null) {
      k = j + lxz.e(4, d.intValue());
    }
    j = k;
    if (e != null) {
      j = k + lxz.d(5, e);
    }
    k = j;
    if (f != null) {
      k = j + lxz.d(6, f);
    }
    j = k;
    if (g != null) {
      j = k + lxz.d(7, g);
    }
    k = j;
    if (h != null) {
      k = j + lxz.d(8, h);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     kja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */