public final class mmu
  extends lyb<mmu>
{
  private static volatile mmu[] f;
  public String a = null;
  public mmr[] b = mmr.d();
  public mmr c = null;
  public mmr d = null;
  public mks e = null;
  
  public mmu()
  {
    eD = null;
    eE = -1;
  }
  
  public static mmu[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new mmu[0];
      }
      return f;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        mmr localmmr = b[i];
        if (localmmr != null) {
          paramlxz.b(2, localmmr);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    i = lxz.b(1, a) + i;
    int j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= b.length) {
            break;
          }
          mmr localmmr = b[k];
          j = i;
          if (localmmr != null) {
            j = i + lxz.d(2, localmmr);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(5, e);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mmu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */