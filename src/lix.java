public final class lix
  extends lyb<lix>
{
  public lku a = null;
  public int[] b = lyo.a;
  
  public lix()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
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
    if (a != null) {
      i = j + lxz.d(1, a);
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
 * Qualified Name:     lix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */