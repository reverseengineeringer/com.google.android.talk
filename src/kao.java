public final class kao
  extends lyb<kao>
{
  public String a = null;
  public kdp responseHeader = null;
  
  public kao()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if (a != null) {
      paramlxz.a(2, a);
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
    j = i;
    if (a != null) {
      j = i + lxz.b(2, a);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */