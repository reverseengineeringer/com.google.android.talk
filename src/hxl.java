public final class hxl
{
  private final long a;
  private final long b;
  
  public hxl(long paramLong1, long paramLong2)
  {
    a = paramLong1;
    b = paramLong2;
  }
  
  public long a()
  {
    return a;
  }
  
  public long b()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      do
      {
        return false;
        if (this == paramObject) {
          return true;
        }
      } while (!(paramObject instanceof hxl));
      paramObject = (hxl)paramObject;
    } while ((a != a) || (b != b));
    return true;
  }
  
  public int hashCode()
  {
    return ((int)(a ^ a >>> 32) + 527) * 31 + (int)(b ^ b >>> 32);
  }
  
  public String toString()
  {
    long l1 = a;
    long l2 = b;
    return 41 + l1 + "/" + l2;
  }
}

/* Location:
 * Qualified Name:     hxl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */