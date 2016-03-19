import java.util.NoSuchElementException;

final class kub
  extends kyp<T>
{
  boolean a;
  
  kub(Object paramObject) {}
  
  public boolean hasNext()
  {
    return !a;
  }
  
  public T next()
  {
    if (a) {
      throw new NoSuchElementException();
    }
    a = true;
    return (T)b;
  }
}

/* Location:
 * Qualified Name:     kub
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */