public final class kme
  extends lyb<kme>
{
  private static volatile kme[] e;
  public Long a = null;
  public Boolean b = null;
  public String c = null;
  public String d = null;
  
  public kme()
  {
    eD = null;
    eE = -1;
  }
  
  public static kme[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new kme[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    if (b != null) {
      paramlxz.a(2, b.booleanValue());
    }
    if (c != null) {
      paramlxz.a(5, c);
    }
    if (d != null) {
      paramlxz.a(6, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.longValue());
    }
    j = i;
    if (b != null)
    {
      b.booleanValue();
      j = i + (lxz.f(2) + 1);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(5, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(6, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kme
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */