import android.os.AsyncTask;
import java.util.concurrent.Executor;

public abstract class hbw<Params, Progress, Result>
  extends AsyncTask<Params, Progress, Result>
{
  public static long d = 40000L;
  private final long a;
  private boolean b;
  
  public hbw()
  {
    this(10000L);
  }
  
  public hbw(long paramLong)
  {
    hbs.a();
    a = paramLong;
  }
  
  public static void a(Runnable paramRunnable)
  {
    THREAD_POOL_EXECUTOR.execute(paramRunnable);
  }
  
  public final hbw<Params, Progress, Result> a(Params... paramVarArgs)
  {
    hbs.a();
    b = true;
    executeOnExecutor(THREAD_POOL_EXECUTOR, paramVarArgs);
    return this;
  }
  
  public abstract Result a();
  
  /* Error */
  protected final Result doInBackground(Params... paramVarArgs)
  {
    // Byte code:
    //   0: ldc 55
    //   2: aload_0
    //   3: getfield 44	hbw:b	Z
    //   6: invokestatic 58	hbs:a	(Ljava/lang/String;Z)V
    //   9: invokestatic 64	android/os/SystemClock:elapsedRealtime	()J
    //   12: lstore_2
    //   13: aload_0
    //   14: invokevirtual 66	hbw:a	()Ljava/lang/Object;
    //   17: astore 4
    //   19: invokestatic 64	android/os/SystemClock:elapsedRealtime	()J
    //   22: lload_2
    //   23: lsub
    //   24: lstore_2
    //   25: lload_2
    //   26: aload_0
    //   27: getfield 31	hbw:a	J
    //   30: lcmp
    //   31: ifle +55 -> 86
    //   34: aload_0
    //   35: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   38: invokevirtual 78	java/lang/Class:isAnonymousClass	()Z
    //   41: ifeq +48 -> 89
    //   44: aload_0
    //   45: invokevirtual 82	java/lang/Object:toString	()Ljava/lang/String;
    //   48: astore_1
    //   49: iconst_5
    //   50: ldc 84
    //   52: ldc 86
    //   54: iconst_3
    //   55: anewarray 68	java/lang/Object
    //   58: dup
    //   59: iconst_0
    //   60: aload_1
    //   61: aastore
    //   62: dup
    //   63: iconst_1
    //   64: lload_2
    //   65: invokestatic 92	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   68: aastore
    //   69: dup
    //   70: iconst_2
    //   71: aload_0
    //   72: getfield 31	hbw:a	J
    //   75: invokestatic 92	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   78: aastore
    //   79: invokestatic 98	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   82: invokestatic 104	android/util/Log:println	(ILjava/lang/String;Ljava/lang/String;)I
    //   85: pop
    //   86: aload 4
    //   88: areturn
    //   89: aload_0
    //   90: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   93: invokevirtual 107	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   96: astore_1
    //   97: goto -48 -> 49
    //   100: astore 4
    //   102: invokestatic 64	android/os/SystemClock:elapsedRealtime	()J
    //   105: lload_2
    //   106: lsub
    //   107: lstore_2
    //   108: lload_2
    //   109: aload_0
    //   110: getfield 31	hbw:a	J
    //   113: lcmp
    //   114: ifle +55 -> 169
    //   117: aload_0
    //   118: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   121: invokevirtual 78	java/lang/Class:isAnonymousClass	()Z
    //   124: ifeq +48 -> 172
    //   127: aload_0
    //   128: invokevirtual 82	java/lang/Object:toString	()Ljava/lang/String;
    //   131: astore_1
    //   132: iconst_5
    //   133: ldc 84
    //   135: ldc 86
    //   137: iconst_3
    //   138: anewarray 68	java/lang/Object
    //   141: dup
    //   142: iconst_0
    //   143: aload_1
    //   144: aastore
    //   145: dup
    //   146: iconst_1
    //   147: lload_2
    //   148: invokestatic 92	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   151: aastore
    //   152: dup
    //   153: iconst_2
    //   154: aload_0
    //   155: getfield 31	hbw:a	J
    //   158: invokestatic 92	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   161: aastore
    //   162: invokestatic 98	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   165: invokestatic 104	android/util/Log:println	(ILjava/lang/String;Ljava/lang/String;)I
    //   168: pop
    //   169: aload 4
    //   171: athrow
    //   172: aload_0
    //   173: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   176: invokevirtual 107	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   179: astore_1
    //   180: goto -48 -> 132
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	183	0	this	hbw
    //   0	183	1	paramVarArgs	Params[]
    //   12	136	2	l	long
    //   17	70	4	localObject1	Object
    //   100	70	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   13	19	100	finally
  }
  
  public void onPostExecute(Result paramResult)
  {
    hbs.a("Use SafeAsyncTask.executeOnThreadPool");
  }
}

/* Location:
 * Qualified Name:     hbw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */