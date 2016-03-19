public final class jzt
  extends lyb<jzt>
{
  public Long a = null;
  
  public jzt()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jzt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */