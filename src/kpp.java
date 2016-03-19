import com.google.common.cache.LocalCache.ReferenceEntry;
import java.lang.ref.ReferenceQueue;

public class kpp<K, V>
  implements kps<K, V>
{
  final V a;
  
  kpp(V paramV)
  {
    a = paramV;
  }
  
  public int a()
  {
    return 1;
  }
  
  public kps<K, V> a(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    return this;
  }
  
  public void a(V paramV) {}
  
  public LocalCache.ReferenceEntry<K, V> b()
  {
    return null;
  }
  
  public boolean c()
  {
    return false;
  }
  
  public boolean d()
  {
    return true;
  }
  
  public V get()
  {
    return (V)a;
  }
}

/* Location:
 * Qualified Name:     kpp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */