import java.util.concurrent.TimeUnit;

public final class fhm
{
  private int a = 0;
  
  public void a()
  {
    try
    {
      a += 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean a(long paramLong, TimeUnit paramTimeUnit)
  {
    long l1 = System.currentTimeMillis();
    paramLong = TimeUnit.MILLISECONDS.convert(paramLong, paramTimeUnit);
    for (;;)
    {
      try
      {
        if (a == 0) {
          return true;
        }
        if (paramLong <= 0L) {
          return false;
        }
      }
      finally {}
      wait(paramLong);
      long l2 = System.currentTimeMillis();
      paramLong -= l2 - l1;
    }
  }
  
  public void b()
  {
    try
    {
      if (a == 0) {
        throw new RuntimeException("too many decrements");
      }
    }
    finally {}
    a -= 1;
    if (a == 0) {
      notifyAll();
    }
  }
  
  /* Error */
  public boolean c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 12	fhm:a	I
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +9 -> 17
    //   11: iconst_1
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: iconst_0
    //   18: istore_2
    //   19: goto -6 -> 13
    //   22: astore_3
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_3
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	fhm
    //   6	2	1	i	int
    //   12	7	2	bool	boolean
    //   22	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
}

/* Location:
 * Qualified Name:     fhm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */