public final class jcn
  extends lyb<jcn>
{
  public Integer a = null;
  public Integer b = null;
  public String c = null;
  
  public jcn()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.intValue());
    paramlxz.a(2, b.intValue());
    if (c != null) {
      paramlxz.a(3, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.e(1, a.intValue()) + lxz.e(2, b.intValue());
    int i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jcn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */