import java.util.Iterator;

final class kue<E>
  implements kxk<E>
{
  private final Iterator<? extends E> a;
  private boolean b;
  private E c;
  
  public kue(Iterator<? extends E> paramIterator)
  {
    a = ((Iterator)fii.a(paramIterator));
  }
  
  public E a()
  {
    if (!b)
    {
      c = a.next();
      b = true;
    }
    return (E)c;
  }
  
  public boolean hasNext()
  {
    return (b) || (a.hasNext());
  }
  
  public E next()
  {
    if (!b) {
      return (E)a.next();
    }
    Object localObject = c;
    b = false;
    c = null;
    return (E)localObject;
  }
  
  public void remove()
  {
    if (!b) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "Can't remove after you've peeked at next");
      a.remove();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     kue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */