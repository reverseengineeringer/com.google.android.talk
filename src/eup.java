public final class eup
  extends lyi
{
  public String a = "";
  public String b = "";
  public String c = "";
  public String d = "";
  public String e = "";
  public String f = "";
  public String g = "";
  public String h = "";
  public String i = "";
  public int j = 0;
  public int k = 0;
  public String l = "";
  
  public eup()
  {
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (!a.equals("")) {
      paramlxz.a(1, a);
    }
    if (!b.equals("")) {
      paramlxz.a(2, b);
    }
    if (!c.equals("")) {
      paramlxz.a(3, c);
    }
    if (!d.equals("")) {
      paramlxz.a(4, d);
    }
    if (!e.equals("")) {
      paramlxz.a(5, e);
    }
    if (!f.equals("")) {
      paramlxz.a(6, f);
    }
    if (!g.equals("")) {
      paramlxz.a(7, g);
    }
    if (!h.equals("")) {
      paramlxz.a(8, h);
    }
    if (!i.equals("")) {
      paramlxz.a(9, i);
    }
    if (j != 0) {
      paramlxz.a(10, j);
    }
    if (k != 0) {
      paramlxz.a(11, k);
    }
    if (!l.equals("")) {
      paramlxz.a(12, l);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = super.b();
    int m = n;
    if (!a.equals("")) {
      m = n + lxz.b(1, a);
    }
    n = m;
    if (!b.equals("")) {
      n = m + lxz.b(2, b);
    }
    m = n;
    if (!c.equals("")) {
      m = n + lxz.b(3, c);
    }
    n = m;
    if (!d.equals("")) {
      n = m + lxz.b(4, d);
    }
    m = n;
    if (!e.equals("")) {
      m = n + lxz.b(5, e);
    }
    n = m;
    if (!f.equals("")) {
      n = m + lxz.b(6, f);
    }
    m = n;
    if (!g.equals("")) {
      m = n + lxz.b(7, g);
    }
    n = m;
    if (!h.equals("")) {
      n = m + lxz.b(8, h);
    }
    m = n;
    if (!i.equals("")) {
      m = n + lxz.b(9, i);
    }
    n = m;
    if (j != 0) {
      n = m + lxz.e(10, j);
    }
    m = n;
    if (k != 0) {
      m = n + lxz.e(11, k);
    }
    n = m;
    if (!l.equals("")) {
      n = m + lxz.b(12, l);
    }
    return n;
  }
}

/* Location:
 * Qualified Name:     eup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */