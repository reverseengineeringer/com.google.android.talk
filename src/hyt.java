public final class hyt
{
  final int a;
  final int b;
  final long c;
  private final hyu d;
  
  hyt(int paramInt1, int paramInt2, long paramLong, hyu paramhyu)
  {
    b = paramInt1;
    a = paramInt2;
    c = paramLong;
    d = paramhyu;
  }
  
  hyt(int paramInt1, int paramInt2, hyu paramhyu)
  {
    this(paramInt1, paramInt2, paramInt1 * paramInt2 << 2, paramhyu);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof hyt))
    {
      paramObject = (hyt)paramObject;
      return d.a(this, (hyt)paramObject);
    }
    return false;
  }
  
  public int hashCode()
  {
    return d.a(this);
  }
  
  public String toString()
  {
    int i = b;
    int j = a;
    return 35 + "BitmapKey(" + i + ", " + j + ")";
  }
}

/* Location:
 * Qualified Name:     hyt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */