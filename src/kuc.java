import java.util.Iterator;
import java.util.NoSuchElementException;

final class kuc
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
    fii.b(false, "no calls to next() since the last call to remove()");
  }
}

/* Location:
 * Qualified Name:     kuc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */