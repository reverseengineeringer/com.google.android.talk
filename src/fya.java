import java.lang.reflect.Field;

public final class fya<T>
  extends fxy
{
  private final T a;
  
  private fya(T paramT)
  {
    a = paramT;
  }
  
  public static <T> fxx a(T paramT)
  {
    return new fya(paramT);
  }
  
  public static <T> T a(fxx paramfxx)
  {
    if ((paramfxx instanceof fya)) {
      return (T)a;
    }
    paramfxx = paramfxx.asBinder();
    Object localObject = paramfxx.getClass().getDeclaredFields();
    if (localObject.length == 1)
    {
      localObject = localObject[0];
      if (!((Field)localObject).isAccessible())
      {
        ((Field)localObject).setAccessible(true);
        try
        {
          paramfxx = ((Field)localObject).get(paramfxx);
          return paramfxx;
        }
        catch (NullPointerException paramfxx)
        {
          throw new IllegalArgumentException("Binder object is null.", paramfxx);
        }
        catch (IllegalArgumentException paramfxx)
        {
          throw new IllegalArgumentException("remoteBinder is the wrong class.", paramfxx);
        }
        catch (IllegalAccessException paramfxx)
        {
          throw new IllegalArgumentException("Could not access the field in remoteBinder.", paramfxx);
        }
      }
      throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class.");
    }
    throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class.");
  }
}

/* Location:
 * Qualified Name:     fya
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */