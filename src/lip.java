public final class lip
  extends lyb<lip>
{
  private static volatile lip[] e;
  public lmh a = null;
  public Float b = null;
  public String c = null;
  public lqg d = null;
  
  public lip()
  {
    eD = null;
    eE = -1;
  }
  
  public static lip[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new lip[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.floatValue());
    }
    if (d != null) {
      paramlxz.b(3, d);
    }
    if (c != null) {
      paramlxz.a(4, c);
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
    if (b != null)
    {
      b.floatValue();
      j = i + (lxz.f(2) + 4);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(3, d);
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(4, c);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */