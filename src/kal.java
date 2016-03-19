public final class kal
  extends lyb<kal>
{
  public kdo requestHeader = null;
  
  public kal()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */