public final class lod
  extends lyb<lod>
{
  public Long a = null;
  public Long b = null;
  
  public lod()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.c(1, a.longValue());
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
    if (a != null)
    {
      a.longValue();
      i = j + (lxz.f(1) + 8);
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
 * Qualified Name:     lod
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */