import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public final class eze<KeyType>
{
  private final ConcurrentHashMap<KeyType, AtomicInteger> a = new ConcurrentHashMap();
  
  public void a(KeyType paramKeyType)
  {
    try
    {
      a.putIfAbsent(paramKeyType, new AtomicInteger(0));
      ((AtomicInteger)a.get(paramKeyType)).incrementAndGet();
      return;
    }
    finally
    {
      paramKeyType = finally;
      throw paramKeyType;
    }
  }
  
  public void b(KeyType paramKeyType)
  {
    a.putIfAbsent(paramKeyType, new AtomicInteger(1));
  }
  
  /* Error */
  public boolean c(KeyType paramKeyType)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 17	eze:a	Ljava/util/concurrent/ConcurrentHashMap;
    //   6: aload_1
    //   7: invokevirtual 44	java/util/concurrent/ConcurrentHashMap:containsKey	(Ljava/lang/Object;)Z
    //   10: ldc 46
    //   12: iconst_1
    //   13: anewarray 5	java/lang/Object
    //   16: dup
    //   17: iconst_0
    //   18: aload_1
    //   19: aastore
    //   20: invokestatic 51	fii:b	(ZLjava/lang/String;[Ljava/lang/Object;)V
    //   23: aload_0
    //   24: getfield 17	eze:a	Ljava/util/concurrent/ConcurrentHashMap;
    //   27: aload_1
    //   28: invokevirtual 32	java/util/concurrent/ConcurrentHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   31: checkcast 21	java/util/concurrent/atomic/AtomicInteger
    //   34: invokevirtual 54	java/util/concurrent/atomic/AtomicInteger:decrementAndGet	()I
    //   37: ifne +18 -> 55
    //   40: aload_0
    //   41: getfield 17	eze:a	Ljava/util/concurrent/ConcurrentHashMap;
    //   44: aload_1
    //   45: invokevirtual 57	java/util/concurrent/ConcurrentHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   48: pop
    //   49: iconst_1
    //   50: istore_2
    //   51: aload_0
    //   52: monitorexit
    //   53: iload_2
    //   54: ireturn
    //   55: iconst_0
    //   56: istore_2
    //   57: goto -6 -> 51
    //   60: astore_1
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_1
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	eze
    //   0	65	1	paramKeyType	KeyType
    //   50	7	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	49	60	finally
  }
}

/* Location:
 * Qualified Name:     eze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */