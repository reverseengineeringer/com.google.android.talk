import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

public class gjf
{
  private static Context a;
  private static ggu b;
  
  public static ggu a(Context paramContext)
  {
    aal.d(paramContext);
    if (b != null) {
      return b;
    }
    int i = fhr.a(paramContext);
    switch (i)
    {
    default: 
      throw new fhp(i);
    }
    gjf.class.getSimpleName();
    Object localObject = (IBinder)a(b(paramContext).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl");
    if (localObject == null) {
      localObject = null;
    }
    for (;;)
    {
      b = (ggu)localObject;
      try
      {
        b.a(fya.a(b(paramContext).getResources()), fhr.a);
        return b;
      }
      catch (RemoteException paramContext)
      {
        IInterface localIInterface;
        throw new ax(paramContext);
      }
      localIInterface = ((IBinder)localObject).queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
      if ((localIInterface != null) && ((localIInterface instanceof ggu))) {
        localObject = (ggu)localIInterface;
      } else {
        localObject = new ggw((IBinder)localObject);
      }
    }
  }
  
  private static <T> T a(Class<?> paramClass)
  {
    try
    {
      Object localObject = paramClass.newInstance();
      return (T)localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new IllegalStateException("Unable to instantiate the dynamic class " + paramClass.getName());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new IllegalStateException("Unable to call the default constructor of " + paramClass.getName());
    }
  }
  
  private static <T> T a(ClassLoader paramClassLoader, String paramString)
  {
    try
    {
      paramClassLoader = a(((ClassLoader)aal.d(paramClassLoader)).loadClass(paramString));
      return paramClassLoader;
    }
    catch (ClassNotFoundException paramClassLoader)
    {
      throw new IllegalStateException("Unable to find dynamic class " + paramString);
    }
  }
  
  private static Context b(Context paramContext)
  {
    if (a == null) {
      a = fhr.d(paramContext);
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     gjf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */