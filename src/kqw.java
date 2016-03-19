import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

class kqw
  implements Iterator<V>
{
  final Iterator<V> a;
  final Collection<V> b = c.c;
  
  kqw(kqv paramkqv)
  {
    paramkqv = c;
    if ((paramkqv instanceof List)) {}
    for (paramkqv = ((List)paramkqv).listIterator();; paramkqv = paramkqv.iterator())
    {
      a = paramkqv;
      return;
    }
  }
  
  kqw(Iterator<V> paramIterator)
  {
    Iterator localIterator;
    a = localIterator;
  }
  
  void a()
  {
    c.a();
    if (c.c != b) {
      throw new ConcurrentModificationException();
    }
  }
  
  Iterator<V> b()
  {
    a();
    return a;
  }
  
  public boolean hasNext()
  {
    a();
    return a.hasNext();
  }
  
  public V next()
  {
    a();
    return (V)a.next();
  }
  
  public void remove()
  {
    a.remove();
    kqm.a(c.f);
    c.b();
  }
}

/* Location:
 * Qualified Name:     kqw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */