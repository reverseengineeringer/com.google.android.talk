final class atd<Z, R>
{
  final atb<Z, R> a;
  private final Class<Z> b;
  private final Class<R> c;
  
  atd(Class<Z> paramClass, Class<R> paramClass1, atb<Z, R> paramatb)
  {
    b = paramClass;
    c = paramClass1;
    a = paramatb;
  }
  
  public boolean a(Class<?> paramClass1, Class<?> paramClass2)
  {
    return (b.isAssignableFrom(paramClass1)) && (paramClass2.isAssignableFrom(c));
  }
}

/* Location:
 * Qualified Name:     atd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */