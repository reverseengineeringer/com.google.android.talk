public final class lja
  extends lyb<lja>
{
  public Long a = null;
  public Long b = null;
  public Long c = null;
  public String d = null;
  public Integer e = null;
  
  public lja()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    if (b != null) {
      paramlxz.b(2, b.longValue());
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (e != null) {
      paramlxz.a(4, e.intValue());
    }
    if (c != null) {
      paramlxz.b(5, c.longValue());
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
    if (b != null) {
      j = i + lxz.e(2, b.longValue());
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(3, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.e(4, e.intValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(5, c.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */