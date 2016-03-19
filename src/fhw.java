public final class fhw<O extends fhy>
{
  private final fhx<?, O> a;
  private final a b;
  private final fib<?> c;
  private final aal d;
  private final String e;
  
  public <C extends fia> fhw(String paramString, fhx<C, O> paramfhx, fib<C> paramfib)
  {
    aal.b(paramfhx, "Cannot construct an Api with a null ClientBuilder");
    aal.b(paramfib, "Cannot construct an Api with a null ClientKey");
    e = paramString;
    a = paramfhx;
    b = null;
    c = paramfib;
    d = null;
  }
  
  public fhx<?, O> a()
  {
    if (a != null) {}
    for (boolean bool = true;; bool = false)
    {
      aal.a(bool, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
      return a;
    }
  }
  
  public a b()
  {
    if (b != null) {}
    for (boolean bool = true;; bool = false)
    {
      aal.a(bool, "This API was constructed with a ClientBuilder. Use getClientBuilder");
      return b;
    }
  }
  
  public fib<?> c()
  {
    if (c != null) {}
    for (boolean bool = true;; bool = false)
    {
      aal.a(bool, "This API was constructed with a SimpleClientKey. Use getSimpleClientKey");
      return c;
    }
  }
  
  public boolean d()
  {
    return d != null;
  }
  
  public String e()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     fhw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */