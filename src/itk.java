public final class itk
  extends lyb<itk>
{
  private static volatile itk[] e;
  public String a = null;
  public String b = null;
  public itl c = null;
  public String d = null;
  
  public itk()
  {
    eD = null;
    eE = -1;
  }
  
  public static itk[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new itk[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
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
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(4, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     itk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */