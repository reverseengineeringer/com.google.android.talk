public final class lfs
  extends lyb<lfs>
{
  public Long a = null;
  public mrx[] b = mrx.d();
  public luq c = null;
  
  public lfs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        mrx localmrx = b[i];
        if (localmrx != null) {
          paramlxz.b(2, localmrx);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.longValue());
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
          mrx localmrx = b[j];
          int k = i;
          if (localmrx != null) {
            k = i + lxz.d(2, localmrx);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lfs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */