import android.app.Application;
import android.os.Build.VERSION;

public class hmn
{
  public static volatile boolean a = false;
  private static hmn g;
  final hmt b;
  final hmy c;
  final hmq d;
  final hmv e;
  final hmx f;
  private final hnj h;
  private final Application i;
  
  private hmn(hnj paramhnj, Application paramApplication, hmo paramhmo)
  {
    h = paramhnj;
    i = paramApplication;
    b = a;
    c = b;
    d = c;
    e = d;
    f = e;
    paramhnj = i;
    if (hml.a == null)
    {
      aen.a(paramhnj);
      hml.a = new hml(paramhnj);
    }
  }
  
  /* Error */
  public static hmn a(hnj paramhnj, Application paramApplication, hmo paramhmo)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: ldc 2
    //   5: monitorenter
    //   6: getstatic 73	hmn:g	Lhmn;
    //   9: ifnull +12 -> 21
    //   12: getstatic 73	hmn:g	Lhmn;
    //   15: astore_0
    //   16: ldc 2
    //   18: monitorexit
    //   19: aload_0
    //   20: areturn
    //   21: aload_0
    //   22: invokestatic 67	aen:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   25: pop
    //   26: aload_1
    //   27: invokestatic 67	aen:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   30: pop
    //   31: aload_2
    //   32: invokestatic 67	aen:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   35: pop
    //   36: aload_2
    //   37: getfield 39	hmo:a	Lhmt;
    //   40: invokevirtual 78	hmt:b	()I
    //   43: ifle +196 -> 239
    //   46: iconst_1
    //   47: istore_3
    //   48: iload_3
    //   49: invokestatic 81	aen:a	(Z)V
    //   52: aload_2
    //   53: getfield 43	hmo:b	Lhmy;
    //   56: invokevirtual 84	hmy:b	()I
    //   59: ifle +185 -> 244
    //   62: iconst_1
    //   63: istore_3
    //   64: iload_3
    //   65: invokestatic 81	aen:a	(Z)V
    //   68: aload_2
    //   69: getfield 47	hmo:c	Lhmq;
    //   72: invokevirtual 87	hmq:b	()I
    //   75: ifle +174 -> 249
    //   78: iconst_1
    //   79: istore_3
    //   80: iload_3
    //   81: invokestatic 81	aen:a	(Z)V
    //   84: aload_2
    //   85: getfield 51	hmo:d	Lhmv;
    //   88: invokevirtual 90	hmv:b	()I
    //   91: ifle +163 -> 254
    //   94: iload 4
    //   96: istore_3
    //   97: iload_3
    //   98: invokestatic 81	aen:a	(Z)V
    //   101: getstatic 92	hmt:c	Lhmt;
    //   104: astore 5
    //   106: getstatic 93	hmy:c	Lhmy;
    //   109: astore 5
    //   111: getstatic 95	hmq:a	Lhmq;
    //   114: astore 5
    //   116: getstatic 97	hmv:a	Lhmv;
    //   119: astore 5
    //   121: getstatic 101	hmx:a	Lhmx;
    //   124: astore 5
    //   126: new 2	hmn
    //   129: dup
    //   130: aload_0
    //   131: aload_1
    //   132: aload_2
    //   133: invokespecial 103	hmn:<init>	(Lhnj;Landroid/app/Application;Lhmo;)V
    //   136: astore_0
    //   137: aload_0
    //   138: putstatic 73	hmn:g	Lhmn;
    //   141: new 105	java/util/ArrayList
    //   144: dup
    //   145: invokespecial 106	java/util/ArrayList:<init>	()V
    //   148: astore_1
    //   149: aload_0
    //   150: getfield 49	hmn:d	Lhmq;
    //   153: invokevirtual 109	hmq:a	()Z
    //   156: ifeq +21 -> 177
    //   159: aload_1
    //   160: aload_0
    //   161: getfield 33	hmn:h	Lhnj;
    //   164: aload_0
    //   165: getfield 49	hmn:d	Lhmq;
    //   168: invokestatic 114	hlu:a	(Lhnj;Lhmd;)Lhlu;
    //   171: invokeinterface 120 2 0
    //   176: pop
    //   177: aload_0
    //   178: getfield 57	hmn:f	Lhmx;
    //   181: invokevirtual 121	hmx:a	()Z
    //   184: ifeq +24 -> 208
    //   187: aload_1
    //   188: new 123	hmm
    //   191: dup
    //   192: aload_0
    //   193: getfield 35	hmn:i	Landroid/app/Application;
    //   196: invokevirtual 129	android/app/Application:getApplicationContext	()Landroid/content/Context;
    //   199: invokespecial 132	hmm:<init>	(Landroid/content/Context;)V
    //   202: invokeinterface 120 2 0
    //   207: pop
    //   208: aload_1
    //   209: invokeinterface 135 1 0
    //   214: ifne +18 -> 232
    //   217: new 137	hnc
    //   220: dup
    //   221: aload_0
    //   222: getfield 33	hmn:h	Lhnj;
    //   225: aload_1
    //   226: invokespecial 140	hnc:<init>	(Lhnj;Ljava/util/List;)V
    //   229: invokevirtual 142	hnc:a	()V
    //   232: getstatic 73	hmn:g	Lhmn;
    //   235: astore_0
    //   236: goto -220 -> 16
    //   239: iconst_0
    //   240: istore_3
    //   241: goto -193 -> 48
    //   244: iconst_0
    //   245: istore_3
    //   246: goto -182 -> 64
    //   249: iconst_0
    //   250: istore_3
    //   251: goto -171 -> 80
    //   254: iconst_0
    //   255: istore_3
    //   256: goto -159 -> 97
    //   259: astore_0
    //   260: ldc 2
    //   262: monitorexit
    //   263: aload_0
    //   264: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	265	0	paramhnj	hnj
    //   0	265	1	paramApplication	Application
    //   0	265	2	paramhmo	hmo
    //   47	209	3	bool1	boolean
    //   1	94	4	bool2	boolean
    //   104	21	5	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   6	16	259	finally
    //   21	46	259	finally
    //   48	62	259	finally
    //   64	78	259	finally
    //   80	94	259	finally
    //   97	177	259	finally
    //   177	208	259	finally
    //   208	232	259	finally
    //   232	236	259	finally
  }
  
  /* Error */
  public static hmn a(hnn paramhnn, Application paramApplication, hmo paramhmo)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 73	hmn:g	Lhmn;
    //   6: ifnull +12 -> 18
    //   9: getstatic 73	hmn:g	Lhmn;
    //   12: astore_0
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: aload_0
    //   19: invokestatic 67	aen:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   22: pop
    //   23: new 145	hnl
    //   26: dup
    //   27: invokespecial 146	hnl:<init>	()V
    //   30: astore_3
    //   31: new 148	hnm
    //   34: dup
    //   35: invokespecial 149	hnm:<init>	()V
    //   38: astore 5
    //   40: getstatic 154	hms:a	Ljava/util/concurrent/ScheduledExecutorService;
    //   43: astore 4
    //   45: new 156	hnp
    //   48: dup
    //   49: sipush 1000
    //   52: aload 5
    //   54: invokespecial 159	hnp:<init>	(ILhnm;)V
    //   57: astore 5
    //   59: aload 4
    //   61: new 161	hnk
    //   64: dup
    //   65: aload_0
    //   66: aload 5
    //   68: aload_3
    //   69: invokespecial 164	hnk:<init>	(Lhnn;Lhnp;Lhnl;)V
    //   72: ldc2_w 165
    //   75: getstatic 172	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   78: invokeinterface 178 5 0
    //   83: pop
    //   84: aload 5
    //   86: aload_1
    //   87: aload_2
    //   88: invokestatic 180	hmn:a	(Lhnj;Landroid/app/Application;Lhmo;)Lhmn;
    //   91: astore_0
    //   92: goto -79 -> 13
    //   95: astore_0
    //   96: ldc 2
    //   98: monitorexit
    //   99: aload_0
    //   100: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	paramhnn	hnn
    //   0	101	1	paramApplication	Application
    //   0	101	2	paramhmo	hmo
    //   30	39	3	localhnl	hnl
    //   43	17	4	localScheduledExecutorService	java.util.concurrent.ScheduledExecutorService
    //   38	47	5	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	13	95	finally
    //   18	92	95	finally
  }
  
  public static void a()
  {
    int k = 1;
    for (;;)
    {
      try
      {
        if (!a)
        {
          if (g != null)
          {
            j = 1;
            if (j == 0) {
              continue;
            }
            if (Build.VERSION.SDK_INT < 16)
            {
              j = 0;
              break label116;
              if (j != 0)
              {
                boolean bool = gb.a();
                if (bool) {
                  continue;
                }
              }
            }
          }
          else
          {
            j = 0;
            continue;
          }
          j = 1;
          break label116;
        }
        j = 0;
        continue;
        gb.c();
        hmb.a(gh, gi, gb).a();
        continue;
        if (j == 0) {
          continue;
        }
      }
      finally {}
      label116:
      int j = k;
    }
  }
}

/* Location:
 * Qualified Name:     hmn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */