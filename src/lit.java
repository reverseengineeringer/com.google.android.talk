public final class lit
  extends lyb<lit>
{
  public String a = null;
  public String b = null;
  public String c = null;
  
  public lit()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (c != null) {
      paramlxz.a(2, c);
    }
    if (b != null) {
      paramlxz.a(3, b);
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
    if (c != null) {
      j = i + lxz.b(2, c);
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(3, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lit
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */