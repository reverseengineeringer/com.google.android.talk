public final class msx
  extends lyi
{
  private static volatile msx[] c;
  public msv[] a = msv.d();
  public String b = "";
  
  public msx()
  {
    eE = -1;
  }
  
  public static msx[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new msx[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        msv localmsv = a[i];
        if (localmsv != null) {
          paramlxz.b(1, localmsv);
        }
        i += 1;
      }
    }
    if (!b.equals("")) {
      paramlxz.a(2, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= a.length) {
            break;
          }
          msv localmsv = a[k];
          j = i;
          if (localmsv != null) {
            j = i + lxz.d(1, localmsv);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (!b.equals("")) {
      i = j + lxz.b(2, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     msx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */