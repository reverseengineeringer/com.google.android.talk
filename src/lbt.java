public final class lbt
  extends lyb<lbt>
{
  public int[] a = lyo.a;
  public float[] b = lyo.c;
  public Boolean c = null;
  public String d = null;
  public String e = null;
  public msu f = null;
  
  public lbt()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    int i;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        paramlxz.a(1, a[i]);
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = j;
      while (i < b.length)
      {
        paramlxz.a(2, b[i]);
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.b(15, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = 0;
    int k = super.b();
    if ((a != null) && (a.length > 0))
    {
      j = 0;
      while (i < a.length)
      {
        j += lxz.e(a[i]);
        i += 1;
      }
    }
    for (int j = k + j + a.length * 1;; j = k)
    {
      i = j;
      if (b != null)
      {
        i = j;
        if (b.length > 0) {
          i = j + b.length * 4 + b.length * 1;
        }
      }
      j = i;
      if (c != null)
      {
        c.booleanValue();
        j = i + (lxz.f(3) + 1);
      }
      i = j;
      if (d != null) {
        i = j + lxz.b(4, d);
      }
      j = i;
      if (e != null) {
        j = i + lxz.b(5, e);
      }
      i = j;
      if (f != null) {
        i = j + lxz.d(15, f);
      }
      return i;
    }
  }
}

/* Location:
 * Qualified Name:     lbt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */