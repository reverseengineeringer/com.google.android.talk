public final class kmi
  extends lyb<kmi>
{
  public static final lyc<mel, kmi> a = lyc.a(kmi.class, 777532490L);
  private static final kmi[] d = new kmi[0];
  public Integer b = null;
  public Integer c = null;
  
  public kmi()
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
      paramlxz.a(2, c.intValue());
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
      j = i + lxz.e(2, c.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kmi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */