public final class jxc
  extends lyb<jxc>
{
  public String a = null;
  public Long b = null;
  public Long c = null;
  public Long d = null;
  
  public jxc()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.longValue());
    }
    if (c != null) {
      paramlxz.a(3, c.longValue());
    }
    if (d != null) {
      paramlxz.a(4, d.longValue());
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
      j = i + lxz.d(2, b.longValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c.longValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jxc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */