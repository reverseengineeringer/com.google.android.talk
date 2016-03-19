public final class jpm
  extends lyb<jpm>
{
  private static volatile jpm[] e;
  public jpn a = null;
  public jpu b = null;
  public Boolean c = null;
  public jpx d = null;
  
  public jpm()
  {
    eD = null;
    eE = -1;
  }
  
  public static jpm[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new jpm[0];
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
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
    }
    if (d != null) {
      paramlxz.b(5, d);
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
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null)
    {
      c.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(5, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jpm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */