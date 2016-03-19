import java.lang.reflect.Field;

public final class kxx<T>
{
  private final Field a;
  
  public kxx(Field paramField)
  {
    a = paramField;
    paramField.setAccessible(true);
  }
  
  void a(T paramT, int paramInt)
  {
    try
    {
      a.set(paramT, Integer.valueOf(paramInt));
      return;
    }
    catch (IllegalAccessException paramT)
    {
      throw new AssertionError(paramT);
    }
  }
  
  void a(T paramT, Object paramObject)
  {
    try
    {
      a.set(paramT, paramObject);
      return;
    }
    catch (IllegalAccessException paramT)
    {
      throw new AssertionError(paramT);
    }
  }
}

/* Location:
 * Qualified Name:     kxx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */