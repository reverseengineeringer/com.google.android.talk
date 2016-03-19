public final class jwb
  extends lyb<jwb>
{
  private static volatile jwb[] g;
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  public String d = null;
  public byte[] e = null;
  public Integer f = null;
  
  public jwb()
  {
    eD = null;
    eE = -1;
  }
  
  public static jwb[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new jwb[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.c(1, a.intValue());
    }
    if (b != null) {
      paramlxz.c(2, b.intValue());
    }
    if (c != null) {
      paramlxz.c(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.c(6, f.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.f(1, a.intValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.f(2, b.intValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.f(3, c.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.b(5, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.f(6, f.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jwb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */