public final class ivb
  extends lyb<ivb>
{
  public int[] a = lyo.a;
  
  public ivb()
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
        paramlxz.a(1, a[i]);
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = 0;
    int k = super.b();
    if ((a != null) && (a.length > 0))
    {
      int j = 0;
      while (i < a.length)
      {
        j += lxz.e(a[i]);
        i += 1;
      }
      return k + j + a.length * 1;
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     ivb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */