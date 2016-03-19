final class apq<Model, Data>
{
  final Class<Data> a;
  final api<Model, Data> b;
  private final Class<Model> c;
  
  public apq(Class<Model> paramClass, Class<Data> paramClass1, api<Model, Data> paramapi)
  {
    c = paramClass;
    a = paramClass1;
    b = paramapi;
  }
  
  public boolean a(Class<?> paramClass)
  {
    return c.isAssignableFrom(paramClass);
  }
  
  public boolean a(Class<?> paramClass1, Class<?> paramClass2)
  {
    return (a(paramClass1)) && (a.isAssignableFrom(paramClass2));
  }
}

/* Location:
 * Qualified Name:     apq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */