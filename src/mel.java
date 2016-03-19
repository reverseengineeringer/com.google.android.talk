public final class mel
  extends lyb<mel>
{
  private static volatile mel[] g;
  public Integer a = null;
  public String b = null;
  public mei c = null;
  public mek d = null;
  public men e = null;
  public mej f = null;
  
  public mel()
  {
    eD = null;
    eE = -1;
  }
  
  public static mel[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new mel[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
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
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(5, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.d(6, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */