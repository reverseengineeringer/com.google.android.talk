import java.io.Serializable;

final class kxg<T>
  extends kxj<T>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final kxj<? super T> a;
  
  kxg(kxj<? super T> paramkxj)
  {
    a = paramkxj;
  }
  
  public <S extends T> kxj<S> a()
  {
    return this;
  }
  
  public <S extends T> kxj<S> b()
  {
    return a.b();
  }
  
  public <S extends T> kxj<S> c()
  {
    return a.c().b();
  }
  
  public int compare(T paramT1, T paramT2)
  {
    if (paramT1 == paramT2) {
      return 0;
    }
    if (paramT1 == null) {
      return -1;
    }
    if (paramT2 == null) {
      return 1;
    }
    return a.compare(paramT1, paramT2);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof kxg))
    {
      paramObject = (kxg)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode() ^ 0x39153A74;
  }
  
  public String toString()
  {
    String str = String.valueOf(a);
    return String.valueOf(str).length() + 13 + str + ".nullsFirst()";
  }
}

/* Location:
 * Qualified Name:     kxg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */