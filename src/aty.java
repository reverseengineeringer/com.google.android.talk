import java.util.ArrayList;
import java.util.List;

public final class aty
{
  private final List<atz<?>> a = new ArrayList();
  
  /* Error */
  public <T> aiu<T> a(Class<T> paramClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 16	aty:a	Ljava/util/List;
    //   6: invokeinterface 24 1 0
    //   11: astore_2
    //   12: aload_2
    //   13: invokeinterface 30 1 0
    //   18: ifeq +30 -> 48
    //   21: aload_2
    //   22: invokeinterface 34 1 0
    //   27: checkcast 36	atz
    //   30: astore_3
    //   31: aload_3
    //   32: aload_1
    //   33: invokevirtual 39	atz:a	(Ljava/lang/Class;)Z
    //   36: ifeq -24 -> 12
    //   39: aload_3
    //   40: getfield 42	atz:a	Laiu;
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: areturn
    //   48: aconst_null
    //   49: astore_1
    //   50: goto -6 -> 44
    //   53: astore_1
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_1
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	this	aty
    //   0	58	1	paramClass	Class<T>
    //   11	11	2	localIterator	java.util.Iterator
    //   30	10	3	localatz	atz
    // Exception table:
    //   from	to	target	type
    //   2	12	53	finally
    //   12	44	53	finally
  }
  
  public <T> void a(Class<T> paramClass, aiu<T> paramaiu)
  {
    try
    {
      a.add(new atz(paramClass, paramaiu));
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
 * Qualified Name:     aty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */