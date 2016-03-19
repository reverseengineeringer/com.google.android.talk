public final class jge
  extends lyb<jge>
{
  private static volatile jge[] e;
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  public String d = null;
  
  public jge()
  {
    eD = null;
    eE = -1;
  }
  
  public static jge[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new jge[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.intValue());
    paramlxz.a(2, b.intValue());
    paramlxz.a(3, c.intValue());
    if (d != null) {
      paramlxz.a(4, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.e(1, a.intValue()) + lxz.e(2, b.intValue()) + lxz.e(3, c.intValue());
    int i = j;
    if (d != null) {
      i = j + lxz.b(4, d);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */