public final class juo
  extends lyb<juo>
{
  private static volatile juo[] c;
  public String a = null;
  public int[] b = lyo.a;
  
  public juo()
  {
    eD = null;
    eE = -1;
  }
  
  public static juo[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new juo[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(62, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        paramlxz.b(63, b[i]);
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(62, a);
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0) {
        j = i + b.length * 4 + b.length * 2;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     juo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */