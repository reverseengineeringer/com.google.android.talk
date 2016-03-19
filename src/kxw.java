import java.io.Serializable;

final class kxw<T>
  extends kxj<T>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final kxj<? super T> a;
  
  kxw(kxj<? super T> paramkxj)
  {
    a = ((kxj)fii.a(paramkxj));
  }
  
  public <S extends T> kxj<S> c()
  {
    return a;
  }
  
  public int compare(T paramT1, T paramT2)
  {
    return a.compare(paramT2, paramT1);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof kxw))
    {
      paramObject = (kxw)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return -a.hashCode();
  }
  
  public String toString()
  {
    String str = String.valueOf(a);
    return String.valueOf(str).length() + 10 + str + ".reverse()";
  }
}

/* Location:
 * Qualified Name:     kxw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */