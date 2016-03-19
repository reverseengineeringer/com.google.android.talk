public final class kjt
  extends lyb<kjt>
{
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  
  public kjt()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(2, b.intValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kjt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */