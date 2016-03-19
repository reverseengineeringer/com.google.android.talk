public final class jmv
  extends lyb<jmv>
{
  public String a = null;
  public jpc b = null;
  public jmw c = null;
  
  public jmv()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(2, a);
    }
    if (b != null) {
      paramlxz.b(3, b);
    }
    if (c != null) {
      paramlxz.b(4, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(2, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(3, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(4, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jmv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */