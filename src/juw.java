public final class juw
  extends lyb<juw>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public Integer d = null;
  public Integer e = null;
  
  public juw()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
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
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.intValue());
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(5, e.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     juw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */