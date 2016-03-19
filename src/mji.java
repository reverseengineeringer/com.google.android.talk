public final class mji
  extends lyb<mji>
{
  public String a = null;
  public String b = null;
  public mks c = null;
  public String d = null;
  
  public mji()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (c != null) {
      paramlxz.b(2, c);
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (b != null) {
      paramlxz.a(4, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(2, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(3, d);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(4, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */