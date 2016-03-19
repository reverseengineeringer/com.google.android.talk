public final class mkz
  extends lyb<mkz>
{
  public Integer a = null;
  public String b = null;
  public miv c = null;
  public mmo d = null;
  
  public mkz()
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
      paramlxz.a(4, b);
    }
    if (d != null) {
      paramlxz.b(5, d);
    }
    if (c != null) {
      paramlxz.b(6, c);
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
      j = i + lxz.b(4, b);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(5, d);
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(6, c);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mkz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */