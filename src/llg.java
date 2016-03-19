public final class llg
  extends lyb<llg>
{
  public mem a = null;
  public Long b = null;
  
  public llg()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
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
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(2, b.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     llg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */