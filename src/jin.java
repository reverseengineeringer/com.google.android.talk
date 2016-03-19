public final class jin
  extends lyb<jin>
{
  public jim a = null;
  public int b = Integer.MIN_VALUE;
  public jio c = null;
  
  public jin()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != Integer.MIN_VALUE) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
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
    if (b != Integer.MIN_VALUE) {
      j = i + lxz.e(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */