public final class mfr
  extends lyb<mfr>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  
  public mfr()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b);
    }
    if (e != null) {
      paramlxz.a(3, e);
    }
    if (c != null) {
      paramlxz.a(4, c);
    }
    if (d != null) {
      paramlxz.a(5, d);
    }
    if (a != null) {
      paramlxz.a(6, a);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.b(1, b);
    }
    j = i;
    if (e != null) {
      j = i + lxz.b(3, e);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(4, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(5, d);
    }
    i = j;
    if (a != null) {
      i = j + lxz.b(6, a);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mfr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */