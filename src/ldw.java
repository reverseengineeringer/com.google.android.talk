public final class ldw
  extends lyb<ldw>
{
  public ldx a = null;
  public Long b = null;
  public ldy c = null;
  public lee[] d = lee.d();
  
  public ldw()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b.longValue());
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if ((d != null) && (d.length > 0))
    {
      int i = 0;
      while (i < d.length)
      {
        lee locallee = d[i];
        if (locallee != null) {
          paramlxz.b(4, locallee);
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
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(2, b.longValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    j = i;
    if (d != null)
    {
      j = i;
      if (d.length > 0)
      {
        j = 0;
        while (j < d.length)
        {
          lee locallee = d[j];
          int k = i;
          if (locallee != null) {
            k = i + lxz.d(4, locallee);
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
 * Qualified Name:     ldw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */