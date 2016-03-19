public final class mky
  extends lyb<mky>
{
  private static volatile mky[] f;
  public String a = null;
  public String b = null;
  public mks c = null;
  public Integer d = null;
  public Integer e = null;
  
  public mky()
  {
    eD = null;
    eE = -1;
  }
  
  public static mky[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new mky[0];
      }
      return f;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
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
      j = i + lxz.e(4, d.intValue());
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(5, e.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */