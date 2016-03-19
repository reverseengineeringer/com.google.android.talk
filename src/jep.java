public final class jep
  extends lyb<jep>
{
  public Long a = null;
  public Long b = null;
  public String c = null;
  public Integer d = null;
  public jeq e = null;
  
  public jep()
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
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (e != null) {
      paramlxz.b(4, e);
    }
    if (d != null) {
      paramlxz.a(5, d.intValue());
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
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    j = i;
    if (e != null) {
      j = i + lxz.d(4, e);
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(5, d.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jep
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */