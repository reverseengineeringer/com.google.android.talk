import java.util.Iterator;
import java.util.NoSuchElementException;

public final class fkm<T>
  implements Iterator<T>
{
  public final fkg<T> a;
  public int b;
  
  public fkm(fkg<T> paramfkg)
  {
    a = ((fkg)aal.d(paramfkg));
    b = -1;
  }
  
  public boolean hasNext()
  {
    return b < a.a() - 1;
  }
  
  public T next()
  {
    if (!hasNext()) {
      throw new NoSuchElementException("Cannot advance the iterator beyond " + b);
    }
    fkg localfkg = a;
    int i = b + 1;
    b = i;
    return (T)localfkg.a(i);
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
  }
}

/* Location:
 * Qualified Name:     fkm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */