public final class mlb
  extends lyb<mlb>
{
  public mlc[] a = mlc.d();
  public Boolean b = null;
  public Boolean c = null;
  public Integer d = null;
  
  public mlb()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        mlc localmlc = a[i];
        if (localmlc != null) {
          paramlxz.b(1, localmlc);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(2, b.booleanValue());
    }
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
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
          mlc localmlc = a[k];
          j = i;
          if (localmlc != null) {
            j = i + lxz.d(1, localmlc);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null)
    {
      b.booleanValue();
      i = j + (lxz.f(2) + 1);
    }
    j = i;
    if (c != null)
    {
      c.booleanValue();
      j = i + (lxz.f(3) + 1);
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(4, d.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mlb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */