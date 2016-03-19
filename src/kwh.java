import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

public final class kwh<K, V>
  extends WeakReference<V>
  implements kwb<K, V>
{
  final MapMakerInternalMap.ReferenceEntry<K, V> a;
  
  kwh(ReferenceQueue<V> paramReferenceQueue, V paramV, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    super(paramV, paramReferenceQueue);
    a = paramReferenceEntry;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> a()
  {
    return a;
  }
  
  public kwb<K, V> a(ReferenceQueue<V> paramReferenceQueue, V paramV, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    return new kwh(paramReferenceQueue, paramV, paramReferenceEntry);
  }
  
  public void b()
  {
    clear();
  }
}

/* Location:
 * Qualified Name:     kwh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */