public final class liv
  extends lyb<liv>
{
  private static volatile liv[] i;
  public Integer a = null;
  public lku b = null;
  public String c = null;
  public String d = null;
  public Boolean e = null;
  public Integer f = null;
  public lis g = null;
  public String h = null;
  
  public liv()
  {
    eD = null;
    eE = -1;
  }
  
  public static liv[] d()
  {
    if (i == null) {}
    synchronized (lyf.a)
    {
      if (i == null) {
        i = new liv[0];
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
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
    }
    if (f != null) {
      paramlxz.a(6, f.intValue());
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h);
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
      k = j + lxz.d(2, b);
    }
    j = k;
    if (c != null) {
      j = k + lxz.b(3, c);
    }
    k = j;
    if (d != null) {
      k = j + lxz.b(4, d);
    }
    j = k;
    if (e != null)
    {
      e.booleanValue();
      j = k + (lxz.f(5) + 1);
    }
    k = j;
    if (f != null) {
      k = j + lxz.e(6, f.intValue());
    }
    j = k;
    if (g != null) {
      j = k + lxz.d(7, g);
    }
    k = j;
    if (h != null) {
      k = j + lxz.b(8, h);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     liv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */