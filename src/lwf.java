import java.io.Serializable;
import java.lang.reflect.Field;

final class lwf
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  private final String a;
  private final byte[] b;
  
  lwf(lwp paramlwp)
  {
    a = paramlwp.getClass().getName();
    b = paramlwp.a();
  }
  
  protected Object readResolve()
  {
    try
    {
      localObject = Class.forName(a).getDeclaredField("DEFAULT_INSTANCE");
      ((Field)localObject).setAccessible(true);
      localObject = ((lwp)((Field)localObject).get(null)).i().b(b).h();
      return localObject;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localObject = String.valueOf(a);
      if (((String)localObject).length() != 0) {}
      for (localObject = "Unable to find proto buffer class: ".concat((String)localObject);; localObject = new String("Unable to find proto buffer class: ")) {
        throw new RuntimeException((String)localObject, localClassNotFoundException);
      }
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      localObject = String.valueOf(a);
      if (((String)localObject).length() != 0) {}
      for (localObject = "Unable to find DEFAULT_INSTANCE in ".concat((String)localObject);; localObject = new String("Unable to find DEFAULT_INSTANCE in ")) {
        throw new RuntimeException((String)localObject, localNoSuchFieldException);
      }
    }
    catch (SecurityException localSecurityException)
    {
      Object localObject = String.valueOf(a);
      if (((String)localObject).length() != 0) {}
      for (localObject = "Unable to call DEFAULT_INSTANCE in ".concat((String)localObject);; localObject = new String("Unable to call DEFAULT_INSTANCE in ")) {
        throw new RuntimeException((String)localObject, localSecurityException);
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new RuntimeException("Unable to call parsePartialFrom", localIllegalAccessException);
    }
    catch (lwk locallwk)
    {
      throw new RuntimeException("Unable to understand proto buffer", locallwk);
    }
  }
}

/* Location:
 * Qualified Name:     lwf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */