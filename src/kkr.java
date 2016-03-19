public final class kkr
  extends lyb<kkr>
{
  public kdp responseHeader = null;
  
  public kkr()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (responseHeader != null) {
      i = j + lxz.d(1, responseHeader);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kkr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */