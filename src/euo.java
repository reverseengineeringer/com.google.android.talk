public final class euo
  extends lyi
{
  private static volatile euo[] e;
  public String a = "";
  public String b = "";
  public long c = 0L;
  public boolean d = false;
  
  public euo()
  {
    eE = -1;
  }
  
  public static euo[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new euo[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (!a.equals("")) {
      paramlxz.a(1, a);
    }
    if (!b.equals("")) {
      paramlxz.a(2, b);
    }
    if (c != 0L) {
      paramlxz.b(3, c);
    }
    if (d) {
      paramlxz.a(4, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (!a.equals("")) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (!b.equals("")) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != 0L) {
      i = j + lxz.e(3, c);
    }
    j = i;
    if (d) {
      j = i + (lxz.f(4) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     euo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */