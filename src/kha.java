public final class kha
  extends lyb<kha>
{
  public kgy a = null;
  public kii b = null;
  public kgy[] c = kgy.d();
  public kdp responseHeader = null;
  
  public kha()
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
        kgy localkgy = c[i];
        if (localkgy != null) {
          paramlxz.b(4, localkgy);
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
          kgy localkgy = c[j];
          int k = i;
          if (localkgy != null) {
            k = i + lxz.d(4, localkgy);
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
 * Qualified Name:     kha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */