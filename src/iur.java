public final class iur
  extends lyb<iur>
{
  public int a = Integer.MIN_VALUE;
  public String b = null;
  
  public iur()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b);
    }
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(2, a);
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
    if (a != Integer.MIN_VALUE) {
      j = i + lxz.e(2, a);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     iur
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */