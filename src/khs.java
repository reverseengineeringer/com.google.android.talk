public final class khs
  extends lyb<khs>
{
  public kii a = null;
  public Integer b = null;
  public kdp responseHeader = null;
  
  public khs()
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
      paramlxz.a(3, b.intValue());
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
    if (b != null) {
      i = j + lxz.e(3, b.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     khs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */