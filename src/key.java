public final class key
  extends lyb<key>
{
  public kcu a = null;
  public Boolean b = null;
  public Integer c = null;
  public kdp responseHeader = null;
  
  public key()
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
      paramlxz.b(2, a);
    }
    if (b != null) {
      paramlxz.a(3, b.booleanValue());
    }
    if (c != null) {
      paramlxz.c(4, c.intValue());
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
      j = i + lxz.d(2, a);
    }
    i = j;
    if (b != null)
    {
      b.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    j = i;
    if (c != null) {
      j = i + lxz.f(4, c.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     key
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */