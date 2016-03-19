import java.util.Queue;

final class apf<A>
{
  private static final Queue<apf<?>> a = avq.a(0);
  private int b;
  private int c;
  private A d;
  
  static <A> apf<A> a(A paramA, int paramInt1, int paramInt2)
  {
    synchronized (a)
    {
      apf localapf = (apf)a.poll();
      ??? = localapf;
      if (localapf == null) {
        ??? = new apf();
      }
      d = paramA;
      c = paramInt1;
      b = paramInt2;
      return (apf<A>)???;
    }
  }
  
  public void a()
  {
    synchronized (a)
    {
      a.offer(this);
      return;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof apf))
    {
      paramObject = (apf)paramObject;
      bool1 = bool2;
      if (c == c)
      {
        bool1 = bool2;
        if (b == b)
        {
          bool1 = bool2;
          if (d.equals(d)) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return (b * 31 + c) * 31 + d.hashCode();
  }
}

/* Location:
 * Qualified Name:     apf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */