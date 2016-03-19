public final class kdg
  extends lyb<kdg>
{
  public Integer a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public Integer e = null;
  public kdp responseHeader = null;
  
  public kdg()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if (a != null) {
      paramlxz.a(2, a.intValue());
    }
    if (b != null) {
      paramlxz.a(3, b);
    }
    if (c != null) {
      paramlxz.a(5, c);
    }
    if (e != null) {
      paramlxz.a(6, e.intValue());
    }
    if (d != null) {
      paramlxz.a(7, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (responseHeader != null) {
      i = j + lxz.d(1, responseHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.e(2, a.intValue());
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(3, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(5, c);
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(6, e.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(7, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kdg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */