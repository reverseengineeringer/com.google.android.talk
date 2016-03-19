public final class lgz
  extends lyb<lgz>
{
  public int a = Integer.MIN_VALUE;
  public int b = Integer.MIN_VALUE;
  public lhb c = null;
  public String d = null;
  
  public lgz()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
    }
    if (c != null) {
      paramlxz.b(2, c);
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (b != Integer.MIN_VALUE) {
      paramlxz.a(4, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != Integer.MIN_VALUE) {
      i = j + lxz.e(1, a);
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
    if (b != Integer.MIN_VALUE) {
      j = i + lxz.e(4, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lgz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */