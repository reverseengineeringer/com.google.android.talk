public final class meu
  extends lyb<meu>
{
  public static final lyc<msu, meu> a = lyc.a(meu.class, 332342562L);
  private static final meu[] g = new meu[0];
  public String b = null;
  public Integer c = null;
  public mev d = null;
  public Boolean e = null;
  public Integer f = null;
  
  public meu()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (c != null) {
      paramlxz.a(1, c.intValue());
    }
    if (d != null) {
      paramlxz.b(2, d);
    }
    if (e != null) {
      paramlxz.a(3, e.booleanValue());
    }
    if (f != null) {
      paramlxz.a(5, f.intValue());
    }
    if (b != null) {
      paramlxz.a(6, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (c != null) {
      i = j + lxz.e(1, c.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(2, d);
    }
    i = j;
    if (e != null)
    {
      e.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    j = i;
    if (f != null) {
      j = i + lxz.e(5, f.intValue());
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(6, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     meu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */