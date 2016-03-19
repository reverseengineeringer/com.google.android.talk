import android.os.Build.VERSION;
import android.os.CancellationSignal;

public final class gr
{
  private boolean a;
  private Object b;
  private boolean c;
  
  private boolean d()
  {
    try
    {
      boolean bool = a;
      return bool;
    }
    finally {}
  }
  
  public void a()
  {
    if (d()) {
      throw new gs();
    }
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 18	gr:a	Z
    //   6: ifeq +6 -> 12
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: aload_0
    //   13: iconst_1
    //   14: putfield 18	gr:a	Z
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield 25	gr:c	Z
    //   22: aload_0
    //   23: getfield 27	gr:b	Ljava/lang/Object;
    //   26: astore_1
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_1
    //   30: ifnull +10 -> 40
    //   33: aload_1
    //   34: checkcast 29	android/os/CancellationSignal
    //   37: invokevirtual 32	android/os/CancellationSignal:cancel	()V
    //   40: aload_0
    //   41: monitorenter
    //   42: aload_0
    //   43: iconst_0
    //   44: putfield 25	gr:c	Z
    //   47: aload_0
    //   48: invokevirtual 35	java/lang/Object:notifyAll	()V
    //   51: aload_0
    //   52: monitorexit
    //   53: return
    //   54: astore_1
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_1
    //   58: athrow
    //   59: astore_1
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_1
    //   63: athrow
    //   64: astore_1
    //   65: aload_0
    //   66: monitorenter
    //   67: aload_0
    //   68: iconst_0
    //   69: putfield 25	gr:c	Z
    //   72: aload_0
    //   73: invokevirtual 35	java/lang/Object:notifyAll	()V
    //   76: aload_0
    //   77: monitorexit
    //   78: aload_1
    //   79: athrow
    //   80: astore_1
    //   81: aload_0
    //   82: monitorexit
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	gr
    //   26	8	1	localObject1	Object
    //   54	4	1	localObject2	Object
    //   59	4	1	localObject3	Object
    //   64	15	1	localObject4	Object
    //   80	4	1	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   42	53	54	finally
    //   55	57	54	finally
    //   2	11	59	finally
    //   12	29	59	finally
    //   60	62	59	finally
    //   33	40	64	finally
    //   67	78	80	finally
    //   81	83	80	finally
  }
  
  public Object c()
  {
    if (Build.VERSION.SDK_INT < 16) {
      return null;
    }
    try
    {
      if (b == null)
      {
        b = new CancellationSignal();
        if (a) {
          ((CancellationSignal)b).cancel();
        }
      }
      Object localObject1 = b;
      return localObject1;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     gr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */