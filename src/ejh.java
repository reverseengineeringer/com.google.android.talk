public final class ejh
  extends fkg
{
  private fkg b;
  private final Object c = new Object();
  private Throwable d;
  
  public ejh(fkg paramfkg)
  {
    super(null, '\000');
    hbs.b("Expected condition to be false", paramfkg.c());
    b = paramfkg;
  }
  
  private eji b(int paramInt)
  {
    synchronized (c)
    {
      if (b == null) {
        throw new IllegalStateException("Already released", d);
      }
    }
    eji localeji = new eji((gpr)b.a(paramInt));
    return localeji;
  }
  
  public int a()
  {
    synchronized (c)
    {
      if (b == null) {
        throw new IllegalStateException("Already released", d);
      }
    }
    int i = b.a();
    return i;
  }
  
  public void b()
  {
    super.b();
    d = new Throwable("ThreadSafeAggregatedPersonBuffer released");
    synchronized (c)
    {
      if (b != null)
      {
        b.b();
        b = null;
      }
      return;
    }
  }
  
  public boolean c()
  {
    synchronized (c)
    {
      if (b == null) {
        return true;
      }
      boolean bool = b.c();
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     ejh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */