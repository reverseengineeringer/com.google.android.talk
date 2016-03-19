import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReferenceArray;

public abstract class kvj<E>
  implements Iterator<E>
{
  int b;
  int c;
  kvo<K, V> d;
  AtomicReferenceArray<MapMakerInternalMap.ReferenceEntry<K, V>> e;
  MapMakerInternalMap.ReferenceEntry<K, V> f;
  kwi g;
  kwi h;
  
  kvj(MapMakerInternalMap paramMapMakerInternalMap)
  {
    b = (c.length - 1);
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
        kvo[] arrayOfkvo = i.c;
        int j = b;
        b = (j - 1);
        d = arrayOfkvo[j];
      } while (d.b == 0);
      e = d.e;
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
  
  boolean a(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    try
    {
      Object localObject = paramReferenceEntry.getKey();
      paramReferenceEntry = i.b(paramReferenceEntry);
      if (paramReferenceEntry != null)
      {
        g = new kwi(i, localObject, paramReferenceEntry);
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
      localObject = (MapMakerInternalMap.ReferenceEntry)((AtomicReferenceArray)localObject).get(j);
      f = ((MapMakerInternalMap.ReferenceEntry)localObject);
      if ((localObject != null) && ((a(f)) || (a()))) {
        return true;
      }
    }
    return false;
  }
  
  kwi c()
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
      fii.b(bool, "no calls to next() since the last call to remove()");
      i.remove(h.getKey());
      h = null;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     kvj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */