public final class mff
  extends lyb<mff>
{
  public String a = null;
  public String b = null;
  public Long c = null;
  
  public mff()
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
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c.longValue());
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
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */