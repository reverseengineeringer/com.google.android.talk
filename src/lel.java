public final class lel
  extends lyb<lel>
{
  public Long a = null;
  public Long b = null;
  
  public lel()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    if (b != null) {
      paramlxz.b(2, b.longValue());
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
    j = i;
    if (b != null) {
      j = i + lxz.e(2, b.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */