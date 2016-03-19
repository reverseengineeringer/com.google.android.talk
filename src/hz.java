import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class hz
  implements Set<K>
{
  hz(hw paramhw) {}
  
  public boolean add(K paramK)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean addAll(Collection<? extends K> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public void clear()
  {
    a.c();
  }
  
  public boolean contains(Object paramObject)
  {
    return a.a(paramObject) >= 0;
  }
  
  public boolean containsAll(Collection<?> paramCollection)
  {
    Map localMap = a.b();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (!localMap.containsKey(paramCollection.next())) {
        return false;
      }
    }
    return true;
  }
  
  public boolean equals(Object paramObject)
  {
    return hw.a(this, paramObject);
  }
  
  public int hashCode()
  {
    int i = a.a() - 1;
    int j = 0;
    if (i >= 0)
    {
      Object localObject = a.a(i, 0);
      if (localObject == null) {}
      for (int k = 0;; k = localObject.hashCode())
      {
        j += k;
        i -= 1;
        break;
      }
    }
    return j;
  }
  
  public boolean isEmpty()
  {
    return a.a() == 0;
  }
  
  public Iterator<K> iterator()
  {
    return new hx(a, 0);
  }
  
  public boolean remove(Object paramObject)
  {
    int i = a.a(paramObject);
    if (i >= 0)
    {
      a.a(i);
      return true;
    }
    return false;
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    Map localMap = a.b();
    int i = localMap.size();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      localMap.remove(paramCollection.next());
    }
    return i != localMap.size();
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    return hw.a(a.b(), paramCollection);
  }
  
  public int size()
  {
    return a.a();
  }
  
  public Object[] toArray()
  {
    return a.b(0);
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return a.a(paramArrayOfT, 0);
  }
}

/* Location:
 * Qualified Name:     hz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */