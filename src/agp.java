import java.util.concurrent.BlockingQueue;

public final class agp
  extends Thread
{
  private final BlockingQueue<agr<?>> a;
  private final ago b;
  private final agi c;
  private final agy d;
  private volatile boolean e = false;
  
  public agp(BlockingQueue<agr<?>> paramBlockingQueue, ago paramago, agi paramagi, agy paramagy)
  {
    a = paramBlockingQueue;
    b = paramago;
    c = paramagi;
    d = paramagy;
  }
  
  public void a()
  {
    e = true;
    interrupt();
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: bipush 10
    //   2: invokestatic 49	android/os/Process:setThreadPriority	(I)V
    //   5: invokestatic 55	android/os/SystemClock:elapsedRealtime	()J
    //   8: lstore_1
    //   9: aload_0
    //   10: getfield 24	agp:a	Ljava/util/concurrent/BlockingQueue;
    //   13: invokeinterface 61 1 0
    //   18: checkcast 63	agr
    //   21: astore_3
    //   22: aload_3
    //   23: ldc 65
    //   25: invokevirtual 68	agr:a	(Ljava/lang/String;)V
    //   28: aload_3
    //   29: invokevirtual 72	agr:f	()Z
    //   32: ifeq +54 -> 86
    //   35: aload_3
    //   36: ldc 74
    //   38: invokevirtual 76	agr:b	(Ljava/lang/String;)V
    //   41: goto -36 -> 5
    //   44: astore 4
    //   46: aload 4
    //   48: invokestatic 55	android/os/SystemClock:elapsedRealtime	()J
    //   51: lload_1
    //   52: lsub
    //   53: invokevirtual 79	aha:a	(J)V
    //   56: aload_3
    //   57: aload 4
    //   59: invokevirtual 82	agr:a	(Laha;)Laha;
    //   62: astore 4
    //   64: aload_0
    //   65: getfield 30	agp:d	Lagy;
    //   68: aload_3
    //   69: aload 4
    //   71: invokevirtual 87	agy:a	(Lagr;Laha;)V
    //   74: goto -69 -> 5
    //   77: astore_3
    //   78: aload_0
    //   79: getfield 22	agp:e	Z
    //   82: ifeq -77 -> 5
    //   85: return
    //   86: getstatic 93	android/os/Build$VERSION:SDK_INT	I
    //   89: bipush 14
    //   91: if_icmplt +10 -> 101
    //   94: aload_3
    //   95: invokevirtual 96	agr:b	()I
    //   98: invokestatic 101	android/net/TrafficStats:setThreadStatsTag	(I)V
    //   101: aload_0
    //   102: getfield 26	agp:b	Lago;
    //   105: aload_3
    //   106: invokeinterface 106 2 0
    //   111: astore 4
    //   113: aload_3
    //   114: ldc 108
    //   116: invokevirtual 68	agr:a	(Ljava/lang/String;)V
    //   119: aload 4
    //   121: getfield 112	agq:d	Z
    //   124: ifeq +85 -> 209
    //   127: aload_3
    //   128: invokevirtual 115	agr:o	()Z
    //   131: ifeq +78 -> 209
    //   134: aload_3
    //   135: ldc 117
    //   137: invokevirtual 76	agr:b	(Ljava/lang/String;)V
    //   140: goto -135 -> 5
    //   143: astore 4
    //   145: aload 4
    //   147: invokevirtual 121	java/lang/Exception:toString	()Ljava/lang/String;
    //   150: astore 5
    //   152: getstatic 126	ahb:a	Ljava/lang/String;
    //   155: ldc -128
    //   157: iconst_1
    //   158: anewarray 130	java/lang/Object
    //   161: dup
    //   162: iconst_0
    //   163: aload 5
    //   165: aastore
    //   166: invokestatic 133	ahb:d	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   169: aload 4
    //   171: invokestatic 138	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   174: pop
    //   175: new 41	aha
    //   178: dup
    //   179: aload 4
    //   181: invokespecial 141	aha:<init>	(Ljava/lang/Throwable;)V
    //   184: astore 4
    //   186: aload 4
    //   188: invokestatic 55	android/os/SystemClock:elapsedRealtime	()J
    //   191: lload_1
    //   192: lsub
    //   193: invokevirtual 79	aha:a	(J)V
    //   196: aload_0
    //   197: getfield 30	agp:d	Lagy;
    //   200: aload_3
    //   201: aload 4
    //   203: invokevirtual 87	agy:a	(Lagr;Laha;)V
    //   206: goto -201 -> 5
    //   209: aload_3
    //   210: aload 4
    //   212: invokevirtual 144	agr:a	(Lagq;)Lagv;
    //   215: astore 4
    //   217: aload_3
    //   218: ldc -110
    //   220: invokevirtual 68	agr:a	(Ljava/lang/String;)V
    //   223: aload_3
    //   224: getfield 148	agr:c	Z
    //   227: ifeq +35 -> 262
    //   230: aload 4
    //   232: getfield 153	agv:b	Lagj;
    //   235: ifnull +27 -> 262
    //   238: aload_0
    //   239: getfield 28	agp:c	Lagi;
    //   242: aload_3
    //   243: invokevirtual 155	agr:d	()Ljava/lang/String;
    //   246: aload 4
    //   248: getfield 153	agv:b	Lagj;
    //   251: invokeinterface 160 3 0
    //   256: aload_3
    //   257: ldc -94
    //   259: invokevirtual 68	agr:a	(Ljava/lang/String;)V
    //   262: aload_3
    //   263: invokevirtual 165	agr:n	()V
    //   266: aload_0
    //   267: getfield 30	agp:d	Lagy;
    //   270: aload_3
    //   271: aload 4
    //   273: invokevirtual 168	agy:a	(Lagr;Lagv;)V
    //   276: goto -271 -> 5
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	279	0	this	agp
    //   8	184	1	l	long
    //   21	48	3	localagr	agr
    //   77	194	3	localInterruptedException	InterruptedException
    //   44	14	4	localaha	aha
    //   62	58	4	localObject1	Object
    //   143	37	4	localException	Exception
    //   184	88	4	localObject2	Object
    //   150	14	5	str	String
    // Exception table:
    //   from	to	target	type
    //   22	41	44	aha
    //   86	101	44	aha
    //   101	140	44	aha
    //   209	262	44	aha
    //   262	276	44	aha
    //   9	22	77	java/lang/InterruptedException
    //   22	41	143	java/lang/Exception
    //   86	101	143	java/lang/Exception
    //   101	140	143	java/lang/Exception
    //   209	262	143	java/lang/Exception
    //   262	276	143	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     agp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */