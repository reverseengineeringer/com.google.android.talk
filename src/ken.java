public final class ken
  extends lyb<ken>
{
  public kcz a = null;
  public jyy b = null;
  public jyq c = null;
  public kcj d = null;
  public kba e = null;
  public kfd f = null;
  public kfo g = null;
  public kdo requestHeader = null;
  
  public ken()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (a != null) {
      paramlxz.b(2, a);
    }
    if (b != null) {
      paramlxz.b(3, b);
    }
    if (c != null) {
      paramlxz.b(5, c);
    }
    if (d != null) {
      paramlxz.b(6, d);
    }
    if (e != null) {
      paramlxz.b(7, e);
    }
    if (f != null) {
      paramlxz.b(8, f);
    }
    if (g != null) {
      paramlxz.b(9, g);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(2, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(3, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(5, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(6, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.d(7, e);
    }
    i = j;
    if (f != null) {
      i = j + lxz.d(8, f);
    }
    j = i;
    if (g != null) {
      j = i + lxz.d(9, g);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     ken
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */