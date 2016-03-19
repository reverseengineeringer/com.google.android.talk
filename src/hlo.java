import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;

public final class hlo
{
  private static Random a = null;
  private static final AtomicLong b = new AtomicLong(8682522807148012L);
  
  public hlo()
  {
    if (a == null) {
      a = new Random(System.nanoTime() ^ b());
    }
  }
  
  public static String a()
  {
    return String.valueOf(a.nextLong() & 0x7FFFFFFFFFFFFFFF);
  }
  
  private static long b()
  {
    long l1;
    long l2;
    do
    {
      l1 = b.get();
      l2 = 1181783497276652981L * l1;
    } while (!b.compareAndSet(l1, l2));
    return l2;
  }
}

/* Location:
 * Qualified Name:     hlo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */