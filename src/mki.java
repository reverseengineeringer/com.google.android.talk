public final class mki
  extends lyb<mki>
{
  private static volatile mki[] c;
  public lbu a = null;
  public Float b = null;
  
  public mki()
  {
    eD = null;
    eE = -1;
  }
  
  public static mki[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new mki[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
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
      i = j + lxz.d(1, a);
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
 * Qualified Name:     mki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */