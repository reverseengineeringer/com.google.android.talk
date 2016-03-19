public final class jiq
  extends lyb<jiq>
{
  public jiv[] a = jiv.d();
  
  public jiq()
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
        jiv localjiv = a[i];
        if (localjiv != null) {
          paramlxz.b(1, localjiv);
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
          jiv localjiv = a[j];
          k = i;
          if (localjiv != null) {
            k = i + lxz.d(1, localjiv);
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
 * Qualified Name:     jiq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */