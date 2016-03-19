public final class iuy
  extends lyb<iuy>
{
  public int[] a = lyo.a;
  public Integer b = null;
  public iva c = null;
  public Integer d = null;
  public Integer e = null;
  public Integer f = null;
  public ivc g = null;
  public iux h = null;
  
  public iuy()
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
        paramlxz.a(7, a[i]);
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(8, b.intValue());
    }
    if (c != null) {
      paramlxz.b(14, c);
    }
    if (d != null) {
      paramlxz.a(15, d.intValue());
    }
    if (e != null) {
      paramlxz.a(16, e.intValue());
    }
    if (f != null) {
      paramlxz.a(17, f.intValue());
    }
    if (g != null) {
      paramlxz.b(18, g);
    }
    if (h != null) {
      paramlxz.b(19, h);
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
      if (b != null) {
        i = j + lxz.e(8, b.intValue());
      }
      j = i;
      if (c != null) {
        j = i + lxz.d(14, c);
      }
      i = j;
      if (d != null) {
        i = j + lxz.e(15, d.intValue());
      }
      j = i;
      if (e != null) {
        j = i + lxz.e(16, e.intValue());
      }
      i = j;
      if (f != null) {
        i = j + lxz.e(17, f.intValue());
      }
      j = i;
      if (g != null) {
        j = i + lxz.d(18, g);
      }
      i = j;
      if (h != null) {
        i = j + lxz.d(19, h);
      }
      return i;
    }
  }
}

/* Location:
 * Qualified Name:     iuy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */