import java.util.Iterator;

public final class iss
  implements Iterable<T>
{
  public iss(Object paramObject) {}
  
  public Iterator<T> iterator()
  {
    return new ist(this);
  }
}

/* Location:
 * Qualified Name:     iss
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */