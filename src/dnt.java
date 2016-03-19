final class dnt
{
  long a;
  Object b;
  
  dnt(Object paramObject, long paramLong)
  {
    b = paramObject;
    a = paramLong;
  }
  
  boolean a(Object paramObject)
  {
    return (paramObject == b) || ((paramObject != null) && (paramObject.equals(b)));
  }
}

/* Location:
 * Qualified Name:     dnt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */