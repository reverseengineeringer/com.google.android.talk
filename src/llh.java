public final class llh
  extends lyb<llh>
{
  public Integer a = null;
  public llf[] b = llf.d();
  public String c = null;
  
  public llh()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        llf localllf = b[i];
        if (localllf != null) {
          paramlxz.b(2, localllf);
        }
        i += 1;
      }
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
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          llf localllf = b[j];
          int k = i;
          if (localllf != null) {
            k = i + lxz.d(2, localllf);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     llh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */