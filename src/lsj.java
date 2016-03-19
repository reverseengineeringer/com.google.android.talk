public final class lsj
  extends lyb<lsj>
{
  public lqs a = null;
  public mcq b = null;
  public ltg c = null;
  public String d = null;
  public String e = null;
  
  public lsj()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.b(4, b);
    }
    if (d != null) {
      paramlxz.a(5, d);
    }
    if (e != null) {
      paramlxz.a(6, e);
    }
    if (c != null) {
      paramlxz.b(7, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(4, b);
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(5, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.b(6, e);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(7, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lsj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */