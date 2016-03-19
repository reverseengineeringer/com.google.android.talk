import com.google.common.cache.LocalCache.ReferenceEntry;
import java.lang.ref.ReferenceQueue;

public abstract interface kps<K, V>
{
  public abstract int a();
  
  public abstract kps<K, V> a(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry);
  
  public abstract void a(V paramV);
  
  public abstract LocalCache.ReferenceEntry<K, V> b();
  
  public abstract boolean c();
  
  public abstract boolean d();
  
  public abstract V get();
}

/* Location:
 * Qualified Name:     kps
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */