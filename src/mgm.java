public final class mgm
  extends lyb<mgm>
{
  public mgk a = null;
  public mgg b = null;
  
  public mgm()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(2, a);
    }
    if (b != null) {
      paramlxz.b(3, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(2, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(3, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mgm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */