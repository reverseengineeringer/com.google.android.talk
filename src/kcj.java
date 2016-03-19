public final class kcj
  extends lyb<kcj>
{
  public String a = null;
  
  public kcj()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
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
    return i;
  }
}

/* Location:
 * Qualified Name:     kcj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */