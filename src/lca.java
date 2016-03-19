public final class lca
  extends lyb<lca>
{
  public Integer a = null;
  public String b = null;
  public Long c = null;
  public Long d = null;
  
  public lca()
  {
    eD = null;
    eE = -1;
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
      paramlxz.b(3, c.longValue());
    }
    if (d != null) {
      paramlxz.b(4, d.longValue());
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
      i = j + lxz.e(3, c.longValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */