public final class jax
  extends lyb<jax>
{
  public jbn a = null;
  public jbn b = null;
  public jaw[] c = jaw.d();
  public Boolean d = null;
  
  public jax()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        jaw localjaw = c[i];
        if (localjaw != null) {
          paramlxz.b(2, localjaw);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.b(3, b);
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
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
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        j = 0;
        while (j < c.length)
        {
          jaw localjaw = c[j];
          int k = i;
          if (localjaw != null) {
            k = i + lxz.d(2, localjaw);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(3, b);
    }
    j = i;
    if (d != null)
    {
      d.booleanValue();
      j = i + (lxz.f(4) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */