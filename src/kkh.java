public final class kkh
  extends lyb<kkh>
{
  public String[] a = lyo.f;
  
  public kkh()
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
        String str = a[i];
        if (str != null) {
          paramlxz.a(1, str);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = 0;
    int i1 = super.b();
    if ((a != null) && (a.length > 0))
    {
      int j = 0;
      int m;
      for (int k = 0; i < a.length; k = m)
      {
        String str = a[i];
        int n = j;
        m = k;
        if (str != null)
        {
          m = k + 1;
          n = j + lxz.a(str);
        }
        i += 1;
        j = n;
      }
      return i1 + j + k * 1;
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     kkh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */