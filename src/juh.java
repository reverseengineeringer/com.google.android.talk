public final class juh
  extends lyb<juh>
{
  public String a = null;
  public Integer b = null;
  public Integer c = null;
  public Integer d = null;
  
  public juh()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    paramlxz.a(2, b.intValue());
    paramlxz.a(3, c.intValue());
    paramlxz.a(4, d.intValue());
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    return i + lxz.e(2, b.intValue()) + lxz.e(3, c.intValue()) + lxz.e(4, d.intValue());
  }
}

/* Location:
 * Qualified Name:     juh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */