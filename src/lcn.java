public final class lcn
  extends lyb<lcn>
{
  public Float a = null;
  public Float b = null;
  public int[] c = lyo.a;
  
  public lcn()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.floatValue());
    }
    if (b != null) {
      paramlxz.a(2, b.floatValue());
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        paramlxz.a(3, c[i]);
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int i = super.b();
    int j = i;
    if (a != null)
    {
      a.floatValue();
      j = i + (lxz.f(1) + 4);
    }
    i = j;
    if (b != null)
    {
      b.floatValue();
      i = j + (lxz.f(2) + 4);
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        int k = 0;
        j = m;
        while (j < c.length)
        {
          k += lxz.e(c[j]);
          j += 1;
        }
        j = i + k + c.length * 1;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lcn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */