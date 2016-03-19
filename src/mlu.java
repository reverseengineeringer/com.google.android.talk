public final class mlu
  extends lyb<mlu>
{
  public String a = null;
  public mlt[] b = mlt.d();
  public Long c = null;
  
  public mlu()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        mlt localmlt = b[i];
        if (localmlt != null) {
          paramlxz.b(2, localmlt);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(3, c.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
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
          mlt localmlt = b[j];
          int k = i;
          if (localmlt != null) {
            k = i + lxz.d(2, localmlt);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mlu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */