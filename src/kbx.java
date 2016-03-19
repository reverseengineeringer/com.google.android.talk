public final class kbx
  extends lyb<kbx>
{
  public kby a = null;
  public kbz b = null;
  public kca c = null;
  
  public kbx()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if (c != null) {
      paramlxz.b(2, c);
    }
    if (a != null) {
      paramlxz.b(3, a);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.d(1, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(2, c);
    }
    i = j;
    if (a != null) {
      i = j + lxz.d(3, a);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kbx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */