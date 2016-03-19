public final class jqa
  extends lyb<jqa>
{
  public String a = null;
  public Integer b = null;
  public Integer c = null;
  
  public jqa()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(1, a);
    int i = j;
    if (b != null) {
      i = j + lxz.e(2, b.intValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.e(3, c.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jqa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */