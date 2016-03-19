import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;
import java.util.AbstractQueue;
import java.util.Iterator;

public final class kvg<K, V>
  extends AbstractQueue<MapMakerInternalMap.ReferenceEntry<K, V>>
{
  final MapMakerInternalMap.ReferenceEntry<K, V> a = new kvh(this);
  
  private MapMakerInternalMap.ReferenceEntry<K, V> a()
  {
    MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = a.getNextExpirable();
    MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = localReferenceEntry2;
    if (localReferenceEntry2 == a) {
      localReferenceEntry1 = null;
    }
    return localReferenceEntry1;
  }
  
  public void clear()
  {
    MapMakerInternalMap.ReferenceEntry localReferenceEntry;
    for (Object localObject = a.getNextExpirable(); localObject != a; localObject = localReferenceEntry)
    {
      localReferenceEntry = ((MapMakerInternalMap.ReferenceEntry)localObject).getNextExpirable();
      MapMakerInternalMap.d((MapMakerInternalMap.ReferenceEntry)localObject);
    }
    a.setNextExpirable(a);
    a.setPreviousExpirable(a);
  }
  
  public boolean contains(Object paramObject)
  {
    return ((MapMakerInternalMap.ReferenceEntry)paramObject).getNextExpirable() != kvm.a;
  }
  
  public boolean isEmpty()
  {
    return a.getNextExpirable() == a;
  }
  
  public Iterator<MapMakerInternalMap.ReferenceEntry<K, V>> iterator()
  {
    return new kvi(this, a());
  }
  
  public boolean remove(Object paramObject)
  {
    paramObject = (MapMakerInternalMap.ReferenceEntry)paramObject;
    MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = ((MapMakerInternalMap.ReferenceEntry)paramObject).getPreviousExpirable();
    MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = ((MapMakerInternalMap.ReferenceEntry)paramObject).getNextExpirable();
    MapMakerInternalMap.a(localReferenceEntry1, localReferenceEntry2);
    MapMakerInternalMap.d((MapMakerInternalMap.ReferenceEntry)paramObject);
    return localReferenceEntry2 != kvm.a;
  }
  
  public int size()
  {
    int i = 0;
    for (MapMakerInternalMap.ReferenceEntry localReferenceEntry = a.getNextExpirable(); localReferenceEntry != a; localReferenceEntry = localReferenceEntry.getNextExpirable()) {
      i += 1;
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kvg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */