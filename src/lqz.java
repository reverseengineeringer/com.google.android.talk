public final class lqz
  extends lyb<lqz>
{
  public int a = Integer.MIN_VALUE;
  public lfi b = null;
  public int c = Integer.MIN_VALUE;
  
  public lqz()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != Integer.MIN_VALUE) {
      paramlxz.a(4, c);
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
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != Integer.MIN_VALUE) {
      i = j + lxz.e(4, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lqz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */