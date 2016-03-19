public final class maa
  extends lyb<maa>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public jlb e = null;
  public meo f = null;
  public String g = null;
  public man h = null;
  public lzz i = null;
  public Boolean j = null;
  public mam k = null;
  public String l = null;
  public String m = null;
  public String n = null;
  
  public maa()
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
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (e != null) {
      paramlxz.b(4, e);
    }
    if (g != null) {
      paramlxz.a(5, g);
    }
    if (c != null) {
      paramlxz.a(6, c);
    }
    if (i != null) {
      paramlxz.b(7, i);
    }
    if (j != null) {
      paramlxz.a(8, j.booleanValue());
    }
    if (k != null) {
      paramlxz.b(9, k);
    }
    if (l != null) {
      paramlxz.a(10, l);
    }
    if (m != null) {
      paramlxz.a(11, m);
    }
    if (n != null) {
      paramlxz.a(12, n);
    }
    if (h != null) {
      paramlxz.b(13, h);
    }
    if (f != null) {
      paramlxz.b(14, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.b(1, a);
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.b(2, b);
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.b(3, d);
    }
    i2 = i1;
    if (e != null) {
      i2 = i1 + lxz.d(4, e);
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.b(5, g);
    }
    i2 = i1;
    if (c != null) {
      i2 = i1 + lxz.b(6, c);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.d(7, i);
    }
    i2 = i1;
    if (j != null)
    {
      j.booleanValue();
      i2 = i1 + (lxz.f(8) + 1);
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.d(9, k);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.b(10, l);
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.b(11, m);
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.b(12, n);
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.d(13, h);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.d(14, f);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     maa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */