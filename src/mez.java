public final class mez
  extends lyb<mez>
{
  public static final lyc<Object, mez> a = lyc.a(mez.class, 375452826L);
  private static final mez[] d = new mez[0];
  public int b = Integer.MIN_VALUE;
  public mew c = null;
  
  public mez()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != Integer.MIN_VALUE) {
      paramlxz.a(1, b);
    }
    if (c != null) {
      paramlxz.b(2, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != Integer.MIN_VALUE) {
      i = j + lxz.e(1, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(2, c);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */