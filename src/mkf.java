public final class mkf
  extends lyb<mkf>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public Long e = null;
  public String f = null;
  public String g = null;
  
  public mkf()
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
    if (e != null) {
      paramlxz.b(4, e.longValue());
    }
    if (d != null) {
      paramlxz.a(5, d);
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g);
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
    if (e != null) {
      j = i + lxz.e(4, e.longValue());
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(5, d);
    }
    j = i;
    if (f != null) {
      j = i + lxz.b(6, f);
    }
    i = j;
    if (g != null) {
      i = j + lxz.b(7, g);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mkf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */