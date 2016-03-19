public final class kfa
  extends lyb<kfa>
{
  public Integer a = null;
  public kcl b = null;
  public Long c = null;
  public Long d = null;
  public jwx e = null;
  public byte[] f = null;
  public String g = null;
  public String h = null;
  
  public kfa()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (f != null) {
      paramlxz.a(2, f);
    }
    if (c != null) {
      paramlxz.a(3, c.longValue());
    }
    if (b != null) {
      paramlxz.b(4, b);
    }
    if (d != null) {
      paramlxz.a(5, d.longValue());
    }
    if (e != null) {
      paramlxz.b(6, e);
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (f != null) {
      j = i + lxz.b(2, f);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c.longValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(4, b);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(5, d.longValue());
    }
    j = i;
    if (e != null) {
      j = i + lxz.d(6, e);
    }
    i = j;
    if (g != null) {
      i = j + lxz.b(7, g);
    }
    j = i;
    if (h != null) {
      j = i + lxz.b(8, h);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kfa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */