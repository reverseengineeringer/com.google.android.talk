public final class kdi
  extends lyb<kdi>
{
  public jzl a = null;
  public jxr b = null;
  public Long c = null;
  public String d = null;
  public kdp responseHeader = null;
  
  public kdi()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if (c != null) {
      paramlxz.a(2, c.longValue());
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (a != null) {
      paramlxz.b(4, a);
    }
    if (b != null) {
      paramlxz.b(5, b);
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
    if (c != null) {
      j = i + lxz.d(2, c.longValue());
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(3, d);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(4, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(5, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kdi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */