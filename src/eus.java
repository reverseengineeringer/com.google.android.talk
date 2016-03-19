public final class eus
  extends lyi
{
  public eur[] a = eur.d();
  
  public eus()
  {
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        eur localeur = a[i];
        if (localeur != null) {
          paramlxz.b(1, localeur);
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
          eur localeur = a[j];
          k = i;
          if (localeur != null) {
            k = i + lxz.d(1, localeur);
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
 * Qualified Name:     eus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */