public final class kip
  extends lyb<kip>
{
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  
  public kip()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.c(1, a.intValue());
    }
    if (b != null) {
      paramlxz.c(2, b.intValue());
    }
    if (c != null) {
      paramlxz.c(3, c.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.f(1, a.intValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.f(2, b.intValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.f(3, c.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */