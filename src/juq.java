public final class juq
  extends lyb<juq>
{
  public Integer a = null;
  public jvb b = null;
  public juz c = null;
  public String d = null;
  public String e = null;
  public Integer f = null;
  public Long g = null;
  public String h = null;
  
  public juq()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (e != null) {
      paramlxz.a(4, e);
    }
    if (f != null) {
      paramlxz.a(5, f.intValue());
    }
    if (c != null) {
      paramlxz.b(6, c);
    }
    if (g != null) {
      paramlxz.b(7, g.longValue());
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
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(3, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.b(4, e);
    }
    i = j;
    if (f != null) {
      i = j + lxz.e(5, f.intValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(6, c);
    }
    i = j;
    if (g != null) {
      i = j + lxz.e(7, g.longValue());
    }
    j = i;
    if (h != null) {
      j = i + lxz.b(8, h);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     juq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */