public final class mgi
  extends lyb<mgi>
{
  public Boolean a = null;
  public mgj[] b = mgj.d();
  
  public mgi()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.booleanValue());
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        mgj localmgj = b[i];
        if (localmgj != null) {
          paramlxz.b(2, localmgj);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null)
    {
      a.booleanValue();
      i = j + (lxz.f(1) + 1);
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          mgj localmgj = b[j];
          int k = i;
          if (localmgj != null) {
            k = i + lxz.d(2, localmgj);
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
 * Qualified Name:     mgi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */