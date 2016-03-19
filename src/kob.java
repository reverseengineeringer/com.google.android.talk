final class kob<T>
  extends knq<T>
{
  private static final long serialVersionUID = 0L;
  private final T a;
  
  kob(T paramT)
  {
    a = paramT;
  }
  
  public T a(T paramT)
  {
    fii.a(paramT, "use Optional.orNull() instead of Optional.or(null)");
    return (T)a;
  }
  
  public boolean a()
  {
    return true;
  }
  
  public T b()
  {
    return (T)a;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof kob))
    {
      paramObject = (kob)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return 1502476572 + a.hashCode();
  }
  
  public String toString()
  {
    String str = String.valueOf(a);
    return String.valueOf(str).length() + 13 + "Optional.of(" + str + ")";
  }
}

/* Location:
 * Qualified Name:     kob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */