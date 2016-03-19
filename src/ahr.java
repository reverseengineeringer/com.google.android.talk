import java.util.Queue;

final class ahr
{
  private final Queue<ahq> a;
  
  public ahr(int paramInt)
  {
    a = avq.a(paramInt);
    int i = 0;
    while (i < paramInt)
    {
      a.offer(new ahq());
      i += 1;
    }
  }
  
  public ahq a(int paramInt1, int paramInt2)
  {
    ahq localahq = (ahq)a.poll();
    a.offer(localahq);
    b = paramInt1;
    a = paramInt2;
    return localahq;
  }
}

/* Location:
 * Qualified Name:     ahr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */