public final class jqe
  extends lyb<jqe>
{
  private static volatile jqe[] e;
  public jpn a = null;
  public Integer b = null;
  public String c = null;
  public Boolean d = null;
  
  public jqe()
  {
    eD = null;
    eE = -1;
  }
  
  public static jqe[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new jqe[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b.intValue());
    }
    if (c != null) {
      paramlxz.a(2, c);
    }
    if (a != null) {
      paramlxz.b(3, a);
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.e(1, b.intValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(2, c);
    }
    i = j;
    if (a != null) {
      i = j + lxz.d(3, a);
    }
    j = i;
    if (d != null)
    {
      d.booleanValue();
      j = i + (lxz.f(4) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jqe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */