import java.util.HashMap;
import java.util.Map;

final class amh<K extends amp, V>
{
  private final ami<K, V> a = new ami();
  private final Map<K, ami<K, V>> b = new HashMap();
  
  private static <K, V> void a(ami<K, V> paramami)
  {
    b.c = paramami;
    c.b = paramami;
  }
  
  private static <K, V> void b(ami<K, V> paramami)
  {
    c.b = b;
    b.c = c;
  }
  
  public V a()
  {
    for (ami localami = a.c; !localami.equals(a); localami = c)
    {
      Object localObject = localami.a();
      if (localObject != null) {
        return (V)localObject;
      }
      b(localami);
      b.remove(a);
      ((amp)a).a();
    }
    return null;
  }
  
  public V a(K paramK)
  {
    ami localami = (ami)b.get(paramK);
    if (localami == null)
    {
      localami = new ami(paramK);
      b.put(paramK, localami);
    }
    for (paramK = localami;; paramK = localami)
    {
      b(paramK);
      c = a;
      b = a.b;
      a(paramK);
      return (V)paramK.a();
      paramK.a();
    }
  }
  
  public void a(K paramK, V paramV)
  {
    ami localami = (ami)b.get(paramK);
    if (localami == null)
    {
      localami = new ami(paramK);
      b(localami);
      c = a.c;
      b = a;
      a(localami);
      b.put(paramK, localami);
    }
    for (paramK = localami;; paramK = localami)
    {
      paramK.a(paramV);
      return;
      paramK.a();
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("GroupedLinkedMap( ");
    ami localami = a.b;
    int i = 0;
    while (!localami.equals(a))
    {
      i = 1;
      localStringBuilder.append('{').append(a).append(':').append(localami.b()).append("}, ");
      localami = b;
    }
    if (i != 0) {
      localStringBuilder.delete(localStringBuilder.length() - 2, localStringBuilder.length());
    }
    return " )";
  }
}

/* Location:
 * Qualified Name:     amh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */