import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.WeakHashMap;

public final class iry
{
  private static final Map<Field, iry> a = new WeakHashMap();
  private final boolean b;
  private final Field c;
  private final String d;
  
  private iry(Field paramField, String paramString)
  {
    c = paramField;
    if (paramString == null) {}
    for (paramField = null;; paramField = paramString.intern())
    {
      d = paramField;
      b = irq.a(c.getType());
      return;
    }
  }
  
  /* Error */
  public static iry a(Enum<?> paramEnum)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: invokevirtual 54	java/lang/Object:getClass	()Ljava/lang/Class;
    //   6: aload_0
    //   7: invokevirtual 59	java/lang/Enum:name	()Ljava/lang/String;
    //   10: invokevirtual 65	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   13: invokestatic 68	iry:a	(Ljava/lang/reflect/Field;)Liry;
    //   16: astore_2
    //   17: aload_2
    //   18: ifnull +19 -> 37
    //   21: iload_1
    //   22: ldc 70
    //   24: iconst_1
    //   25: anewarray 4	java/lang/Object
    //   28: dup
    //   29: iconst_0
    //   30: aload_0
    //   31: aastore
    //   32: invokestatic 75	fii:a	(ZLjava/lang/String;[Ljava/lang/Object;)V
    //   35: aload_2
    //   36: areturn
    //   37: iconst_0
    //   38: istore_1
    //   39: goto -18 -> 21
    //   42: astore_0
    //   43: new 77	java/lang/RuntimeException
    //   46: dup
    //   47: aload_0
    //   48: invokespecial 80	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	paramEnum	Enum<?>
    //   1	38	1	bool	boolean
    //   16	20	2	localiry	iry
    // Exception table:
    //   from	to	target	type
    //   2	17	42	java/lang/NoSuchFieldException
    //   21	35	42	java/lang/NoSuchFieldException
  }
  
  public static iry a(Field paramField)
  {
    if (paramField == null) {
      return null;
    }
    label125:
    label147:
    label181:
    for (;;)
    {
      Object localObject;
      synchronized (a)
      {
        iry localiry = (iry)a.get(paramField);
        boolean bool = paramField.isEnumConstant();
        localObject = localiry;
        if (localiry == null) {
          if (!bool)
          {
            localObject = localiry;
            if (Modifier.isStatic(paramField.getModifiers())) {}
          }
          else
          {
            if (!bool) {
              break label147;
            }
            localObject = (isu)paramField.getAnnotation(isu.class);
            if (localObject == null) {
              break label125;
            }
            localObject = ((isu)localObject).a();
            if (!"##default".equals(localObject)) {
              break label181;
            }
            localObject = paramField.getName();
            localObject = new iry(paramField, (String)localObject);
            a.put(paramField, localObject);
          }
        }
        return (iry)localObject;
      }
      if ((isk)paramField.getAnnotation(isk.class) != null)
      {
        localObject = null;
      }
      else
      {
        return null;
        localObject = (isd)paramField.getAnnotation(isd.class);
        if (localObject == null) {
          return null;
        }
        localObject = ((isd)localObject).a();
        paramField.setAccessible(true);
      }
    }
  }
  
  private static Object a(Field paramField, Object paramObject)
  {
    try
    {
      paramField = paramField.get(paramObject);
      return paramField;
    }
    catch (IllegalAccessException paramField)
    {
      throw new IllegalArgumentException(paramField);
    }
  }
  
  public static void a(Field paramField, Object paramObject1, Object paramObject2)
  {
    if (Modifier.isFinal(paramField.getModifiers()))
    {
      Object localObject = a(paramField, paramObject1);
      if (paramObject2 == null)
      {
        if (localObject == null) {}
      }
      else {
        while (!paramObject2.equals(localObject))
        {
          localObject = String.valueOf(localObject);
          paramObject2 = String.valueOf(paramObject2);
          paramField = String.valueOf(paramField.getName());
          paramObject1 = String.valueOf(paramObject1.getClass().getName());
          throw new IllegalArgumentException(String.valueOf(localObject).length() + 48 + String.valueOf(paramObject2).length() + String.valueOf(paramField).length() + String.valueOf(paramObject1).length() + "expected final value <" + (String)localObject + "> but was <" + (String)paramObject2 + "> on " + paramField + " field in " + (String)paramObject1);
        }
      }
      return;
    }
    try
    {
      paramField.set(paramObject1, paramObject2);
      return;
    }
    catch (SecurityException paramField)
    {
      throw new IllegalArgumentException(paramField);
    }
    catch (IllegalAccessException paramField)
    {
      throw new IllegalArgumentException(paramField);
    }
  }
  
  public Object a(Object paramObject)
  {
    return a(c, paramObject);
  }
  
  public Field a()
  {
    return c;
  }
  
  public void a(Object paramObject1, Object paramObject2)
  {
    a(c, paramObject1, paramObject2);
  }
  
  public String b()
  {
    return d;
  }
  
  public Type c()
  {
    return c.getGenericType();
  }
  
  public boolean d()
  {
    return Modifier.isFinal(c.getModifiers());
  }
  
  public boolean e()
  {
    return b;
  }
  
  public <T extends Enum<T>> T f()
  {
    return Enum.valueOf(c.getDeclaringClass(), c.getName());
  }
}

/* Location:
 * Qualified Name:     iry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */