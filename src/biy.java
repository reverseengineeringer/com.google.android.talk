final class biy
  implements Comparable<biy>
{
  private static long e;
  public final long a;
  public final long b;
  public final czb c;
  public final egy d;
  
  public biy(long paramLong)
  {
    a = paramLong;
    c = null;
    b = -1L;
    d = null;
  }
  
  public biy(egy paramegy)
  {
    d = paramegy;
    a = paramegy.c();
    c = paramegy.b();
    long l2 = System.currentTimeMillis() * 100L;
    long l1 = l2;
    if (l2 <= e) {
      l1 = e + 1L;
    }
    e = l1;
    b = l1;
  }
}

/* Location:
 * Qualified Name:     biy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */