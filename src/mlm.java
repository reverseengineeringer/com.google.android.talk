public final class mlm
  extends lyb<mlm>
{
  public String a = null;
  public Integer b = null;
  public mln[] c = mln.d();
  
  public mlm()
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
      paramlxz.a(2, b.intValue());
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        mln localmln = c[i];
        if (localmln != null) {
          paramlxz.b(3, localmln);
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
      i = j + lxz.e(2, b.intValue());
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
          mln localmln = c[j];
          int k = i;
          if (localmln != null) {
            k = i + lxz.d(3, localmln);
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
 * Qualified Name:     mlm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */