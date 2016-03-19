public final class mkg
  extends lyb<mkg>
{
  private static volatile mkg[] j;
  public Float a = null;
  public Float b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public String h = null;
  public Boolean i = null;
  
  public mkg()
  {
    eD = null;
    eE = -1;
  }
  
  public static mkg[] d()
  {
    if (j == null) {}
    synchronized (lyf.a)
    {
      if (j == null) {
        j = new mkg[0];
      }
      return j;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.floatValue());
    }
    if (b != null) {
      paramlxz.a(2, b.floatValue());
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.a(7, f);
    }
    if (g != null) {
      paramlxz.a(8, g);
    }
    if (h != null) {
      paramlxz.a(9, h);
    }
    if (i != null) {
      paramlxz.a(10, i.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = super.b();
    int k = m;
    if (a != null)
    {
      a.floatValue();
      k = m + (lxz.f(1) + 4);
    }
    m = k;
    if (b != null)
    {
      b.floatValue();
      m = k + (lxz.f(2) + 4);
    }
    k = m;
    if (c != null) {
      k = m + lxz.b(3, c);
    }
    m = k;
    if (d != null) {
      m = k + lxz.b(4, d);
    }
    k = m;
    if (e != null) {
      k = m + lxz.b(5, e);
    }
    m = k;
    if (f != null) {
      m = k + lxz.b(7, f);
    }
    k = m;
    if (g != null) {
      k = m + lxz.b(8, g);
    }
    m = k;
    if (h != null) {
      m = k + lxz.b(9, h);
    }
    k = m;
    if (i != null)
    {
      i.booleanValue();
      k = m + (lxz.f(10) + 1);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     mkg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */