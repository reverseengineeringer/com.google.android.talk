import java.lang.ref.WeakReference;

public class hxq<T>
{
  WeakReference<T> a;
  private T b;
  private boolean c = false;
  
  public hxq() {}
  
  public hxq(byte paramByte)
  {
    this();
  }
  
  final void a(int paramInt)
  {
    Object localObject1 = null;
    if (20 <= paramInt) {}
    for (;;)
    {
      try
      {
        b = localObject1;
        return;
      }
      finally {}
      if (a != null) {
        localObject1 = a.get();
      }
    }
  }
  
  /* Error */
  public final T b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 19	hxq:c	Z
    //   6: ifne +12 -> 18
    //   9: aload_0
    //   10: iconst_1
    //   11: putfield 19	hxq:c	Z
    //   14: aload_0
    //   15: invokestatic 75	hxr:a	(Lhxq;)V
    //   18: aload_0
    //   19: getfield 65	hxq:a	Ljava/lang/ref/WeakReference;
    //   22: ifnonnull +43 -> 65
    //   25: aconst_null
    //   26: astore_1
    //   27: aload_1
    //   28: astore_2
    //   29: aload_1
    //   30: ifnonnull +31 -> 61
    //   33: aload_0
    //   34: invokevirtual 77	hxq:a	()Ljava/lang/Object;
    //   37: invokestatic 82	aen:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   40: astore_2
    //   41: aload_0
    //   42: aload_2
    //   43: putfield 63	hxq:b	Ljava/lang/Object;
    //   46: aload_0
    //   47: new 67	java/lang/ref/WeakReference
    //   50: dup
    //   51: aload_0
    //   52: getfield 63	hxq:b	Ljava/lang/Object;
    //   55: invokespecial 85	java/lang/ref/WeakReference:<init>	(Ljava/lang/Object;)V
    //   58: putfield 65	hxq:a	Ljava/lang/ref/WeakReference;
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_2
    //   64: areturn
    //   65: aload_0
    //   66: getfield 65	hxq:a	Ljava/lang/ref/WeakReference;
    //   69: invokevirtual 70	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   72: astore_1
    //   73: goto -46 -> 27
    //   76: astore_1
    //   77: aload_0
    //   78: monitorexit
    //   79: aload_1
    //   80: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	this	hxq
    //   26	47	1	localObject1	Object
    //   76	4	1	localObject2	Object
    //   28	36	2	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   2	18	76	finally
    //   18	25	76	finally
    //   33	61	76	finally
    //   65	73	76	finally
  }
  
  public final boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }
  
  public final int hashCode()
  {
    return super.hashCode();
  }
}

/* Location:
 * Qualified Name:     hxq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */