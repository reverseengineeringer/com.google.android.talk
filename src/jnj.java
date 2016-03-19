public final class jnj
  extends lyb<jnj>
{
  public jlq a = null;
  public jlq[] b = jlq.d();
  public jnf c = null;
  
  public jnj()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(4, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        jlq localjlq = b[i];
        if (localjlq != null) {
          paramlxz.b(5, localjlq);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(6, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(4, a);
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
          jlq localjlq = b[j];
          int k = i;
          if (localjlq != null) {
            k = i + lxz.d(5, localjlq);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(6, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jnj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */