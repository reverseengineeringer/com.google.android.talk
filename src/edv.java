public class edv
  implements Runnable
{
  private final Object a = new Object();
  final Thread b = new Thread(this);
  private final Object c = new Object();
  private final Object d = new Object();
  private Object e;
  private boolean f;
  private boolean g;
  private boolean h;
  private final long i;
  private final long j;
  private volatile boolean k;
  
  public edv(String paramString, long paramLong1, long paramLong2)
  {
    i = paramLong1;
    j = paramLong2;
    b.setName(paramString);
    b.start();
  }
  
  public String a(Object paramObject)
  {
    if (paramObject == null) {
      return "NULL";
    }
    return paramObject.toString();
  }
  
  public void a()
  {
    if (k) {
      return;
    }
    synchronized (c)
    {
      g = true;
      c.notify();
      synchronized (d)
      {
        boolean bool = h;
        if (bool) {}
      }
    }
    try
    {
      d.wait();
      h = false;
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
      localObject3 = finally;
      throw ((Throwable)localObject3);
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  public void b()
  {
    k = true;
    synchronized (a)
    {
      a.notify();
      synchronized (c)
      {
        c.notify();
      }
    }
    synchronized (d)
    {
      h = true;
      d.notify();
      try
      {
        b.join(1000L);
        if (b.isAlive()) {
          ezi.e("Babel", "failed to stop watchdog thread in 1000 ms", new Object[0]);
        }
        return;
      }
      catch (InterruptedException localInterruptedException) {}
      localObject2 = finally;
      throw ((Throwable)localObject2);
      localObject3 = finally;
      throw ((Throwable)localObject3);
    }
  }
  
  public void b(Object paramObject)
  {
    if (k) {
      return;
    }
    synchronized (a)
    {
      f = true;
      e = paramObject;
      a.notify();
      return;
    }
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 62	edv:k	Z
    //   4: ifne +393 -> 397
    //   7: aload_0
    //   8: getfield 35	edv:a	Ljava/lang/Object;
    //   11: astore 9
    //   13: aload 9
    //   15: monitorenter
    //   16: aload_0
    //   17: getfield 94	edv:f	Z
    //   20: istore_2
    //   21: iload_2
    //   22: ifne +23 -> 45
    //   25: aload_0
    //   26: getfield 35	edv:a	Ljava/lang/Object;
    //   29: invokevirtual 72	java/lang/Object:wait	()V
    //   32: aload_0
    //   33: getfield 62	edv:k	Z
    //   36: istore_2
    //   37: iload_2
    //   38: ifeq +7 -> 45
    //   41: aload 9
    //   43: monitorexit
    //   44: return
    //   45: aload_0
    //   46: iconst_0
    //   47: putfield 94	edv:f	Z
    //   50: aload 9
    //   52: monitorexit
    //   53: invokestatic 103	java/lang/System:currentTimeMillis	()J
    //   56: lstore_3
    //   57: aload_0
    //   58: getfield 37	edv:c	Ljava/lang/Object;
    //   61: astore 9
    //   63: aload 9
    //   65: monitorenter
    //   66: iconst_0
    //   67: istore_1
    //   68: aload_0
    //   69: getfield 64	edv:g	Z
    //   72: ifne +282 -> 354
    //   75: aload_0
    //   76: getfield 62	edv:k	Z
    //   79: istore_2
    //   80: iload_2
    //   81: ifne +273 -> 354
    //   84: aload_0
    //   85: getfield 37	edv:c	Ljava/lang/Object;
    //   88: aload_0
    //   89: getfield 41	edv:i	J
    //   92: invokevirtual 105	java/lang/Object:wait	(J)V
    //   95: aload_0
    //   96: getfield 62	edv:k	Z
    //   99: istore_2
    //   100: iload_2
    //   101: ifeq +23 -> 124
    //   104: aload 9
    //   106: monitorexit
    //   107: return
    //   108: astore 10
    //   110: aload 9
    //   112: monitorexit
    //   113: aload 10
    //   115: athrow
    //   116: astore 10
    //   118: aload 9
    //   120: monitorexit
    //   121: aload 10
    //   123: athrow
    //   124: invokestatic 103	java/lang/System:currentTimeMillis	()J
    //   127: lload_3
    //   128: lsub
    //   129: lstore 5
    //   131: lload 5
    //   133: aload_0
    //   134: getfield 43	edv:j	J
    //   137: lcmp
    //   138: iflt +95 -> 233
    //   141: aload_0
    //   142: getfield 43	edv:j	J
    //   145: lstore 5
    //   147: aload_0
    //   148: aload_0
    //   149: getfield 96	edv:e	Ljava/lang/Object;
    //   152: invokevirtual 107	edv:a	(Ljava/lang/Object;)Ljava/lang/String;
    //   155: invokestatic 112	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   158: astore 10
    //   160: ldc 84
    //   162: new 114	java/lang/StringBuilder
    //   165: dup
    //   166: aload 10
    //   168: invokestatic 112	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   171: invokevirtual 118	java/lang/String:length	()I
    //   174: bipush 61
    //   176: iadd
    //   177: invokespecial 121	java/lang/StringBuilder:<init>	(I)V
    //   180: ldc 123
    //   182: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: lload 5
    //   187: invokevirtual 130	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   190: ldc -124
    //   192: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: aload 10
    //   197: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   203: iconst_0
    //   204: anewarray 4	java/lang/Object
    //   207: invokestatic 135	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   210: invokestatic 140	android/os/Process:myPid	()I
    //   213: iconst_3
    //   214: invokestatic 144	android/os/Process:sendSignal	(II)V
    //   217: invokestatic 149	android/os/Debug:isDebuggerConnected	()Z
    //   220: ifne -152 -> 68
    //   223: new 151	java/lang/IllegalStateException
    //   226: dup
    //   227: ldc -103
    //   229: invokespecial 155	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   232: athrow
    //   233: lload 5
    //   235: aload_0
    //   236: getfield 41	edv:i	J
    //   239: lcmp
    //   240: ifle -172 -> 68
    //   243: aload_0
    //   244: getfield 41	edv:i	J
    //   247: lstore 7
    //   249: aload_0
    //   250: aload_0
    //   251: getfield 96	edv:e	Ljava/lang/Object;
    //   254: invokevirtual 107	edv:a	(Ljava/lang/Object;)Ljava/lang/String;
    //   257: invokestatic 112	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   260: astore 10
    //   262: ldc 84
    //   264: new 114	java/lang/StringBuilder
    //   267: dup
    //   268: aload 10
    //   270: invokestatic 112	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   273: invokevirtual 118	java/lang/String:length	()I
    //   276: bipush 104
    //   278: iadd
    //   279: invokespecial 121	java/lang/StringBuilder:<init>	(I)V
    //   282: ldc -99
    //   284: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: iload_1
    //   288: invokevirtual 160	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   291: ldc -94
    //   293: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   296: lload 7
    //   298: invokevirtual 130	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   301: ldc -124
    //   303: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   306: aload 10
    //   308: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   311: ldc -92
    //   313: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: lload 5
    //   318: invokevirtual 130	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   321: ldc -90
    //   323: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   329: iconst_0
    //   330: anewarray 4	java/lang/Object
    //   333: invokestatic 135	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   336: iload_1
    //   337: ifne +10 -> 347
    //   340: invokestatic 140	android/os/Process:myPid	()I
    //   343: iconst_3
    //   344: invokestatic 144	android/os/Process:sendSignal	(II)V
    //   347: iload_1
    //   348: iconst_1
    //   349: iadd
    //   350: istore_1
    //   351: goto -283 -> 68
    //   354: aload_0
    //   355: iconst_0
    //   356: putfield 64	edv:g	Z
    //   359: aload 9
    //   361: monitorexit
    //   362: aload_0
    //   363: getfield 39	edv:d	Ljava/lang/Object;
    //   366: astore 9
    //   368: aload 9
    //   370: monitorenter
    //   371: aload_0
    //   372: iconst_1
    //   373: putfield 69	edv:h	Z
    //   376: aload_0
    //   377: getfield 39	edv:d	Ljava/lang/Object;
    //   380: invokevirtual 67	java/lang/Object:notify	()V
    //   383: aload 9
    //   385: monitorexit
    //   386: goto -386 -> 0
    //   389: astore 10
    //   391: aload 9
    //   393: monitorexit
    //   394: aload 10
    //   396: athrow
    //   397: return
    //   398: astore 10
    //   400: goto -355 -> 45
    //   403: astore 10
    //   405: goto -337 -> 68
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	408	0	this	edv
    //   67	284	1	m	int
    //   20	81	2	bool	boolean
    //   56	72	3	l1	long
    //   129	188	5	l2	long
    //   247	50	7	l3	long
    //   108	6	10	localObject2	Object
    //   116	6	10	localObject3	Object
    //   158	149	10	str	String
    //   389	6	10	localObject4	Object
    //   398	1	10	localInterruptedException1	InterruptedException
    //   403	1	10	localInterruptedException2	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   68	80	108	finally
    //   84	100	108	finally
    //   104	107	108	finally
    //   110	113	108	finally
    //   124	233	108	finally
    //   233	336	108	finally
    //   340	347	108	finally
    //   354	362	108	finally
    //   16	21	116	finally
    //   25	37	116	finally
    //   41	44	116	finally
    //   45	53	116	finally
    //   118	121	116	finally
    //   371	386	389	finally
    //   391	394	389	finally
    //   25	37	398	java/lang/InterruptedException
    //   84	100	403	java/lang/InterruptedException
    //   124	233	403	java/lang/InterruptedException
    //   233	336	403	java/lang/InterruptedException
    //   340	347	403	java/lang/InterruptedException
  }
}

/* Location:
 * Qualified Name:     edv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */