public final class los
  extends lyb<los>
{
  private static volatile los[] c;
  public String a = null;
  public lot[] b = lot.d();
  
  public los()
  {
    eD = null;
    eE = -1;
  }
  
  public static los[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new los[0];
      }
      return c;
    }
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
        lot locallot = b[i];
        if (locallot != null) {
          paramlxz.b(2, locallot);
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
          lot locallot = b[j];
          int k = i;
          if (locallot != null) {
            k = i + lxz.d(2, locallot);
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
 * Qualified Name:     los
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */