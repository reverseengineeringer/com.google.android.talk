public final class mic
  extends lyb<mic>
{
  public mib a = null;
  public mih b = null;
  public int c = Integer.MIN_VALUE;
  
  public mic()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != Integer.MIN_VALUE) {
      paramlxz.a(3, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != Integer.MIN_VALUE) {
      i = j + lxz.e(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */