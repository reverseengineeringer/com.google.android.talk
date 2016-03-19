public final class kmc
  extends lyb<kmc>
{
  public String a = null;
  public Long b = null;
  
  public kmc()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(7, b.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(7, b.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kmc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */