public final class ixe
  extends lyb<ixe>
{
  private static volatile ixe[] h;
  public ixc a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public ixw g = null;
  
  public ixe()
  {
    eD = null;
    eE = -1;
  }
  
  public static ixe[] d()
  {
    if (h == null) {}
    synchronized (lyf.a)
    {
      if (h == null) {
        h = new ixe[0];
      }
      return h;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
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
    if (d != null) {
      paramlxz.a(5, d);
    }
    if (g != null) {
      paramlxz.b(6, g);
    }
    if (f != null) {
      paramlxz.a(7, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
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
    if (d != null) {
      i = j + lxz.b(5, d);
    }
    j = i;
    if (g != null) {
      j = i + lxz.d(6, g);
    }
    i = j;
    if (f != null) {
      i = j + lxz.b(7, f);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     ixe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */