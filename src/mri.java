public final class mri
  extends lyb<mri>
{
  private static volatile mri[] f;
  public float[] a = lyo.c;
  public float[] b = lyo.c;
  public float[] c = lyo.c;
  public Integer d = null;
  public Integer e = null;
  
  public mri()
  {
    eD = null;
    eE = -1;
  }
  
  public static mri[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new mri[0];
      }
      return f;
    }
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
      i = 0;
      while (i < b.length)
      {
        paramlxz.a(2, b[i]);
        i += 1;
      }
    }
    if ((c != null) && (c.length > 0))
    {
      i = j;
      while (i < c.length)
      {
        paramlxz.a(3, c[i]);
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null)
    {
      i = j;
      if (a.length > 0) {
        i = j + a.length * 4 + a.length * 1;
      }
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0) {
        j = i + b.length * 4 + b.length * 1;
      }
    }
    i = j;
    if (c != null)
    {
      i = j;
      if (c.length > 0) {
        i = j + c.length * 4 + c.length * 1;
      }
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.intValue());
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(5, e.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mri
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */