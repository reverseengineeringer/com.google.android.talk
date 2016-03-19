import java.util.Iterator;
import java.util.Map.Entry;

final class gcj
  implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V>
{
  int a;
  int b;
  boolean c = false;
  
  gcj(gcf paramgcf)
  {
    a = (paramgcf.a() - 1);
    b = -1;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    if (!(paramObject instanceof Map.Entry)) {}
    do
    {
      return false;
      paramObject = (Map.Entry)paramObject;
    } while ((!gce.a(((Map.Entry)paramObject).getKey(), d.a(b, 0))) || (!gce.a(((Map.Entry)paramObject).getValue(), d.a(b, 1))));
    return true;
  }
  
  public K getKey()
  {
    if (!c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return (K)d.a(b, 0);
  }
  
  public V getValue()
  {
    if (!c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return (V)d.a(b, 1);
  }
  
  public boolean hasNext()
  {
    return b < a;
  }
  
  public final int hashCode()
  {
    int j = 0;
    if (!c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    Object localObject1 = d.a(b, 0);
    Object localObject2 = d.a(b, 1);
    int i;
    if (localObject1 == null)
    {
      i = 0;
      if (localObject2 != null) {
        break label69;
      }
    }
    for (;;)
    {
      return j ^ i;
      i = localObject1.hashCode();
      break;
      label69:
      j = localObject2.hashCode();
    }
  }
  
  public void remove()
  {
    if (!c) {
      throw new IllegalStateException();
    }
    d.a(b);
    b -= 1;
    a -= 1;
    c = false;
  }
  
  public V setValue(V paramV)
  {
    if (!c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return (V)d.a(b, paramV);
  }
  
  public final String toString()
  {
    return getKey() + "=" + getValue();
  }
}

/* Location:
 * Qualified Name:     gcj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */