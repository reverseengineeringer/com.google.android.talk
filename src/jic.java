public final class jic
  extends lyb<jic>
{
  public Integer a = null;
  public int b = Integer.MIN_VALUE;
  
  public jic()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
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
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (b != Integer.MIN_VALUE) {
      j = i + lxz.e(2, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */