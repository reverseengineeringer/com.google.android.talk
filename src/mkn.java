public final class mkn
  extends lyb<mkn>
{
  public mkl a = null;
  public mkl b = null;
  public mkt c = null;
  public mkt d = null;
  public mkk e = null;
  
  public mkn()
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
      paramlxz.b(2, b);
    }
    if (d != null) {
      paramlxz.b(3, d);
    }
    if (e != null) {
      paramlxz.b(4, e);
    }
    if (c != null) {
      paramlxz.b(5, c);
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
      j = i + lxz.d(2, b);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(3, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.d(4, e);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(5, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mkn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */