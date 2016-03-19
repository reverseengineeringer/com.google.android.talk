import java.io.Serializable;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class ksm<K, V>
  implements Serializable, Map<K, V>
{
  public static final Map.Entry<?, ?>[] a = new Map.Entry[0];
  private transient kth<Map.Entry<K, V>> b;
  private transient kth<K> c;
  private transient krz<V> d;
  
  public static <K, V> ksm<K, V> a(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4)
  {
    return kxs.a(4, new Map.Entry[] { b(paramK1, paramV1), b(paramK2, paramV2), b(paramK3, paramV3), b(paramK4, paramV4) });
  }
  
  public static <K extends Enum<K>, V> ksm<K, V> a(EnumMap<K, ? extends V> paramEnumMap)
  {
    paramEnumMap = new EnumMap(paramEnumMap);
    Iterator localIterator = paramEnumMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      aal.e(localEntry.getKey(), localEntry.getValue());
    }
    switch (paramEnumMap.size())
    {
    default: 
      return new ksd(paramEnumMap);
    case 0: 
      return kxm.b;
    }
    paramEnumMap = (Map.Entry)aal.a(paramEnumMap.entrySet());
    return krw.a(paramEnumMap.getKey(), paramEnumMap.getValue());
  }
  
  static void a(boolean paramBoolean, String paramString, Map.Entry<?, ?> paramEntry1, Map.Entry<?, ?> paramEntry2)
  {
    if (!paramBoolean)
    {
      paramEntry1 = String.valueOf(paramEntry1);
      paramEntry2 = String.valueOf(paramEntry2);
      throw new IllegalArgumentException(String.valueOf(paramString).length() + 34 + String.valueOf(paramEntry1).length() + String.valueOf(paramEntry2).length() + "Multiple entries with same " + paramString + ": " + paramEntry1 + " and " + paramEntry2);
    }
  }
  
  static <K, V> kss<K, V> b(K paramK, V paramV)
  {
    return new kss(paramK, paramV);
  }
  
  kyp<K> aa_()
  {
    return new ksn(this, e().a());
  }
  
  public krz<V> c()
  {
    krz localkrz = d;
    Object localObject = localkrz;
    if (localkrz == null)
    {
      localObject = new kta(this);
      d = ((krz)localObject);
    }
    return (krz<V>)localObject;
  }
  
  @Deprecated
  public final void clear()
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean containsKey(Object paramObject)
  {
    return get(paramObject) != null;
  }
  
  public boolean containsValue(Object paramObject)
  {
    return c().contains(paramObject);
  }
  
  public abstract boolean d();
  
  public kth<Map.Entry<K, V>> e()
  {
    kth localkth2 = b;
    kth localkth1 = localkth2;
    if (localkth2 == null)
    {
      localkth1 = f();
      b = localkth1;
    }
    return localkth1;
  }
  
  public boolean equals(Object paramObject)
  {
    return kwj.d(this, paramObject);
  }
  
  abstract kth<Map.Entry<K, V>> f();
  
  public kth<K> g()
  {
    kth localkth2 = c;
    kth localkth1 = localkth2;
    if (localkth2 == null)
    {
      localkth1 = h();
      c = localkth1;
    }
    return localkth1;
  }
  
  public abstract V get(Object paramObject);
  
  kth<K> h()
  {
    if (isEmpty()) {
      return kxt.a;
    }
    return new ksy(this);
  }
  
  public int hashCode()
  {
    return aen.a(e());
  }
  
  boolean i()
  {
    return false;
  }
  
  public boolean isEmpty()
  {
    return size() == 0;
  }
  
  @Deprecated
  public final V put(K paramK, V paramV)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final void putAll(Map<? extends K, ? extends V> paramMap)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final V remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
  
  public String toString()
  {
    return kwj.b(this);
  }
  
  Object writeReplace()
  {
    return new ksr(this);
  }
}

/* Location:
 * Qualified Name:     ksm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */