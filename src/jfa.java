public final class jfa
  extends lyb<jfa>
{
  private static volatile jfa[] d;
  public Integer a = null;
  public String b = null;
  public String c = null;
  
  public jfa()
  {
    eD = null;
    eE = -1;
  }
  
  public static jfa[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new jfa[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
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
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jfa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */