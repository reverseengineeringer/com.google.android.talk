public final class iva
  extends lyb<iva>
{
  public Long a = null;
  public String b = null;
  public String c = null;
  
  public iva()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(2, a.longValue());
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
      i = j + lxz.e(2, a.longValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(3, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(4, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     iva
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */