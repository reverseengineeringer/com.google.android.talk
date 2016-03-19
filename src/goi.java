import java.util.Iterator;
import java.util.NoSuchElementException;

public final class goi<T>
  implements Iterable<T>, Iterator<T>
{
  public boolean hasNext()
  {
    return false;
  }
  
  public Iterator<T> iterator()
  {
    return this;
  }
  
  public T next()
  {
    throw new NoSuchElementException();
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     goi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */