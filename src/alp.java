final class alp<Z>
  implements alr<Z>, avy
{
  private static final ic<alp<?>> a = avs.a(20, new alq());
  private final awa b = new awb();
  private alr<Z> c;
  private boolean d;
  private boolean e;
  
  static <Z> alp<Z> a(alr<Z> paramalr)
  {
    alp localalp = (alp)a.a();
    e = false;
    d = true;
    c = paramalr;
    return localalp;
  }
  
  public void a()
  {
    try
    {
      b.a();
      if (!d) {
        throw new IllegalStateException("Already unlocked");
      }
    }
    finally {}
    d = false;
    if (e) {
      e();
    }
  }
  
  public Class<Z> b()
  {
    return c.b();
  }
  
  public Z c()
  {
    return (Z)c.c();
  }
  
  public int d()
  {
    return c.d();
  }
  
  public void e()
  {
    try
    {
      b.a();
      e = true;
      if (!d)
      {
        c.e();
        c = null;
        a.a(this);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public awa i_()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     alp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */