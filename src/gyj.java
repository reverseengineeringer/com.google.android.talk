import android.content.Context;
import android.os.Handler;
import java.util.concurrent.TimeUnit;

public final class gyj
  implements gyi
{
  volatile Handler a;
  final Runnable b = new gym(this);
  private boolean c;
  private final gxk d;
  private final gwu e;
  private final gxq<avb> f = new gyn(this);
  
  gyj(Context paramContext, gxk paramgxk, gwv paramgwv)
  {
    d = paramgxk;
    d.a(new gyk(this));
    d.a(new gyl(this));
    e = paramgwv.a(paramContext, "UNKNOWN", null);
  }
  
  void a()
  {
    synchronized (d)
    {
      if (c)
      {
        e.a(d, TimeUnit.MILLISECONDS);
        d.b();
        c = false;
      }
      return;
    }
  }
  
  /* Error */
  public void a(String paramString, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 80	gyj:a	Landroid/os/Handler;
    //   4: ifnonnull +36 -> 40
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 80	gyj:a	Landroid/os/Handler;
    //   13: ifnonnull +25 -> 38
    //   16: invokestatic 86	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   19: ifnull +95 -> 114
    //   22: invokestatic 86	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   25: astore_3
    //   26: aload_0
    //   27: new 88	android/os/Handler
    //   30: dup
    //   31: aload_3
    //   32: invokespecial 91	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   35: putfield 80	gyj:a	Landroid/os/Handler;
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_0
    //   41: getfield 80	gyj:a	Landroid/os/Handler;
    //   44: aload_0
    //   45: getfield 31	gyj:b	Ljava/lang/Runnable;
    //   48: invokevirtual 95	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   51: aload_0
    //   52: getfield 38	gyj:d	Lgxk;
    //   55: astore_3
    //   56: aload_3
    //   57: monitorenter
    //   58: aload_0
    //   59: getfield 64	gyj:c	Z
    //   62: ifne +17 -> 79
    //   65: aload_0
    //   66: getfield 38	gyj:d	Lgxk;
    //   69: invokeinterface 97 1 0
    //   74: aload_0
    //   75: iconst_1
    //   76: putfield 64	gyj:c	Z
    //   79: aload_3
    //   80: monitorexit
    //   81: aload_0
    //   82: getfield 61	gyj:e	Lgwu;
    //   85: aload_2
    //   86: invokeinterface 100 2 0
    //   91: astore_2
    //   92: aload_2
    //   93: aload_1
    //   94: invokevirtual 105	gwt:a	(Ljava/lang/String;)Lgwt;
    //   97: pop
    //   98: aload_2
    //   99: aload_0
    //   100: getfield 38	gyj:d	Lgxk;
    //   103: invokevirtual 108	gwt:a	(Lgxk;)Lgxp;
    //   106: aload_0
    //   107: getfield 36	gyj:f	Lgxq;
    //   110: invokevirtual 113	gxp:a	(Lgxq;)V
    //   113: return
    //   114: invokestatic 116	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   117: astore_3
    //   118: goto -92 -> 26
    //   121: astore_1
    //   122: aload_0
    //   123: monitorexit
    //   124: aload_1
    //   125: athrow
    //   126: astore_1
    //   127: aload_3
    //   128: monitorexit
    //   129: aload_1
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	gyj
    //   0	131	1	paramString	String
    //   0	131	2	paramArrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   9	26	121	finally
    //   26	38	121	finally
    //   38	40	121	finally
    //   114	118	121	finally
    //   122	124	121	finally
    //   58	79	126	finally
    //   79	81	126	finally
    //   127	129	126	finally
  }
}

/* Location:
 * Qualified Name:     gyj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */