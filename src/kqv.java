import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;

class kqv
  extends AbstractCollection<V>
{
  final K b;
  Collection<V> c;
  final kqv d;
  final Collection<V> e;
  
  kqv(K paramK, Collection<V> paramCollection, kqv paramkqv)
  {
    b = paramCollection;
    c = paramkqv;
    kqv localkqv;
    d = localkqv;
    if (localkqv == null) {}
    for (paramK = null;; paramK = localkqv.e())
    {
      e = paramK;
      return;
    }
  }
  
  void a()
  {
    if (d != null)
    {
      d.a();
      if (d.e() != e) {
        throw new ConcurrentModificationException();
      }
    }
    else if (c.isEmpty())
    {
      Collection localCollection = (Collection)f.a.get(b);
      if (localCollection != null) {
        c = localCollection;
      }
    }
  }
  
  public boolean add(V paramV)
  {
    a();
    boolean bool1 = c.isEmpty();
    boolean bool2 = c.add(paramV);
    if (bool2)
    {
      kqm.b(f);
      if (bool1) {
        d();
      }
    }
    return bool2;
  }
  
  public boolean addAll(Collection<? extends V> paramCollection)
  {
    boolean bool1;
    if (paramCollection.isEmpty()) {
      bool1 = false;
    }
    int i;
    boolean bool2;
    do
    {
      do
      {
        return bool1;
        i = size();
        bool2 = c.addAll(paramCollection);
        bool1 = bool2;
      } while (!bool2);
      int j = c.size();
      f.b = (j - i + f.b);
      bool1 = bool2;
    } while (i != 0);
    d();
    return bool2;
  }
  
  void b()
  {
    if (d != null) {
      d.b();
    }
    while (!c.isEmpty()) {
      return;
    }
    f.a.remove(b);
  }
  
  K c()
  {
    return (K)b;
  }
  
  public void clear()
  {
    int i = size();
    if (i == 0) {
      return;
    }
    c.clear();
    f.b -= i;
    b();
  }
  
  public boolean contains(Object paramObject)
  {
    a();
    return c.contains(paramObject);
  }
  
  public boolean containsAll(Collection<?> paramCollection)
  {
    a();
    return c.containsAll(paramCollection);
  }
  
  void d()
  {
    if (d != null)
    {
      d.d();
      return;
    }
    f.a.put(b, c);
  }
  
  Collection<V> e()
  {
    return c;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    a();
    return c.equals(paramObject);
  }
  
  kqv f()
  {
    return d;
  }
  
  public int hashCode()
  {
    a();
    return c.hashCode();
  }
  
  public Iterator<V> iterator()
  {
    a();
    return new kqw(this);
  }
  
  public boolean remove(Object paramObject)
  {
    a();
    boolean bool = c.remove(paramObject);
    if (bool)
    {
      kqm.a(f);
      b();
    }
    return bool;
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    boolean bool1;
    if (paramCollection.isEmpty()) {
      bool1 = false;
    }
    int i;
    boolean bool2;
    do
    {
      return bool1;
      i = size();
      bool2 = c.removeAll(paramCollection);
      bool1 = bool2;
    } while (!bool2);
    int j = c.size();
    f.b = (j - i + f.b);
    b();
    return bool2;
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    fii.a(paramCollection);
    int i = size();
    boolean bool = c.retainAll(paramCollection);
    if (bool)
    {
      int j = c.size();
      f.b = (j - i + f.b);
      b();
    }
    return bool;
  }
  
  public int size()
  {
    a();
    return c.size();
  }
  
  public String toString()
  {
    a();
    return c.toString();
  }
}

/* Location:
 * Qualified Name:     kqv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */