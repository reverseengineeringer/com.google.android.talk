public final class lbu
  extends lyb<lbu>
{
  public static final lyc<msu, lbu> a = lyc.a(lbu.class, 106066090L);
  private static final lbu[] e = new lbu[0];
  public Long b = null;
  public Long c = null;
  public msu d = null;
  
  public lbu()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.c(1, b.longValue());
    paramlxz.c(2, c.longValue());
    if (d != null) {
      paramlxz.b(3, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    b.longValue();
    int j = lxz.f(1);
    c.longValue();
    j = i + (j + 8) + (lxz.f(2) + 8);
    i = j;
    if (d != null) {
      i = j + lxz.d(3, d);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lbu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */