public final class jav
  extends lyb<jav>
{
  private static volatile jav[] c;
  public Integer a = null;
  public Float b = null;
  
  public jav()
  {
    eD = null;
    eE = -1;
  }
  
  public static jav[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new jav[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b.floatValue());
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
    if (b != null)
    {
      b.floatValue();
      j = i + (lxz.f(2) + 4);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jav
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */