public final class mbp
  extends lyb<mbp>
{
  public String a = null;
  public String b = null;
  
  public mbp()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    if (b != null) {
      paramlxz.a(2, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(1, a);
    int i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mbp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */