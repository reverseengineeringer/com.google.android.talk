public final class mgd
  extends lyb<mgd>
{
  private static volatile mgd[] g;
  public String a = null;
  public Boolean b = null;
  public Boolean c = null;
  public Boolean d = null;
  public mge e = null;
  public mgg f = null;
  
  public mgd()
  {
    eD = null;
    eE = -1;
  }
  
  public static mgd[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new mgd[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(8, b.booleanValue());
    }
    if (c != null) {
      paramlxz.a(10, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(12, d.booleanValue());
    }
    if (e != null) {
      paramlxz.b(13, e);
    }
    if (f != null) {
      paramlxz.b(101, f);
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
    if (b != null)
    {
      b.booleanValue();
      j = i + (lxz.f(8) + 1);
    }
    i = j;
    if (c != null)
    {
      c.booleanValue();
      i = j + (lxz.f(10) + 1);
    }
    j = i;
    if (d != null)
    {
      d.booleanValue();
      j = i + (lxz.f(12) + 1);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(13, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.d(101, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mgd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */