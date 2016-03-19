public final class lnp
  extends lyb<lnp>
{
  public Integer a = null;
  public lfk b = null;
  public Integer c = null;
  
  public lnp()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(4, c.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(4, c.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lnp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */