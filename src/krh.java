import java.io.Serializable;
import java.util.Comparator;

final class krh<T>
  extends kxj<T>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final Comparator<T> a;
  
  krh(Comparator<T> paramComparator)
  {
    a = ((Comparator)fii.a(paramComparator));
  }
  
  public int compare(T paramT1, T paramT2)
  {
    return a.compare(paramT1, paramT2);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof krh))
    {
      paramObject = (krh)paramObject;
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
    return a.toString();
  }
}

/* Location:
 * Qualified Name:     krh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */