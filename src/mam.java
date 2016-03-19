public final class mam
  extends lyb<mam>
{
  public lzr a = null;
  public lzt[] b = lzt.b;
  public lzt c = null;
  public int d = Integer.MIN_VALUE;
  
  public mam()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        lzt locallzt = b[i];
        if (locallzt != null) {
          paramlxz.b(2, locallzt);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != Integer.MIN_VALUE) {
      paramlxz.a(4, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
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
          lzt locallzt = b[j];
          int k = i;
          if (locallzt != null) {
            k = i + lxz.d(2, locallzt);
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
    j = i;
    if (d != Integer.MIN_VALUE) {
      j = i + lxz.e(4, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mam
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */