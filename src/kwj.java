import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class kwj
{
  static final knn a = krg.a.c("=");
  
  static <V> V a(Map<?, V> paramMap, Object paramObject)
  {
    fii.a(paramMap);
    try
    {
      paramMap = paramMap.get(paramObject);
      return paramMap;
    }
    catch (ClassCastException paramMap)
    {
      return null;
    }
    catch (NullPointerException paramMap) {}
    return null;
  }
  
  public static <K, V> HashMap<K, V> a(int paramInt)
  {
    return new HashMap(b(paramInt));
  }
  
  public static <K, V> HashMap<K, V> a(Map<? extends K, ? extends V> paramMap)
  {
    return new HashMap(paramMap);
  }
  
  static <K, V> Iterator<K> a(Iterator<Map.Entry<K, V>> paramIterator)
  {
    return kty.a(paramIterator, kwm.a);
  }
  
  public static <K, V> Map.Entry<K, V> a(K paramK, V paramV)
  {
    return new ksc(paramK, paramV);
  }
  
  static <K, V> Map.Entry<K, V> a(Map.Entry<? extends K, ? extends V> paramEntry)
  {
    fii.a(paramEntry);
    return new kwk(paramEntry);
  }
  
  static <K> knj<Map.Entry<K, ?>, K> a()
  {
    return kwm.a;
  }
  
  public static int b(int paramInt)
  {
    if (paramInt < 3)
    {
      aal.c(paramInt, "expectedSize");
      return paramInt + 1;
    }
    if (paramInt < 1073741824) {
      return (int)(paramInt / 0.75F + 1.0F);
    }
    return Integer.MAX_VALUE;
  }
  
  static <K> K b(Map.Entry<K, ?> paramEntry)
  {
    if (paramEntry == null) {
      return null;
    }
    return (K)paramEntry.getKey();
  }
  
  static String b(Map<?, ?> paramMap)
  {
    StringBuilder localStringBuilder = krg.a(paramMap.size()).append('{');
    a.a(localStringBuilder, paramMap);
    return '}';
  }
  
  static <K, V> Iterator<V> b(Iterator<Map.Entry<K, V>> paramIterator)
  {
    return kty.a(paramIterator, kwm.b);
  }
  
  static <V> knj<Map.Entry<?, V>, V> b()
  {
    return kwm.b;
  }
  
  static boolean b(Map<?, ?> paramMap, Object paramObject)
  {
    fii.a(paramMap);
    try
    {
      boolean bool = paramMap.containsKey(paramObject);
      return bool;
    }
    catch (ClassCastException paramMap)
    {
      return false;
    }
    catch (NullPointerException paramMap) {}
    return false;
  }
  
  static <V> V c(Map<?, V> paramMap, Object paramObject)
  {
    fii.a(paramMap);
    try
    {
      paramMap = paramMap.remove(paramObject);
      return paramMap;
    }
    catch (ClassCastException paramMap)
    {
      return null;
    }
    catch (NullPointerException paramMap) {}
    return null;
  }
  
  public static <K, V> HashMap<K, V> c()
  {
    return new HashMap();
  }
  
  public static <K, V> LinkedHashMap<K, V> c(int paramInt)
  {
    return new LinkedHashMap(b(paramInt));
  }
  
  static <K, V> kyp<Map.Entry<K, V>> c(Iterator<Map.Entry<K, V>> paramIterator)
  {
    return new kwl(paramIterator);
  }
  
  static boolean d(Map<?, ?> paramMap, Object paramObject)
  {
    if (paramMap == paramObject) {
      return true;
    }
    if ((paramObject instanceof Map))
    {
      paramObject = (Map)paramObject;
      return paramMap.entrySet().equals(((Map)paramObject).entrySet());
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     kwj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */