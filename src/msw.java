public final class msw
  extends lyi
{
  public int a = 0;
  public int b = 0;
  public msx[] c = msx.d();
  
  public msw()
  {
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != 0) {
      paramlxz.a(1, a);
    }
    if (b != 0) {
      paramlxz.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        msx localmsx = c[i];
        if (localmsx != null) {
          paramlxz.b(3, localmsx);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != 0) {
      j = i + lxz.e(1, a);
    }
    i = j;
    if (b != 0) {
      i = j + lxz.e(2, b);
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        j = 0;
        while (j < c.length)
        {
          msx localmsx = c[j];
          int k = i;
          if (localmsx != null) {
            k = i + lxz.d(3, localmsx);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     msw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */