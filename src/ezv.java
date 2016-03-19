import android.os.SystemClock;
import java.util.Iterator;
import java.util.LinkedList;

public final class ezv
{
  private static final boolean b = false;
  String a;
  private LinkedList<ezw> c = new LinkedList();
  
  static
  {
    imx localimx = ezi.t;
  }
  
  ezv(String paramString)
  {
    a = paramString;
  }
  
  public static ezv a(String paramString)
  {
    return ezq.a(paramString);
  }
  
  private ezw e(String paramString)
  {
    if (c.size() > 100) {}
    for (ezw localezw = (ezw)c.remove(0);; localezw = new ezw())
    {
      c.add(localezw);
      a = paramString;
      b = SystemClock.elapsedRealtime();
      c = -1L;
      return localezw;
    }
  }
  
  private String f(String paramString)
  {
    String str = a;
    return String.valueOf(str).length() + 1 + String.valueOf(paramString).length() + str + "_" + paramString;
  }
  
  /* Error */
  public boolean a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 21	ezv:b	Z
    //   5: ifeq +21 -> 26
    //   8: aload_0
    //   9: getfield 31	ezv:c	Ljava/util/LinkedList;
    //   12: invokevirtual 99	java/util/LinkedList:isEmpty	()Z
    //   15: istore_1
    //   16: iload_1
    //   17: ifne +9 -> 26
    //   20: iconst_1
    //   21: istore_1
    //   22: aload_0
    //   23: monitorexit
    //   24: iload_1
    //   25: ireturn
    //   26: iconst_0
    //   27: istore_1
    //   28: goto -6 -> 22
    //   31: astore_2
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_2
    //   35: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	ezv
    //   15	13	1	bool	boolean
    //   31	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	16	31	finally
  }
  
  ezx b()
  {
    if (!b) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    long l3;
    long l2;
    long l1;
    int i;
    try
    {
      Object localObject2 = c;
      c = new LinkedList();
      localObject2 = ((LinkedList)localObject2).iterator();
      localStringBuilder.append(" ** ").append(a).append(" **: ");
      l3 = 0L;
      l2 = -1L;
      l1 = Long.MAX_VALUE;
      i = 0;
      while (((Iterator)localObject2).hasNext())
      {
        ezw localezw = (ezw)((Iterator)localObject2).next();
        if (c >= 0L)
        {
          long l4 = c - b;
          l3 += l4;
          l2 = Math.max(l4, l2);
          l1 = Math.min(l4, l1);
          localStringBuilder.append(" [").append(a).append(" (").append(l4).append("ms)]");
          i += 1;
        }
        else
        {
          if (SystemClock.elapsedRealtime() - b < 10000L) {
            c.add(localezw);
          }
          localStringBuilder.append(" [? ").append(a).append(" ?]");
        }
      }
    }
    finally {}
    double d = 0.0D;
    if (i > 0) {
      d = l3 / i;
    }
    ((StringBuilder)localObject1).append(";       max (ms): ").append(l2).append("; min (ms): ").append(l1).append("; avg (ms): ").append(d);
    return new ezx(this, a, l3);
  }
  
  /* Error */
  public String b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 21	ezv:b	Z
    //   5: istore_2
    //   6: iload_2
    //   7: ifne +7 -> 14
    //   10: aload_0
    //   11: monitorexit
    //   12: aload_1
    //   13: areturn
    //   14: aload_0
    //   15: aload_1
    //   16: invokespecial 160	ezv:e	(Ljava/lang/String;)Lezw;
    //   19: pop
    //   20: aload_0
    //   21: aload_1
    //   22: invokespecial 162	ezv:f	(Ljava/lang/String;)Ljava/lang/String;
    //   25: astore_3
    //   26: getstatic 165	ezq:b	Lezs;
    //   29: aload_3
    //   30: invokevirtual 169	ezs:a	(Ljava/lang/String;)V
    //   33: goto -23 -> 10
    //   36: astore_1
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_1
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	ezv
    //   0	41	1	paramString	String
    //   5	2	2	bool	boolean
    //   25	5	3	str	String
    // Exception table:
    //   from	to	target	type
    //   2	6	36	finally
    //   14	33	36	finally
  }
  
  /* Error */
  public void c(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 21	ezv:b	Z
    //   5: istore_2
    //   6: iload_2
    //   7: ifne +6 -> 13
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: aload_0
    //   14: getfield 31	ezv:c	Ljava/util/LinkedList;
    //   17: invokevirtual 172	java/util/LinkedList:descendingIterator	()Ljava/util/Iterator;
    //   20: astore 4
    //   22: aload 4
    //   24: invokeinterface 116 1 0
    //   29: ifeq +108 -> 137
    //   32: aload 4
    //   34: invokeinterface 120 1 0
    //   39: checkcast 50	ezw
    //   42: astore_3
    //   43: aload_3
    //   44: getfield 55	ezw:a	Ljava/lang/String;
    //   47: aload_1
    //   48: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   51: ifeq -29 -> 22
    //   54: aload_3
    //   55: invokestatic 61	android/os/SystemClock:elapsedRealtime	()J
    //   58: putfield 68	ezw:c	J
    //   61: getstatic 177	ezq:a	Z
    //   64: ifne +42 -> 106
    //   67: getstatic 180	ezq:c	Ljava/util/Map;
    //   70: astore 4
    //   72: aload 4
    //   74: monitorenter
    //   75: getstatic 184	ezq:d	Ljava/lang/Runnable;
    //   78: ifnonnull +25 -> 103
    //   81: new 186	ezr
    //   84: dup
    //   85: invokespecial 187	ezr:<init>	()V
    //   88: astore 5
    //   90: aload 5
    //   92: putstatic 184	ezq:d	Ljava/lang/Runnable;
    //   95: aload 5
    //   97: ldc2_w 188
    //   100: invokestatic 194	aal:a	(Ljava/lang/Runnable;J)V
    //   103: aload 4
    //   105: monitorexit
    //   106: aload_3
    //   107: ifnull -97 -> 10
    //   110: aload_0
    //   111: aload_1
    //   112: invokespecial 162	ezv:f	(Ljava/lang/String;)Ljava/lang/String;
    //   115: astore_1
    //   116: getstatic 165	ezq:b	Lezs;
    //   119: aload_1
    //   120: invokevirtual 196	ezs:b	(Ljava/lang/String;)V
    //   123: goto -113 -> 10
    //   126: astore_1
    //   127: aload_0
    //   128: monitorexit
    //   129: aload_1
    //   130: athrow
    //   131: astore_1
    //   132: aload 4
    //   134: monitorexit
    //   135: aload_1
    //   136: athrow
    //   137: aconst_null
    //   138: astore_3
    //   139: goto -78 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	142	0	this	ezv
    //   0	142	1	paramString	String
    //   5	2	2	bool	boolean
    //   42	97	3	localezw	ezw
    //   88	8	5	localezr	ezr
    // Exception table:
    //   from	to	target	type
    //   2	6	126	finally
    //   13	22	126	finally
    //   22	61	126	finally
    //   61	75	126	finally
    //   110	123	126	finally
    //   135	137	126	finally
    //   75	103	131	finally
    //   103	106	131	finally
    //   132	135	131	finally
  }
  
  /* Error */
  public void d(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 21	ezv:b	Z
    //   5: istore_2
    //   6: iload_2
    //   7: ifne +6 -> 13
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: aload_0
    //   14: aload_1
    //   15: invokespecial 160	ezv:e	(Ljava/lang/String;)Lezw;
    //   18: astore_3
    //   19: aload_3
    //   20: aload_3
    //   21: getfield 64	ezw:b	J
    //   24: putfield 68	ezw:c	J
    //   27: aload_0
    //   28: aload_1
    //   29: invokespecial 162	ezv:f	(Ljava/lang/String;)Ljava/lang/String;
    //   32: astore_1
    //   33: getstatic 165	ezq:b	Lezs;
    //   36: aload_1
    //   37: invokevirtual 198	ezs:c	(Ljava/lang/String;)V
    //   40: goto -30 -> 10
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	ezv
    //   0	48	1	paramString	String
    //   5	2	2	bool	boolean
    //   18	3	3	localezw	ezw
    // Exception table:
    //   from	to	target	type
    //   2	6	43	finally
    //   13	40	43	finally
  }
}

/* Location:
 * Qualified Name:     ezv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */