public final class irw
  implements irg
{
  public int c;
  public final int d;
  public final double e;
  public final double f;
  public final int g;
  long h;
  public final int i;
  private final isi j;
  
  public irw()
  {
    this(new irx());
  }
  
  protected irw(irx paramirx)
  {
    d = a;
    e = b;
    f = c;
    g = d;
    i = e;
    j = f;
    if (d > 0)
    {
      bool1 = true;
      fii.a(bool1);
      if ((0.0D > e) || (e >= 1.0D)) {
        break label146;
      }
      bool1 = true;
      label87:
      fii.a(bool1);
      if (f < 1.0D) {
        break label151;
      }
      bool1 = true;
      label102:
      fii.a(bool1);
      if (g < d) {
        break label156;
      }
      bool1 = true;
      label119:
      fii.a(bool1);
      if (i <= 0) {
        break label161;
      }
    }
    label146:
    label151:
    label156:
    label161:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      fii.a(bool1);
      b();
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label87;
      bool1 = false;
      break label102;
      bool1 = false;
      break label119;
    }
  }
  
  public long a()
  {
    if (c() > i) {
      return -1L;
    }
    double d2 = e;
    double d1 = Math.random();
    int k = c;
    d2 *= k;
    double d3 = k - d2;
    k = (int)((d2 + k - d3 + 1.0D) * d1 + d3);
    if (c >= g / f) {}
    for (c = g;; c = ((int)(c * f))) {
      return k;
    }
  }
  
  public final void b()
  {
    c = d;
    h = j.a();
  }
  
  public final long c()
  {
    return (j.a() - h) / 1000000L;
  }
}

/* Location:
 * Qualified Name:     irw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */