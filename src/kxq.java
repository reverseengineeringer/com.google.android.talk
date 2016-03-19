import java.io.Serializable;

final class kxq<K, V>
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private final krw<K, V> a;
  
  kxq(krw<K, V> paramkrw)
  {
    a = paramkrw;
  }
  
  Object readResolve()
  {
    return a.a();
  }
}

/* Location:
 * Qualified Name:     kxq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */