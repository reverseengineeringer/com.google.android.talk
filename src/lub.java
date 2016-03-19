public final class lub
  extends lyb<lub>
{
  public String a = null;
  public Long b = null;
  public Long c = null;
  
  public lub()
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
    if (c != null) {
      paramlxz.c(3, c.longValue());
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
    i = j;
    if (c != null)
    {
      c.longValue();
      i = j + (lxz.f(3) + 8);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lub
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */