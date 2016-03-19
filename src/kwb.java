import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;
import java.lang.ref.ReferenceQueue;

public abstract interface kwb<K, V>
{
  public abstract MapMakerInternalMap.ReferenceEntry<K, V> a();
  
  public abstract kwb<K, V> a(ReferenceQueue<V> paramReferenceQueue, V paramV, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry);
  
  public abstract void b();
  
  public abstract V get();
}

/* Location:
 * Qualified Name:     kwb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */