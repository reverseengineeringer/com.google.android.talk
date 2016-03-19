import android.util.Log;
import java.lang.reflect.Method;

public final class ipu
{
  private static final Method a;
  private static final Method b;
  private static final Method c;
  
  /* Error */
  static
  {
    // Byte code:
    //   0: ldc 14
    //   2: invokestatic 20	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: astore 4
    //   7: aload 4
    //   9: ldc 22
    //   11: iconst_2
    //   12: anewarray 16	java/lang/Class
    //   15: dup
    //   16: iconst_0
    //   17: ldc 24
    //   19: aastore
    //   20: dup
    //   21: iconst_1
    //   22: ldc 24
    //   24: aastore
    //   25: invokevirtual 28	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   28: astore_0
    //   29: aload 4
    //   31: ldc 30
    //   33: iconst_2
    //   34: anewarray 16	java/lang/Class
    //   37: dup
    //   38: iconst_0
    //   39: ldc 24
    //   41: aastore
    //   42: dup
    //   43: iconst_1
    //   44: getstatic 36	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   47: aastore
    //   48: invokevirtual 28	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   51: astore_1
    //   52: aload_1
    //   53: astore_3
    //   54: aload_0
    //   55: astore_2
    //   56: aload 4
    //   58: ldc 38
    //   60: iconst_2
    //   61: anewarray 16	java/lang/Class
    //   64: dup
    //   65: iconst_0
    //   66: ldc 24
    //   68: aastore
    //   69: dup
    //   70: iconst_1
    //   71: getstatic 41	java/lang/Long:TYPE	Ljava/lang/Class;
    //   74: aastore
    //   75: invokevirtual 28	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   78: astore 4
    //   80: aload_0
    //   81: putstatic 43	ipu:a	Ljava/lang/reflect/Method;
    //   84: aload_1
    //   85: putstatic 45	ipu:b	Ljava/lang/reflect/Method;
    //   88: aload 4
    //   90: putstatic 47	ipu:c	Ljava/lang/reflect/Method;
    //   93: return
    //   94: astore 4
    //   96: aconst_null
    //   97: astore_1
    //   98: aconst_null
    //   99: astore_0
    //   100: aload_1
    //   101: astore_3
    //   102: aload_0
    //   103: astore_2
    //   104: aload 4
    //   106: invokevirtual 50	java/lang/Exception:printStackTrace	()V
    //   109: aload_0
    //   110: putstatic 43	ipu:a	Ljava/lang/reflect/Method;
    //   113: aload_1
    //   114: putstatic 45	ipu:b	Ljava/lang/reflect/Method;
    //   117: aconst_null
    //   118: putstatic 47	ipu:c	Ljava/lang/reflect/Method;
    //   121: return
    //   122: astore_1
    //   123: aconst_null
    //   124: astore_3
    //   125: aconst_null
    //   126: astore_0
    //   127: aload_0
    //   128: putstatic 43	ipu:a	Ljava/lang/reflect/Method;
    //   131: aload_3
    //   132: putstatic 45	ipu:b	Ljava/lang/reflect/Method;
    //   135: aconst_null
    //   136: putstatic 47	ipu:c	Ljava/lang/reflect/Method;
    //   139: aload_1
    //   140: athrow
    //   141: astore_1
    //   142: aconst_null
    //   143: astore_3
    //   144: goto -17 -> 127
    //   147: astore_1
    //   148: aload_2
    //   149: astore_0
    //   150: goto -23 -> 127
    //   153: astore 4
    //   155: aconst_null
    //   156: astore_1
    //   157: goto -57 -> 100
    //   160: astore 4
    //   162: goto -62 -> 100
    // Local variable table:
    //   start	length	slot	name	signature
    //   28	122	0	localObject1	Object
    //   51	63	1	localMethod1	Method
    //   122	18	1	localObject2	Object
    //   141	1	1	localObject3	Object
    //   147	1	1	localObject4	Object
    //   156	1	1	localObject5	Object
    //   55	94	2	localObject6	Object
    //   53	91	3	localMethod2	Method
    //   5	84	4	localObject7	Object
    //   94	11	4	localException1	Exception
    //   153	1	4	localException2	Exception
    //   160	1	4	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   0	29	94	java/lang/Exception
    //   0	29	122	finally
    //   29	52	141	finally
    //   56	80	147	finally
    //   104	109	147	finally
    //   29	52	153	java/lang/Exception
    //   56	80	160	java/lang/Exception
  }
  
  public static long a(String paramString)
  {
    try
    {
      if (c != null)
      {
        long l = ((Long)c.invoke(null, new Object[] { paramString, Long.valueOf(100L) })).longValue();
        return l;
      }
    }
    catch (Exception paramString)
    {
      Log.e("SystemProperties", "get error", paramString);
    }
    return 100L;
  }
}

/* Location:
 * Qualified Name:     ipu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */