import java.util.concurrent.ExecutionException;

final class lay<V>
  extends lax<V>
{
  private final Throwable a;
  
  lay(Throwable paramThrowable)
  {
    a = paramThrowable;
  }
  
  public V get()
  {
    throw new ExecutionException(a);
  }
}

/* Location:
 * Qualified Name:     lay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */