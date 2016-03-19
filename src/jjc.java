public final class jjc
  extends lyb<jjc>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public int e = Integer.MIN_VALUE;
  public int f = Integer.MIN_VALUE;
  
  public jjc()
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
      paramlxz.a(4, d);
    }
    if (e != Integer.MIN_VALUE) {
      paramlxz.a(5, e);
    }
    if (f != Integer.MIN_VALUE) {
      paramlxz.a(6, f);
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
      j = i + lxz.b(4, d);
    }
    i = j;
    if (e != Integer.MIN_VALUE) {
      i = j + lxz.e(5, e);
    }
    j = i;
    if (f != Integer.MIN_VALUE) {
      j = i + lxz.e(6, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jjc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */