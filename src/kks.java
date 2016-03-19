public final class kks
  extends lyb<kks>
{
  public Integer a = null;
  public Integer b = null;
  public kla c = null;
  public kkt d = null;
  
  public kks()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.intValue());
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.e(1, a.intValue());
    int i = j;
    if (b != null) {
      i = j + lxz.e(2, b.intValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(3, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(4, d);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */