public final class lpf
  extends lyb<lpf>
{
  public String a = null;
  public Long b = null;
  
  public lpf()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.c(2, b.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (b != null)
    {
      b.longValue();
      j = i + (lxz.f(2) + 8);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lpf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */