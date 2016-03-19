public final class mmr
  extends lyb<mmr>
{
  private static volatile mmr[] g;
  public String a = null;
  public String b = null;
  public Boolean c = null;
  public Boolean d = null;
  public Integer e = null;
  public Long f = null;
  
  public mmr()
  {
    eD = null;
    eE = -1;
  }
  
  public static mmr[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new mmr[0];
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
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if (f != null) {
      paramlxz.b(6, f.longValue());
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
    if (c != null)
    {
      c.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    j = i;
    if (d != null)
    {
      d.booleanValue();
      j = i + (lxz.f(4) + 1);
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(5, e.intValue());
    }
    j = i;
    if (f != null) {
      j = i + lxz.e(6, f.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mmr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */