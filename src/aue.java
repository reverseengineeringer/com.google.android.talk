import java.util.ArrayList;
import java.util.List;

public final class aue
{
  final List<auf<?>> a = new ArrayList();
  
  /* Error */
  public <Z> ajc<Z> a(Class<Z> paramClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 16	aue:a	Ljava/util/List;
    //   6: invokeinterface 24 1 0
    //   11: istore_3
    //   12: iconst_0
    //   13: istore_2
    //   14: iload_2
    //   15: iload_3
    //   16: if_icmpge +47 -> 63
    //   19: aload_0
    //   20: getfield 16	aue:a	Ljava/util/List;
    //   23: iload_2
    //   24: invokeinterface 28 2 0
    //   29: checkcast 30	auf
    //   32: astore 4
    //   34: aload 4
    //   36: getfield 33	auf:a	Ljava/lang/Class;
    //   39: aload_1
    //   40: invokevirtual 39	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   43: ifeq +13 -> 56
    //   46: aload 4
    //   48: getfield 43	auf:b	Lajc;
    //   51: astore_1
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_1
    //   55: areturn
    //   56: iload_2
    //   57: iconst_1
    //   58: iadd
    //   59: istore_2
    //   60: goto -46 -> 14
    //   63: aconst_null
    //   64: astore_1
    //   65: goto -13 -> 52
    //   68: astore_1
    //   69: aload_0
    //   70: monitorexit
    //   71: aload_1
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	aue
    //   0	73	1	paramClass	Class<Z>
    //   13	47	2	i	int
    //   11	6	3	j	int
    //   32	15	4	localauf	auf
    // Exception table:
    //   from	to	target	type
    //   2	12	68	finally
    //   19	52	68	finally
  }
  
  public <Z> void a(Class<Z> paramClass, ajc<Z> paramajc)
  {
    try
    {
      a.add(new auf(paramClass, paramajc));
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
}

/* Location:
 * Qualified Name:     aue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */