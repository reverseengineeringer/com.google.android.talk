public final class mhi<T>
  implements kog
{
  private static final Object a = new Object();
  private final kog b;
  private volatile Object c = a;
  
  private mhi(kog paramkog)
  {
    b = paramkog;
  }
  
  public static <T> kog a(kog paramkog)
  {
    if (paramkog == null) {
      throw new NullPointerException();
    }
    return new mhi(paramkog);
  }
  
  public T a()
  {
    Object localObject1 = c;
    if (localObject1 == a) {
      try
      {
        Object localObject2 = c;
        localObject1 = localObject2;
        if (localObject2 == a)
        {
          localObject1 = b.a();
          c = localObject1;
        }
        return (T)localObject1;
      }
      finally {}
    }
    return ?;
  }
}

/* Location:
 * Qualified Name:     mhi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */