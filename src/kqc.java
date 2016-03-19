import java.util.Map.Entry;

public final class kqc
  implements Map.Entry<K, V>
{
  final K a;
  V b;
  
  kqc(K paramK, V paramV)
  {
    a = paramV;
    Object localObject;
    b = localObject;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Map.Entry))
    {
      paramObject = (Map.Entry)paramObject;
      bool1 = bool2;
      if (a.equals(((Map.Entry)paramObject).getKey()))
      {
        bool1 = bool2;
        if (b.equals(((Map.Entry)paramObject).getValue())) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public K getKey()
  {
    return (K)a;
  }
  
  public V getValue()
  {
    return (V)b;
  }
  
  public int hashCode()
  {
    return a.hashCode() ^ b.hashCode();
  }
  
  public V setValue(V paramV)
  {
    throw new UnsupportedOperationException();
  }
  
  public String toString()
  {
    String str1 = String.valueOf(getKey());
    String str2 = String.valueOf(getValue());
    return String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + str1 + "=" + str2;
  }
}

/* Location:
 * Qualified Name:     kqc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */