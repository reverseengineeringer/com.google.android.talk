public final class mey
  extends lyb<mey>
{
  public static final lyc<msu, mey> a = lyc.a(mey.class, 375452826L);
  private static final mey[] d = new mey[0];
  public Integer b = null;
  public mex c = null;
  
  public mey()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b.intValue());
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
    if (b != null) {
      i = j + lxz.e(1, b.intValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(2, c);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */