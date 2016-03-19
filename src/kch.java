public final class kch
  extends lyb<kch>
{
  public jzl a = null;
  public jxr b = null;
  public Boolean c = null;
  public Long d = null;
  public String e = null;
  public kdp responseHeader = null;
  
  public kch()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if (d != null) {
      paramlxz.a(2, d.longValue());
    }
    if (e != null) {
      paramlxz.a(3, e);
    }
    if (a != null) {
      paramlxz.b(4, a);
    }
    if (b != null) {
      paramlxz.b(5, b);
    }
    if (c != null) {
      paramlxz.a(6, c.booleanValue());
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
    if (d != null) {
      j = i + lxz.d(2, d.longValue());
    }
    i = j;
    if (e != null) {
      i = j + lxz.b(3, e);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(4, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(5, b);
    }
    j = i;
    if (c != null)
    {
      c.booleanValue();
      j = i + (lxz.f(6) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */