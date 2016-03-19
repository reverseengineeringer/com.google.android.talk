import java.io.Serializable;
import java.util.Collection;

final class knu<T>
  implements Serializable, kns<T>
{
  private static final long serialVersionUID = 0L;
  private final Collection<?> a;
  
  knu(Collection<?> paramCollection)
  {
    a = ((Collection)fii.a(paramCollection));
  }
  
  public boolean a(T paramT)
  {
    try
    {
      boolean bool = a.contains(paramT);
      return bool;
    }
    catch (ClassCastException paramT)
    {
      return false;
    }
    catch (NullPointerException paramT) {}
    return false;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof knu))
    {
      paramObject = (knu)paramObject;
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
    return String.valueOf(str).length() + 15 + "Predicates.in(" + str + ")";
  }
}

/* Location:
 * Qualified Name:     knu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */