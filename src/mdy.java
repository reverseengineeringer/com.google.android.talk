public final class mdy
  extends lyb<mdy>
{
  public int a = Integer.MIN_VALUE;
  public int b = Integer.MIN_VALUE;
  public int c = Integer.MIN_VALUE;
  public int d = Integer.MIN_VALUE;
  
  public mdy()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
    }
    if (b != Integer.MIN_VALUE) {
      paramlxz.a(2, b);
    }
    if (c != Integer.MIN_VALUE) {
      paramlxz.a(3, c);
    }
    if (d != Integer.MIN_VALUE) {
      paramlxz.a(4, d);
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
    if (b != Integer.MIN_VALUE) {
      j = i + lxz.e(2, b);
    }
    i = j;
    if (c != Integer.MIN_VALUE) {
      i = j + lxz.e(3, c);
    }
    j = i;
    if (d != Integer.MIN_VALUE) {
      j = i + lxz.e(4, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mdy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */