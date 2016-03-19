public final class kgk
  extends lyb<kgk>
{
  public String a = null;
  
  public kgk()
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
 * Qualified Name:     kgk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */