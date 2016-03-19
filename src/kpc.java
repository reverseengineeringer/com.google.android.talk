import com.google.common.cache.LocalCache;
import com.google.common.cache.LocalCache.ReferenceEntry;
import java.lang.ref.ReferenceQueue;
import java.util.concurrent.TimeUnit;

public final class kpc<K, V>
  implements kps<K, V>
{
  volatile kps<K, V> a;
  final lbl<V> b = new lbl();
  final koe c = new koe();
  
  public kpc()
  {
    this(LocalCache.r);
  }
  
  public kpc(kps<K, V> paramkps)
  {
    a = paramkps;
  }
  
  public int a()
  {
    return a.a();
  }
  
  public kps<K, V> a(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    return this;
  }
  
  public lbb<V> a(K paramK, aak paramaak)
  {
    try
    {
      c.a();
      Object localObject = a.get();
      if (localObject == null)
      {
        paramK = paramaak.g();
        if (b(paramK)) {
          return b;
        }
        return lau.g(paramK);
      }
      paramK = paramaak.a(paramK, localObject);
      if (paramK == null) {
        return lau.g(null);
      }
      paramK = lau.a(paramK, new kpd(this));
      return paramK;
    }
    catch (Throwable paramaak)
    {
      if (a(paramaak)) {}
      for (paramK = b; (paramaak instanceof InterruptedException); paramK = lau.a(paramaak))
      {
        Thread.currentThread().interrupt();
        return paramK;
      }
    }
    return paramK;
  }
  
  public void a(V paramV)
  {
    if (paramV != null)
    {
      b(paramV);
      return;
    }
    a = LocalCache.r;
  }
  
  public boolean a(Throwable paramThrowable)
  {
    return b.a(paramThrowable);
  }
  
  public LocalCache.ReferenceEntry<K, V> b()
  {
    return null;
  }
  
  public boolean b(V paramV)
  {
    return b.b(paramV);
  }
  
  public boolean c()
  {
    return true;
  }
  
  public boolean d()
  {
    return a.d();
  }
  
  public long e()
  {
    return c.a(TimeUnit.NANOSECONDS);
  }
  
  public kps<K, V> f()
  {
    return a;
  }
  
  public V get()
  {
    return (V)a.get();
  }
}

/* Location:
 * Qualified Name:     kpc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */