public final class jjn
  extends lyb<jjn>
{
  public String a = null;
  public String b = null;
  public String c = null;
  
  public jjn()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(1, a);
    int i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(3, c);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jjn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */