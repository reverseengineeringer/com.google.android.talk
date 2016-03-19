public final class khj
  extends lyb<khj>
{
  public khf a = null;
  public kii b = null;
  public khf[] c = khf.d();
  public kdp responseHeader = null;
  
  public khj()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if (a != null) {
      paramlxz.b(2, a);
    }
    if (b != null) {
      paramlxz.b(3, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        khf localkhf = c[i];
        if (localkhf != null) {
          paramlxz.b(4, localkhf);
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
    if (responseHeader != null) {
      i = j + lxz.d(1, responseHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(2, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(3, b);
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
          khf localkhf = c[j];
          int k = i;
          if (localkhf != null) {
            k = i + lxz.d(4, localkhf);
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
 * Qualified Name:     khj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */