public final class kzp
  extends lyb<kzp>
{
  public static final lyc<Object, kzp> a = lyc.a(kzp.class, 33251034L);
  private static final kzp[] e = new kzp[0];
  public long b = 0L;
  public int c = 0;
  public int d = 0;
  
  public kzp()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.b(1, b);
    paramlxz.b(2, c);
    paramlxz.b(3, d);
    super.a(paramlxz);
  }
  
  protected int b()
  {
    return super.b() + lxz.e(1, b) + (lxz.f(2) + 4) + (lxz.f(3) + 4);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof kzp)) {
        return false;
      }
      paramObject = (kzp)paramObject;
      if (b != b) {
        return false;
      }
      if (c != c) {
        return false;
      }
      if (d != d) {
        return false;
      }
      if ((eD != null) && (!eD.b())) {
        break;
      }
    } while ((eD == null) || (eD.b()));
    return false;
    return eD.equals(eD);
  }
  
  public int hashCode()
  {
    int j = getClass().getName().hashCode();
    int k = (int)(b ^ b >>> 32);
    int m = c;
    int n = d;
    if ((eD == null) || (eD.b())) {}
    for (int i = 0;; i = eD.hashCode()) {
      return i + ((((j + 527) * 31 + k) * 31 + m) * 31 + n) * 31;
    }
  }
}

/* Location:
 * Qualified Name:     kzp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */