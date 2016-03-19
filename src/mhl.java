public final class mhl
  extends lyb<mhl>
{
  public static final lyc<msu, mhl> a = lyc.a(mhl.class, 367806914L);
  private static final mhl[] e = new mhl[0];
  public String b = null;
  public mhk[] c = mhk.d();
  public Integer d = null;
  
  public mhl()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (d != null) {
      paramlxz.a(1, d.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        mhk localmhk = c[i];
        if (localmhk != null) {
          paramlxz.b(3, localmhk);
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
    if (d != null) {
      j = i + lxz.e(1, d.intValue());
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
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
          mhk localmhk = c[j];
          int k = i;
          if (localmhk != null) {
            k = i + lxz.d(3, localmhk);
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
 * Qualified Name:     mhl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */