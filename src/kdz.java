public final class kdz
  extends lyb<kdz>
{
  public Integer a = null;
  public kdp responseHeader = null;
  
  public kdz()
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
      paramlxz.a(2, a.intValue());
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
      j = i + lxz.e(2, a.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kdz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */