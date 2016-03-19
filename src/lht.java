public final class lht
  extends lyb<lht>
{
  public Long a = null;
  public lhu[] b = lhu.d();
  
  public lht()
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
        lhu locallhu = b[i];
        if (locallhu != null) {
          paramlxz.b(2, locallhu);
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
          lhu locallhu = b[j];
          int k = i;
          if (locallhu != null) {
            k = i + lxz.d(2, locallhu);
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
 * Qualified Name:     lht
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */