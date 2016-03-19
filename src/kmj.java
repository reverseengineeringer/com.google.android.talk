public final class kmj
  extends lyb<kmj>
{
  public static final lyc<kmi, kmj> a = lyc.a(kmj.class, 784137682L);
  private static final kmj[] d = new kmj[0];
  public lyt b = null;
  public String c = null;
  
  public kmj()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if (c != null) {
      paramlxz.a(2, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.d(1, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(2, c);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kmj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */