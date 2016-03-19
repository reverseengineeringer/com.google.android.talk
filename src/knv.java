import java.io.Serializable;

final class knv<T>
  implements Serializable, kns<T>
{
  private static final long serialVersionUID = 0L;
  private final T a;
  
  knv(T paramT)
  {
    a = paramT;
  }
  
  public boolean a(T paramT)
  {
    return a.equals(paramT);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof knv))
    {
      paramObject = (knv)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public String toString()
  {
    String str = String.valueOf(a);
    return String.valueOf(str).length() + 20 + "Predicates.equalTo(" + str + ")";
  }
}

/* Location:
 * Qualified Name:     knv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */