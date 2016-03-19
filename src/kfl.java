public final class kfl
  extends lyb<kfl>
{
  public Integer a = null;
  public Long b = null;
  
  public kfl()
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
      paramlxz.a(2, b.longValue());
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
      j = i + lxz.d(2, b.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kfl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */