public final class jlt
  extends lyb<jlt>
{
  public Boolean a = null;
  public int[] b = lyo.a;
  
  public jlt()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.booleanValue());
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        paramlxz.a(2, b[i]);
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b();
    int i = j;
    if (a != null)
    {
      a.booleanValue();
      i = j + (lxz.f(1) + 1);
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        int k = 0;
        j = m;
        while (j < b.length)
        {
          k += lxz.e(b[j]);
          j += 1;
        }
        j = i + k + b.length * 1;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jlt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */