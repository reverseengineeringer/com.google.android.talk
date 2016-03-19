public final class mcp
  extends lyb<mcp>
{
  public mcw a = null;
  public int b = Integer.MIN_VALUE;
  
  public mcp()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != Integer.MIN_VALUE) {
      paramlxz.a(2, b);
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
    if (b != Integer.MIN_VALUE) {
      j = i + lxz.e(2, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mcp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */