import java.util.concurrent.atomic.AtomicInteger;

public final class ebi
{
  private static final AtomicInteger a = new AtomicInteger(1);
  private final int b;
  
  private ebi(int paramInt)
  {
    b = paramInt;
  }
  
  public static ebi b()
  {
    return new ebi(a.getAndIncrement());
  }
  
  public int a()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     ebi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */