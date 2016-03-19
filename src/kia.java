public final class kia
  extends lyb<kia>
{
  public String a = null;
  public Integer b = null;
  public String c = null;
  public kii d = null;
  public kdp responseHeader = null;
  
  public kia()
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
    if (b != null) {
      paramlxz.a(3, b.intValue());
    }
    if (c != null) {
      paramlxz.a(4, c);
    }
    if (d != null) {
      paramlxz.b(5, d);
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
    i = j;
    if (b != null) {
      i = j + lxz.e(3, b.intValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(4, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(5, d);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */