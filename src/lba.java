import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

abstract class lba
  implements Runnable
{
  private static final AtomicReferenceFieldUpdater<lba, Thread> c = AtomicReferenceFieldUpdater.newUpdater(lba.class, Thread.class, "a");
  volatile Thread a;
  volatile boolean b;
  
  abstract void a();
  
  abstract boolean b();
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: getstatic 26	lba:c	Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    //   3: aload_0
    //   4: aconst_null
    //   5: invokestatic 36	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   8: invokevirtual 40	java/util/concurrent/atomic/AtomicReferenceFieldUpdater:compareAndSet	(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    //   11: ifne +4 -> 15
    //   14: return
    //   15: aload_0
    //   16: invokevirtual 42	lba:a	()V
    //   19: aload_0
    //   20: invokevirtual 44	lba:b	()Z
    //   23: ifeq -9 -> 14
    //   26: aload_0
    //   27: getfield 46	lba:b	Z
    //   30: ifne -16 -> 14
    //   33: invokestatic 49	java/lang/Thread:yield	()V
    //   36: goto -10 -> 26
    //   39: astore_1
    //   40: aload_0
    //   41: invokevirtual 44	lba:b	()Z
    //   44: ifeq +16 -> 60
    //   47: aload_0
    //   48: getfield 46	lba:b	Z
    //   51: ifne +9 -> 60
    //   54: invokestatic 49	java/lang/Thread:yield	()V
    //   57: goto -10 -> 47
    //   60: aload_1
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	lba
    //   39	22	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   15	19	39	finally
  }
}

/* Location:
 * Qualified Name:     lba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */