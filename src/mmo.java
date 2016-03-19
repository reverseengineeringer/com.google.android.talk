public final class mmo
  extends lyb<mmo>
{
  public Integer a = null;
  public Integer b = null;
  
  public mmo()
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
      paramlxz.c(2, b.intValue());
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
      j = i + lxz.f(2, b.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mmo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */