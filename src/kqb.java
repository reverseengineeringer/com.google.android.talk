import com.google.common.cache.LocalCache.ReferenceEntry;
import java.lang.ref.ReferenceQueue;

public final class kqb<K, V>
  extends kpx<K, V>
{
  final int b;
  
  kqb(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry, int paramInt)
  {
    super(paramReferenceQueue, paramV, paramReferenceEntry);
    b = paramInt;
  }
  
  public int a()
  {
    return b;
  }
  
  public kps<K, V> a(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    return new kqb(paramReferenceQueue, paramV, paramReferenceEntry, b);
  }
}

/* Location:
 * Qualified Name:     kqb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */