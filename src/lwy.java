import java.util.Iterator;
import java.util.NoSuchElementException;

final class lwy
  implements Iterator<Object>
{
  public boolean hasNext()
  {
    return false;
  }
  
  public Object next()
  {
    throw new NoSuchElementException();
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     lwy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */