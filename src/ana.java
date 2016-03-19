import java.util.ArrayDeque;
import java.util.Queue;

final class ana
{
  private final Queue<amz> a = new ArrayDeque();
  
  amz a()
  {
    synchronized (a)
    {
      amz localamz = (amz)a.poll();
      ??? = localamz;
      if (localamz == null) {
        ??? = new amz();
      }
      return (amz)???;
    }
  }
  
  void a(amz paramamz)
  {
    synchronized (a)
    {
      if (a.size() < 10) {
        a.offer(paramamz);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     ana
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */