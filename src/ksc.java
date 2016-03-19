import java.io.Serializable;

class ksc<K, V>
  extends krb<K, V>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final K a;
  final V b;
  
  ksc(K paramK, V paramV)
  {
    a = paramK;
    b = paramV;
  }
  
  public final K getKey()
  {
    return (K)a;
  }
  
  public final V getValue()
  {
    return (V)b;
  }
  
  public final V setValue(V paramV)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     ksc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */