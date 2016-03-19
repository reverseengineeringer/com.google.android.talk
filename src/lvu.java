final class lvu
{
  private final Object a;
  private final int b;
  
  lvu(Object paramObject, int paramInt)
  {
    a = paramObject;
    b = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof lvu)) {}
    do
    {
      return false;
      paramObject = (lvu)paramObject;
    } while ((a != a) || (b != b));
    return true;
  }
  
  public int hashCode()
  {
    return System.identityHashCode(a) * 65535 + b;
  }
}

/* Location:
 * Qualified Name:     lvu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */