import java.util.AbstractList;
import java.util.Collection;

abstract class lvj<E>
  extends AbstractList<E>
  implements lwj<E>
{
  boolean a = true;
  
  public boolean a()
  {
    return a;
  }
  
  public void add(int paramInt, E paramE)
  {
    c();
    super.add(paramInt, paramE);
  }
  
  public boolean add(E paramE)
  {
    c();
    return super.add(paramE);
  }
  
  public boolean addAll(int paramInt, Collection<? extends E> paramCollection)
  {
    c();
    return super.addAll(paramInt, paramCollection);
  }
  
  public boolean addAll(Collection<? extends E> paramCollection)
  {
    c();
    return super.addAll(paramCollection);
  }
  
  public final void b()
  {
    a = false;
  }
  
  protected void c()
  {
    if (!a) {
      throw new UnsupportedOperationException();
    }
  }
  
  public void clear()
  {
    c();
    super.clear();
  }
  
  public E remove(int paramInt)
  {
    c();
    return (E)super.remove(paramInt);
  }
  
  public boolean remove(Object paramObject)
  {
    c();
    return super.remove(paramObject);
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    c();
    return super.removeAll(paramCollection);
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    c();
    return super.retainAll(paramCollection);
  }
  
  public E set(int paramInt, E paramE)
  {
    c();
    return (E)super.set(paramInt, paramE);
  }
}

/* Location:
 * Qualified Name:     lvj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */