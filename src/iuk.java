public final class iuk
  extends lyb<iuk>
{
  public Integer a = null;
  public String b = null;
  
  public iuk()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b);
    }
    if (a != null) {
      paramlxz.a(2, a.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.b(1, b);
    }
    j = i;
    if (a != null) {
      j = i + lxz.e(2, a.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     iuk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */