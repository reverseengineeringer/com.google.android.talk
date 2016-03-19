import com.google.common.cache.LocalCache.ReferenceEntry;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

public class kpx<K, V>
  extends WeakReference<V>
  implements kps<K, V>
{
  final LocalCache.ReferenceEntry<K, V> a;
  
  kpx(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
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
    return new kpx(paramReferenceQueue, paramV, paramReferenceEntry);
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
 * Qualified Name:     kpx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */