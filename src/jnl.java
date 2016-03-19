public final class jnl
  extends lyb<jnl>
{
  public Boolean a = null;
  public jlq b = null;
  public jlq c = null;
  public jlq d = null;
  public jnf e = null;
  
  public jnl()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(5, a.booleanValue());
    }
    if (b != null) {
      paramlxz.b(6, b);
    }
    if (c != null) {
      paramlxz.b(7, c);
    }
    if (d != null) {
      paramlxz.b(8, d);
    }
    if (e != null) {
      paramlxz.b(9, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null)
    {
      a.booleanValue();
      i = j + (lxz.f(5) + 1);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(6, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(7, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(8, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(9, e);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jnl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */