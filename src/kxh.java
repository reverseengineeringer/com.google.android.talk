import java.io.Serializable;

final class kxh<T>
  extends kxj<T>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final kxj<? super T> a;
  
  kxh(kxj<? super T> paramkxj)
  {
    a = paramkxj;
  }
  
  public <S extends T> kxj<S> a()
  {
    return a.a();
  }
  
  public <S extends T> kxj<S> b()
  {
    return this;
  }
  
  public <S extends T> kxj<S> c()
  {
    return a.c().a();
  }
  
  public int compare(T paramT1, T paramT2)
  {
    if (paramT1 == paramT2) {
      return 0;
    }
    if (paramT1 == null) {
      return 1;
    }
    if (paramT2 == null) {
      return -1;
    }
    return a.compare(paramT1, paramT2);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof kxh))
    {
      paramObject = (kxh)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode() ^ 0xC9177248;
  }
  
  public String toString()
  {
    String str = String.valueOf(a);
    return String.valueOf(str).length() + 12 + str + ".nullsLast()";
  }
}

/* Location:
 * Qualified Name:     kxh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */