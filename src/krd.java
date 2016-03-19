import java.util.NoSuchElementException;

public abstract class krd<T>
  extends kyp<T>
{
  private T a;
  
  protected krd(T paramT)
  {
    a = paramT;
  }
  
  protected abstract T a(T paramT);
  
  public final boolean hasNext()
  {
    return a != null;
  }
  
  public final T next()
  {
    if (!hasNext()) {
      throw new NoSuchElementException();
    }
    try
    {
      Object localObject1 = a;
      return (T)localObject1;
    }
    finally
    {
      a = a(a);
    }
  }
}

/* Location:
 * Qualified Name:     krd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */