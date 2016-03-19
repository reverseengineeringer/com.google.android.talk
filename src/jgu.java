public final class jgu
  extends lyb<jgu>
{
  public String a = null;
  public String b = null;
  public String c = null;
  
  public jgu()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    paramlxz.a(2, b);
    if (c != null) {
      paramlxz.a(3, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(1, a) + lxz.b(2, b);
    int i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jgu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */