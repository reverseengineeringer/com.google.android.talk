public final class kiy
  extends lyb<kiy>
{
  public String a = null;
  public kju b = null;
  public kii c = null;
  public kdo requestHeader = null;
  
  public kiy()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (a != null) {
      paramlxz.a(2, a);
    }
    if (b != null) {
      paramlxz.b(3, b);
    }
    if (c != null) {
      paramlxz.b(4, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.b(2, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(3, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(4, c);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kiy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */