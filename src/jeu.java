public final class jeu
  extends lyb<jeu>
{
  private static volatile jeu[] c;
  public String a = null;
  public jev[] b = jev.d();
  
  public jeu()
  {
    eD = null;
    eE = -1;
  }
  
  public static jeu[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new jeu[0];
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
        jev localjev = b[i];
        if (localjev != null) {
          paramlxz.b(2, localjev);
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
          jev localjev = b[j];
          int k = i;
          if (localjev != null) {
            k = i + lxz.d(2, localjev);
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
 * Qualified Name:     jeu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */