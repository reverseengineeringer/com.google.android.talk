public final class mks
  extends lyb<mks>
{
  private static volatile mks[] i;
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public Integer e = null;
  public mjd f = null;
  public String g = null;
  public String h = null;
  
  public mks()
  {
    eD = null;
    eE = -1;
  }
  
  public static mks[] d()
  {
    if (i == null) {}
    synchronized (lyf.a)
    {
      if (i == null) {
        i = new mks[0];
      }
      return i;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (d != null) {
      paramlxz.a(2, d);
    }
    if (e != null) {
      paramlxz.a(3, e.intValue());
    }
    if (f != null) {
      paramlxz.b(4, f);
    }
    if (g != null) {
      paramlxz.a(5, g);
    }
    if (h != null) {
      paramlxz.a(6, h);
    }
    if (b != null) {
      paramlxz.a(7, b);
    }
    if (c != null) {
      paramlxz.a(8, c);
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
    if (d != null) {
      k = j + lxz.b(2, d);
    }
    j = k;
    if (e != null) {
      j = k + lxz.e(3, e.intValue());
    }
    k = j;
    if (f != null) {
      k = j + lxz.d(4, f);
    }
    j = k;
    if (g != null) {
      j = k + lxz.b(5, g);
    }
    k = j;
    if (h != null) {
      k = j + lxz.b(6, h);
    }
    j = k;
    if (b != null) {
      j = k + lxz.b(7, b);
    }
    k = j;
    if (c != null) {
      k = j + lxz.b(8, c);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     mks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */