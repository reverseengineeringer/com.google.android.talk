import java.util.Iterator;
import java.util.Map.Entry;

final class lwn<K>
  implements Iterator<Map.Entry<K, Object>>
{
  private Iterator<Map.Entry<K, Object>> a;
  
  public lwn(Iterator<Map.Entry<K, Object>> paramIterator)
  {
    a = paramIterator;
  }
  
  public boolean hasNext()
  {
    return a.hasNext();
  }
  
  public void remove()
  {
    a.remove();
  }
}

/* Location:
 * Qualified Name:     lwn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */