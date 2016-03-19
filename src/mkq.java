public final class mkq
  extends lyb<mkq>
{
  public Integer a = null;
  public String b = null;
  public String c = null;
  public mks d = null;
  
  public mkq()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (d != null) {
      paramlxz.b(2, d);
    }
    if (b != null) {
      paramlxz.a(3, b);
    }
    if (c != null) {
      paramlxz.a(4, c);
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
    if (d != null) {
      j = i + lxz.d(2, d);
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(3, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(4, c);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mkq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */