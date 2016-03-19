public final class iyp
  extends lyb<iyp>
{
  public jdc a = null;
  public iyd apiHeader = null;
  
  public iyp()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (apiHeader != null) {
      paramlxz.b(1, apiHeader);
    }
    if (a != null) {
      paramlxz.b(2, a);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (apiHeader != null) {
      i = j + lxz.d(1, apiHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(2, a);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     iyp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */