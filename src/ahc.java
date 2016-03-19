import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;

final class ahc
{
  public static final boolean a = ahb.b;
  private final List<ahd> b = new ArrayList();
  private boolean c = false;
  
  /* Error */
  public void a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield 29	ahc:c	Z
    //   7: aload_0
    //   8: getfield 27	ahc:b	Ljava/util/List;
    //   11: invokeinterface 36 1 0
    //   16: istore_2
    //   17: iload_2
    //   18: ifne +14 -> 32
    //   21: lconst_0
    //   22: lstore_3
    //   23: lload_3
    //   24: lconst_0
    //   25: lcmp
    //   26: ifgt +55 -> 81
    //   29: aload_0
    //   30: monitorexit
    //   31: return
    //   32: aload_0
    //   33: getfield 27	ahc:b	Ljava/util/List;
    //   36: iconst_0
    //   37: invokeinterface 40 2 0
    //   42: checkcast 42	ahd
    //   45: getfield 45	ahd:c	J
    //   48: lstore_3
    //   49: aload_0
    //   50: getfield 27	ahc:b	Ljava/util/List;
    //   53: aload_0
    //   54: getfield 27	ahc:b	Ljava/util/List;
    //   57: invokeinterface 36 1 0
    //   62: iconst_1
    //   63: isub
    //   64: invokeinterface 40 2 0
    //   69: checkcast 42	ahd
    //   72: getfield 45	ahd:c	J
    //   75: lload_3
    //   76: lsub
    //   77: lstore_3
    //   78: goto -55 -> 23
    //   81: aload_0
    //   82: getfield 27	ahc:b	Ljava/util/List;
    //   85: iconst_0
    //   86: invokeinterface 40 2 0
    //   91: checkcast 42	ahd
    //   94: getfield 45	ahd:c	J
    //   97: lstore 5
    //   99: ldc 47
    //   101: iconst_2
    //   102: anewarray 4	java/lang/Object
    //   105: dup
    //   106: iconst_0
    //   107: lload_3
    //   108: invokestatic 53	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   111: aastore
    //   112: dup
    //   113: iconst_1
    //   114: aload_1
    //   115: aastore
    //   116: invokestatic 57	ahb:d	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   119: pop
    //   120: aload_0
    //   121: getfield 27	ahc:b	Ljava/util/List;
    //   124: invokeinterface 61 1 0
    //   129: astore_1
    //   130: lload 5
    //   132: lstore_3
    //   133: aload_1
    //   134: invokeinterface 67 1 0
    //   139: ifeq -110 -> 29
    //   142: aload_1
    //   143: invokeinterface 71 1 0
    //   148: checkcast 42	ahd
    //   151: astore 7
    //   153: aload 7
    //   155: getfield 45	ahd:c	J
    //   158: lstore 5
    //   160: ldc 73
    //   162: iconst_3
    //   163: anewarray 4	java/lang/Object
    //   166: dup
    //   167: iconst_0
    //   168: lload 5
    //   170: lload_3
    //   171: lsub
    //   172: invokestatic 53	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   175: aastore
    //   176: dup
    //   177: iconst_1
    //   178: aload 7
    //   180: getfield 75	ahd:b	J
    //   183: invokestatic 53	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   186: aastore
    //   187: dup
    //   188: iconst_2
    //   189: aload 7
    //   191: getfield 78	ahd:a	Ljava/lang/String;
    //   194: aastore
    //   195: invokestatic 57	ahb:d	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   198: pop
    //   199: lload 5
    //   201: lstore_3
    //   202: goto -69 -> 133
    //   205: astore_1
    //   206: aload_0
    //   207: monitorexit
    //   208: aload_1
    //   209: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	210	0	this	ahc
    //   0	210	1	paramString	String
    //   16	2	2	i	int
    //   22	180	3	l1	long
    //   97	103	5	l2	long
    //   151	39	7	localahd	ahd
    // Exception table:
    //   from	to	target	type
    //   2	17	205	finally
    //   32	78	205	finally
    //   81	130	205	finally
    //   133	199	205	finally
  }
  
  public void a(String paramString, long paramLong)
  {
    try
    {
      if (c) {
        throw new IllegalStateException("Marker added to finished log");
      }
    }
    finally {}
    b.add(new ahd(paramString, paramLong, SystemClock.elapsedRealtime()));
  }
  
  protected void finalize()
  {
    if (!c)
    {
      a("Request on the loose");
      ahb.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     ahc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */