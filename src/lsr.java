public final class lsr
  extends lyb<lsr>
{
  public lst a = null;
  
  public lsr()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(2, a);
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
    return i;
  }
}

/* Location:
 * Qualified Name:     lsr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */