public final class ldm
  extends lyb<ldm>
{
  public ldn[] a = ldn.d();
  
  public ldm()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        ldn localldn = a[i];
        if (localldn != null) {
          paramlxz.b(1, localldn);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int k = i;
    if (a != null)
    {
      k = i;
      if (a.length > 0)
      {
        int j = 0;
        for (;;)
        {
          k = i;
          if (j >= a.length) {
            break;
          }
          ldn localldn = a[j];
          k = i;
          if (localldn != null) {
            k = i + lxz.d(1, localldn);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     ldm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */