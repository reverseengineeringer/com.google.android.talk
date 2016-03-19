public final class lys
  extends lyb<lys>
{
  public static final lyc<Object, lys> a = lyc.a(lys.class, 196484970L);
  private static final lys[] d = new lys[0];
  public lyq b = null;
  public lyp[] c = lyp.d();
  
  public lys()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        lyp locallyp = c[i];
        if (locallyp != null) {
          paramlxz.b(2, locallyp);
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
    if (b != null) {
      i = j + lxz.d(1, b);
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
          lyp locallyp = c[j];
          int k = i;
          if (locallyp != null) {
            k = i + lxz.d(2, locallyp);
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
 * Qualified Name:     lys
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */