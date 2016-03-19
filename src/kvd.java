import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;
import java.util.AbstractQueue;
import java.util.Iterator;

public final class kvd<K, V>
  extends AbstractQueue<MapMakerInternalMap.ReferenceEntry<K, V>>
{
  final MapMakerInternalMap.ReferenceEntry<K, V> a = new kve(this);
  
  private MapMakerInternalMap.ReferenceEntry<K, V> a()
  {
    MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = a.getNextEvictable();
    MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = localReferenceEntry2;
    if (localReferenceEntry2 == a) {
      localReferenceEntry1 = null;
    }
    return localReferenceEntry1;
  }
  
  public void clear()
  {
    MapMakerInternalMap.ReferenceEntry localReferenceEntry;
    for (Object localObject = a.getNextEvictable(); localObject != a; localObject = localReferenceEntry)
    {
      localReferenceEntry = ((MapMakerInternalMap.ReferenceEntry)localObject).getNextEvictable();
      MapMakerInternalMap.e((MapMakerInternalMap.ReferenceEntry)localObject);
    }
    a.setNextEvictable(a);
    a.setPreviousEvictable(a);
  }
  
  public boolean contains(Object paramObject)
  {
    return ((MapMakerInternalMap.ReferenceEntry)paramObject).getNextEvictable() != kvm.a;
  }
  
  public boolean isEmpty()
  {
    return a.getNextEvictable() == a;
  }
  
  public Iterator<MapMakerInternalMap.ReferenceEntry<K, V>> iterator()
  {
    return new kvf(this, a());
  }
  
  public boolean remove(Object paramObject)
  {
    paramObject = (MapMakerInternalMap.ReferenceEntry)paramObject;
    MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = ((MapMakerInternalMap.ReferenceEntry)paramObject).getPreviousEvictable();
    MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = ((MapMakerInternalMap.ReferenceEntry)paramObject).getNextEvictable();
    MapMakerInternalMap.b(localReferenceEntry1, localReferenceEntry2);
    MapMakerInternalMap.e((MapMakerInternalMap.ReferenceEntry)paramObject);
    return localReferenceEntry2 != kvm.a;
  }
  
  public int size()
  {
    int i = 0;
    for (MapMakerInternalMap.ReferenceEntry localReferenceEntry = a.getNextEvictable(); localReferenceEntry != a; localReferenceEntry = localReferenceEntry.getNextEvictable()) {
      i += 1;
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kvd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */