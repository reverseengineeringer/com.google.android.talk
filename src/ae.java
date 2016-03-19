import android.os.Build.VERSION;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ae
{
  public static final Set<String> a = new HashSet();
  public static final boolean b = a(System.getProperty("java.vm.version"));
  
  public static Field a(Object paramObject, String paramString)
  {
    Class localClass = paramObject.getClass();
    while (localClass != null) {
      try
      {
        Field localField = localClass.getDeclaredField(paramString);
        if (!localField.isAccessible()) {
          localField.setAccessible(true);
        }
        return localField;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        localClass = localClass.getSuperclass();
      }
    }
    throw new NoSuchFieldException("Field " + paramString + " not found in " + paramObject.getClass());
  }
  
  private static Method a(Object paramObject, String paramString, Class<?>... paramVarArgs)
  {
    Class localClass = paramObject.getClass();
    while (localClass != null) {
      try
      {
        Method localMethod = localClass.getDeclaredMethod(paramString, paramVarArgs);
        if (!localMethod.isAccessible()) {
          localMethod.setAccessible(true);
        }
        return localMethod;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        localClass = localClass.getSuperclass();
      }
    }
    throw new NoSuchMethodException("Method " + paramString + " with parameters " + Arrays.asList(paramVarArgs) + " not found in " + paramObject.getClass());
  }
  
  public static void a(ClassLoader paramClassLoader, File paramFile, List<File> paramList)
  {
    Object localObject2;
    Object localObject1;
    if (!paramList.isEmpty())
    {
      if (Build.VERSION.SDK_INT < 19) {
        break label280;
      }
      localObject2 = a(paramClassLoader, "pathList").get(paramClassLoader);
      localObject1 = new ArrayList();
      paramList = new ArrayList(paramList);
      paramFile = (Object[])a(localObject2, "makeDexElements", new Class[] { ArrayList.class, File.class, ArrayList.class }).invoke(localObject2, new Object[] { paramList, paramFile, localObject1 });
      paramList = a(localObject2, "dexElements");
      Object[] arrayOfObject1 = (Object[])paramList.get(localObject2);
      Object[] arrayOfObject2 = (Object[])Array.newInstance(arrayOfObject1.getClass().getComponentType(), arrayOfObject1.length + paramFile.length);
      System.arraycopy(arrayOfObject1, 0, arrayOfObject2, 0, arrayOfObject1.length);
      System.arraycopy(paramFile, 0, arrayOfObject2, arrayOfObject1.length, paramFile.length);
      paramList.set(localObject2, arrayOfObject2);
      if (((ArrayList)localObject1).size() > 0)
      {
        paramFile = ((ArrayList)localObject1).iterator();
        while (paramFile.hasNext()) {
          paramFile.next();
        }
        paramList = a(paramClassLoader, "dexElementsSuppressedExceptions");
        localObject2 = (IOException[])paramList.get(paramClassLoader);
        if (localObject2 != null) {
          break label245;
        }
        paramFile = (IOException[])((ArrayList)localObject1).toArray(new IOException[((ArrayList)localObject1).size()]);
      }
    }
    for (;;)
    {
      paramList.set(paramClassLoader, paramFile);
      return;
      label245:
      paramFile = new IOException[((ArrayList)localObject1).size() + localObject2.length];
      ((ArrayList)localObject1).toArray(paramFile);
      System.arraycopy(localObject2, 0, paramFile, ((ArrayList)localObject1).size(), localObject2.length);
    }
    label280:
    if (Build.VERSION.SDK_INT >= 14)
    {
      paramClassLoader = a(paramClassLoader, "pathList").get(paramClassLoader);
      paramList = new ArrayList(paramList);
      paramFile = (Object[])a(paramClassLoader, "makeDexElements", new Class[] { ArrayList.class, File.class }).invoke(paramClassLoader, new Object[] { paramList, paramFile });
      paramList = a(paramClassLoader, "dexElements");
      localObject1 = (Object[])paramList.get(paramClassLoader);
      localObject2 = (Object[])Array.newInstance(localObject1.getClass().getComponentType(), localObject1.length + paramFile.length);
      System.arraycopy(localObject1, 0, localObject2, 0, localObject1.length);
      System.arraycopy(paramFile, 0, localObject2, localObject1.length, paramFile.length);
      paramList.set(paramClassLoader, localObject2);
      return;
    }
    aal.a(paramClassLoader, paramList);
  }
  
  public static void a(Object paramObject, String paramString, Object[] paramArrayOfObject)
  {
    paramString = a(paramObject, paramString);
    Object[] arrayOfObject1 = (Object[])paramString.get(paramObject);
    Object[] arrayOfObject2 = (Object[])Array.newInstance(arrayOfObject1.getClass().getComponentType(), arrayOfObject1.length + paramArrayOfObject.length);
    System.arraycopy(arrayOfObject1, 0, arrayOfObject2, 0, arrayOfObject1.length);
    System.arraycopy(paramArrayOfObject, 0, arrayOfObject2, arrayOfObject1.length, paramArrayOfObject.length);
    paramString.set(paramObject, arrayOfObject2);
  }
  
  private static boolean a(String paramString)
  {
    bool2 = false;
    bool1 = bool2;
    if (paramString != null)
    {
      localObject = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(paramString);
      bool1 = bool2;
      if (!((Matcher)localObject).matches()) {}
    }
    try
    {
      int i = Integer.parseInt(((Matcher)localObject).group(1));
      int j = Integer.parseInt(((Matcher)localObject).group(2));
      if (i <= 2)
      {
        bool1 = bool2;
        if (i == 2)
        {
          bool1 = bool2;
          if (j <= 0) {}
        }
      }
      else
      {
        bool1 = true;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        bool1 = bool2;
      }
    }
    Object localObject = new StringBuilder("VM with version ").append(paramString);
    if (bool1) {}
    for (paramString = " has multidex support";; paramString = " does not have multidex support")
    {
      ((StringBuilder)localObject).append(paramString);
      return bool1;
    }
  }
  
  public static boolean a(List<File> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      if (!af.a((File)paramList.next())) {
        return false;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */