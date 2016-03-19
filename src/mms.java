public final class mms
  extends lyb<mms>
{
  private static volatile mms[] f;
  public mkr a = null;
  public String b = null;
  public mmu[] c = mmu.d();
  public String d = null;
  public mks e = null;
  
  public mms()
  {
    eD = null;
    eE = -1;
  }
  
  public static mms[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new mms[0];
      }
      return f;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        mmu localmmu = c[i];
        if (localmmu != null) {
          paramlxz.b(3, localmmu);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.d(1, a);
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
          mmu localmmu = c[j];
          int k = i;
          if (localmmu != null) {
            k = i + lxz.d(3, localmmu);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(4, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.d(5, e);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mms
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */