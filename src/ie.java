public final class ie<T>
  extends id<T>
{
  private final Object a = new Object();
  
  public ie(int paramInt)
  {
    super(paramInt);
  }
  
  public T a()
  {
    synchronized (a)
    {
      Object localObject2 = super.a();
      return (T)localObject2;
    }
  }
  
  public boolean a(T paramT)
  {
    synchronized (a)
    {
      boolean bool = super.a(paramT);
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     ie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */