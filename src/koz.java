import com.google.common.cache.LocalCache;
import com.google.common.cache.LocalCache.ReferenceEntry;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReferenceArray;

public abstract class koz<T>
  implements Iterator<T>
{
  int b;
  int c;
  kpf<K, V> d;
  AtomicReferenceArray<LocalCache.ReferenceEntry<K, V>> e;
  LocalCache.ReferenceEntry<K, V> f;
  kqc g;
  kqc h;
  
  koz(LocalCache paramLocalCache)
  {
    b = (d.length - 1);
    c = -1;
    d();
  }
  
  private void d()
  {
    g = null;
    if (a()) {}
    do
    {
      do
      {
        do
        {
          ;;
          while (b()) {}
        } while (b < 0);
        kpf[] arrayOfkpf = i.d;
        int j = b;
        b = (j - 1);
        d = arrayOfkpf[j];
      } while (d.b == 0);
      e = d.f;
      c = (e.length() - 1);
    } while (!b());
  }
  
  boolean a()
  {
    if (f != null) {
      for (f = f.getNext(); f != null; f = f.getNext()) {
        if (a(f)) {
          return true;
        }
      }
    }
    return false;
  }
  
  boolean a(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    try
    {
      long l = i.o.a();
      Object localObject = paramReferenceEntry.getKey();
      paramReferenceEntry = i.a(paramReferenceEntry, l);
      if (paramReferenceEntry != null)
      {
        g = new kqc(i, localObject, paramReferenceEntry);
        return true;
      }
      return false;
    }
    finally
    {
      d.b();
    }
  }
  
  boolean b()
  {
    while (c >= 0)
    {
      Object localObject = e;
      int j = c;
      c = (j - 1);
      localObject = (LocalCache.ReferenceEntry)((AtomicReferenceArray)localObject).get(j);
      f = ((LocalCache.ReferenceEntry)localObject);
      if ((localObject != null) && ((a(f)) || (a()))) {
        return true;
      }
    }
    return false;
  }
  
  kqc c()
  {
    if (g == null) {
      throw new NoSuchElementException();
    }
    h = g;
    d();
    return h;
  }
  
  public boolean hasNext()
  {
    return g != null;
  }
  
  public void remove()
  {
    if (h != null) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool);
      i.remove(h.getKey());
      h = null;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     koz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */