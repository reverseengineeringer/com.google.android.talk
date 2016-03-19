import com.google.common.cache.LocalCache.ReferenceEntry;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;

public class kph<K, V>
  extends SoftReference<V>
  implements kps<K, V>
{
  final LocalCache.ReferenceEntry<K, V> a;
  
  kph(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    super(paramV, paramReferenceQueue);
    a = paramReferenceEntry;
  }
  
  public int a()
  {
    return 1;
  }
  
  public kps<K, V> a(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    return new kph(paramReferenceQueue, paramV, paramReferenceEntry);
  }
  
  public void a(V paramV) {}
  
  public LocalCache.ReferenceEntry<K, V> b()
  {
    return a;
  }
  
  public boolean c()
  {
    return false;
  }
  
  public boolean d()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     kph
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */