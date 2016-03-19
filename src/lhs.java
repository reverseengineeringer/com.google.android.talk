public final class lhs
  extends lyb<lhs>
{
  public Integer a = null;
  public Integer b = null;
  public lht c = null;
  public String d = null;
  
  public lhs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (c != null) {
      paramlxz.b(2, c);
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (b != null) {
      paramlxz.a(4, b.intValue());
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
    if (c != null) {
      j = i + lxz.d(2, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(3, d);
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(4, b.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lhs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */