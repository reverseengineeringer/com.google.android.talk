public final class jcm
  extends lyb<jcm>
{
  private static volatile jcm[] e;
  public jbn a = null;
  public jas b = null;
  public String c = null;
  public Integer d = null;
  
  public jcm()
  {
    eD = null;
    eE = -1;
  }
  
  public static jcm[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new jcm[0];
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
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
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
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jcm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */