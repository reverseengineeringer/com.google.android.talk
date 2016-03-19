public final class mrs
  extends lyb<mrs>
{
  public mrz a = null;
  public Integer b = null;
  
  public mrs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(2, b.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mrs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */