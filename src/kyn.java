import java.util.Iterator;

class kyn<F, T>
  implements Iterator<T>
{
  final Iterator<? extends F> a;
  
  kyn(Iterator<? extends F> paramIterator)
  {
    a = ((Iterator)fii.a(paramIterator));
  }
  
  kyn(Iterator paramIterator, knj paramknj)
  {
    this(paramIterator);
  }
  
  T a(F paramF)
  {
    return (T)b.a(paramF);
  }
  
  public final boolean hasNext()
  {
    return a.hasNext();
  }
  
  public final T next()
  {
    return (T)a(a.next());
  }
  
  public final void remove()
  {
    a.remove();
  }
}

/* Location:
 * Qualified Name:     kyn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */