public final class luc
  extends lyb<luc>
{
  private static volatile luc[] f;
  public Integer a = null;
  public lku b = null;
  public String c = null;
  public String d = null;
  public lku e = null;
  
  public luc()
  {
    eD = null;
    eE = -1;
  }
  
  public static luc[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new luc[0];
      }
      return f;
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
      paramlxz.b(5, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(5, e);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     luc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */