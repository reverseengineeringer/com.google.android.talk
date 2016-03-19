public final class lna
  extends lyb<lna>
{
  public Boolean a = null;
  public ljq b = null;
  public ljg c = null;
  public ljh d = null;
  public lji e = null;
  public ljo f = null;
  public lmy g = null;
  public lmu h = null;
  public lnj i = null;
  public lnb j = null;
  public lmz k = null;
  public lnc l = null;
  public lng m = null;
  
  public lna()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if (a != null) {
      paramlxz.a(2, a.booleanValue());
    }
    if (c != null) {
      paramlxz.b(3, c);
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
      paramlxz.b(15, h);
    }
    if (i != null) {
      paramlxz.b(16, i);
    }
    if (j != null) {
      paramlxz.b(17, j);
    }
    if (k != null) {
      paramlxz.b(19, k);
    }
    if (l != null) {
      paramlxz.b(20, l);
    }
    if (m != null) {
      paramlxz.b(21, m);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i1 = super.b();
    int n = i1;
    if (b != null) {
      n = i1 + lxz.d(1, b);
    }
    i1 = n;
    if (a != null)
    {
      a.booleanValue();
      i1 = n + (lxz.f(2) + 1);
    }
    n = i1;
    if (c != null) {
      n = i1 + lxz.d(3, c);
    }
    i1 = n;
    if (d != null) {
      i1 = n + lxz.d(4, d);
    }
    n = i1;
    if (e != null) {
      n = i1 + lxz.d(5, e);
    }
    i1 = n;
    if (f != null) {
      i1 = n + lxz.d(6, f);
    }
    n = i1;
    if (g != null) {
      n = i1 + lxz.d(7, g);
    }
    i1 = n;
    if (h != null) {
      i1 = n + lxz.d(15, h);
    }
    n = i1;
    if (i != null) {
      n = i1 + lxz.d(16, i);
    }
    i1 = n;
    if (j != null) {
      i1 = n + lxz.d(17, j);
    }
    n = i1;
    if (k != null) {
      n = i1 + lxz.d(19, k);
    }
    i1 = n;
    if (l != null) {
      i1 = n + lxz.d(20, l);
    }
    n = i1;
    if (m != null) {
      n = i1 + lxz.d(21, m);
    }
    return n;
  }
}

/* Location:
 * Qualified Name:     lna
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */