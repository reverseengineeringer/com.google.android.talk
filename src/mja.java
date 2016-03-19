public final class mja
  extends lyb<mja>
{
  public String a = null;
  public mks b = null;
  public mjb[] c = mjb.d();
  
  public mja()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        mjb localmjb = c[i];
        if (localmjb != null) {
          paramlxz.b(3, localmjb);
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
    if (a != null) {
      j = i + lxz.b(1, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(2, b);
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
          mjb localmjb = c[j];
          int k = i;
          if (localmjb != null) {
            k = i + lxz.d(3, localmjb);
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
 * Qualified Name:     mja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */