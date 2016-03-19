public final class jei
  extends lyb<jei>
{
  public String a = null;
  public jej[] b = jej.d();
  
  public jei()
  {
    eD = null;
    eE = -1;
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
        jej localjej = b[i];
        if (localjej != null) {
          paramlxz.b(2, localjej);
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
          jej localjej = b[j];
          int k = i;
          if (localjej != null) {
            k = i + lxz.d(2, localjej);
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
 * Qualified Name:     jei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */