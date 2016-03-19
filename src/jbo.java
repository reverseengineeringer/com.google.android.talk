public final class jbo
  extends lyb<jbo>
{
  public jbn a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public Boolean e = null;
  public Long f = null;
  
  public jbo()
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
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
    }
    if (f != null) {
      paramlxz.b(6, f.longValue());
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
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(4, d);
    }
    i = j;
    if (e != null)
    {
      e.booleanValue();
      i = j + (lxz.f(5) + 1);
    }
    j = i;
    if (f != null) {
      j = i + lxz.e(6, f.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jbo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */