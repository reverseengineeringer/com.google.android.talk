final class aud<T, R>
{
  final Class<R> a;
  final ajb<T, R> b;
  private final Class<T> c;
  
  public aud(Class<T> paramClass, Class<R> paramClass1, ajb<T, R> paramajb)
  {
    c = paramClass;
    a = paramClass1;
    b = paramajb;
  }
  
  public boolean a(Class<?> paramClass1, Class<?> paramClass2)
  {
    return (c.isAssignableFrom(paramClass1)) && (paramClass2.isAssignableFrom(a));
  }
}

/* Location:
 * Qualified Name:     aud
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */