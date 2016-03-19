public final class jzs
  extends lyb<jzs>
{
  public jzt a = null;
  public jzu b = null;
  
  public jzs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if (a != null) {
      paramlxz.b(2, a);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.d(1, b);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(2, a);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jzs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */