public final class jih
  extends lyb<jih>
{
  public String a = null;
  public Integer b = null;
  public Integer c = null;
  public jid d = null;
  public jif e = null;
  public jik f = null;
  public jie g = null;
  public Integer h = null;
  
  public jih()
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
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h.intValue());
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
      j = i + lxz.e(2, b.intValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(5, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.d(6, f);
    }
    i = j;
    if (g != null) {
      i = j + lxz.d(7, g);
    }
    j = i;
    if (h != null) {
      j = i + lxz.e(8, h.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jih
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */