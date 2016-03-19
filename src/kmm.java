public final class kmm<T>
  extends knq<T>
{
  public static final kmm<Object> a = new kmm();
  private static final long serialVersionUID = 0L;
  
  private Object readResolve()
  {
    return a;
  }
  
  public T a(T paramT)
  {
    return (T)fii.a(paramT, "use Optional.orNull() instead of Optional.or(null)");
  }
  
  public boolean a()
  {
    return false;
  }
  
  public T b()
  {
    throw new IllegalStateException("Optional.get() cannot be called on an absent value");
  }
  
  public boolean equals(Object paramObject)
  {
    return paramObject == this;
  }
  
  public int hashCode()
  {
    return 2040732332;
  }
  
  public String toString()
  {
    return "Optional.absent()";
  }
}

/* Location:
 * Qualified Name:     kmm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */