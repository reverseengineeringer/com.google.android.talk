import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

public final class hdf
{
  static hdf a;
  static final int b = a("present");
  final Handler c;
  final int[] d = new int[b];
  final Runnable e = new hdg(this);
  double f = -1.0D;
  hdh g = new hdh(this, 0, 0);
  volatile int h;
  volatile int i;
  volatile int j;
  private final HandlerThread k = new HandlerThread("CpuMonitor");
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      b = Runtime.getRuntime().availableProcessors();
      return;
    }
  }
  
  hdf()
  {
    k.start();
    c = new Handler(k.getLooper());
    c.post(e);
  }
  
  static int a(String paramString)
  {
    int n = 1;
    Object localObject = String.valueOf("/sys/devices/system/cpu/");
    String str = String.valueOf(paramString);
    if (str.length() != 0) {}
    for (localObject = ((String)localObject).concat(str);; localObject = new String((String)localObject))
    {
      localObject = c((String)localObject);
      int m = n;
      if (localObject != null)
      {
        localObject = ((String)localObject).split("\\-");
        m = n;
        if (localObject.length != 2) {}
      }
      try
      {
        m = Integer.parseInt(localObject[0]);
        n = Integer.parseInt(localObject[1]);
        n = n - m + 1;
        m = n;
        if (n <= 0) {
          m = 1;
        }
        return m;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        paramString = String.valueOf(paramString);
        if (paramString.length() == 0) {
          break;
        }
      }
    }
    for (paramString = "Could not parse cpu count for state: ".concat(paramString);; paramString = new String("Could not parse cpu count for state: "))
    {
      hlk.a(4, "vclib", paramString);
      return 1;
    }
  }
  
  static int b(String paramString)
  {
    paramString = c(paramString);
    try
    {
      int m = Integer.parseInt(paramString);
      return m;
    }
    catch (NumberFormatException paramString)
    {
      hlk.a(5, "vclib", "Could not parse cpu frequency value.");
    }
    return 0;
  }
  
  /* Error */
  private static String c(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 144	java/io/BufferedReader
    //   5: dup
    //   6: new 146	java/io/FileReader
    //   9: dup
    //   10: aload_0
    //   11: invokespecial 147	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   14: invokespecial 150	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   17: astore_2
    //   18: aload_2
    //   19: astore_1
    //   20: aload_2
    //   21: invokevirtual 154	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   24: astore 4
    //   26: aload 4
    //   28: astore_0
    //   29: aload_2
    //   30: invokevirtual 157	java/io/BufferedReader:close	()V
    //   33: aload_0
    //   34: areturn
    //   35: astore_1
    //   36: iconst_5
    //   37: ldc -123
    //   39: ldc -97
    //   41: invokestatic 138	hlk:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   44: aload_0
    //   45: areturn
    //   46: astore_1
    //   47: aconst_null
    //   48: astore_2
    //   49: aload_2
    //   50: astore_1
    //   51: aload_0
    //   52: invokestatic 108	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   55: astore_0
    //   56: aload_2
    //   57: astore_1
    //   58: aload_0
    //   59: invokevirtual 111	java/lang/String:length	()I
    //   62: ifeq +44 -> 106
    //   65: aload_2
    //   66: astore_1
    //   67: ldc -95
    //   69: aload_0
    //   70: invokevirtual 115	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   73: astore_0
    //   74: aload_2
    //   75: astore_1
    //   76: iconst_3
    //   77: ldc -123
    //   79: aload_0
    //   80: invokestatic 138	hlk:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   83: aload_3
    //   84: astore_0
    //   85: aload_2
    //   86: ifnull -53 -> 33
    //   89: aload_2
    //   90: invokevirtual 157	java/io/BufferedReader:close	()V
    //   93: aconst_null
    //   94: areturn
    //   95: astore_0
    //   96: iconst_5
    //   97: ldc -123
    //   99: ldc -97
    //   101: invokestatic 138	hlk:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   104: aconst_null
    //   105: areturn
    //   106: aload_2
    //   107: astore_1
    //   108: new 104	java/lang/String
    //   111: dup
    //   112: ldc -95
    //   114: invokespecial 129	java/lang/String:<init>	(Ljava/lang/String;)V
    //   117: astore_0
    //   118: goto -44 -> 74
    //   121: astore_0
    //   122: aload_1
    //   123: ifnull +7 -> 130
    //   126: aload_1
    //   127: invokevirtual 157	java/io/BufferedReader:close	()V
    //   130: aload_0
    //   131: athrow
    //   132: astore_1
    //   133: iconst_5
    //   134: ldc -123
    //   136: ldc -97
    //   138: invokestatic 138	hlk:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   141: goto -11 -> 130
    //   144: astore_0
    //   145: aconst_null
    //   146: astore_1
    //   147: goto -25 -> 122
    //   150: astore_1
    //   151: goto -102 -> 49
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	154	0	paramString	String
    //   19	1	1	localBufferedReader1	java.io.BufferedReader
    //   35	1	1	localIOException1	java.io.IOException
    //   46	1	1	localIOException2	java.io.IOException
    //   50	77	1	localBufferedReader2	java.io.BufferedReader
    //   132	1	1	localIOException3	java.io.IOException
    //   146	1	1	localObject1	Object
    //   150	1	1	localIOException4	java.io.IOException
    //   17	90	2	localBufferedReader3	java.io.BufferedReader
    //   1	83	3	localObject2	Object
    //   24	3	4	str	String
    // Exception table:
    //   from	to	target	type
    //   29	33	35	java/io/IOException
    //   2	18	46	java/io/IOException
    //   89	93	95	java/io/IOException
    //   20	26	121	finally
    //   51	56	121	finally
    //   58	65	121	finally
    //   67	74	121	finally
    //   76	83	121	finally
    //   108	118	121	finally
    //   126	130	132	java/io/IOException
    //   2	18	144	finally
    //   20	26	150	java/io/IOException
  }
  
  public void a()
  {
    c.removeCallbacks(e);
    if (k.getLooper() != null) {
      k.getLooper().quit();
    }
  }
  
  public int b()
  {
    return j;
  }
  
  public int c()
  {
    return d[0];
  }
  
  public int d()
  {
    return h;
  }
  
  public int e()
  {
    return i;
  }
  
  /* Error */
  hdh f()
  {
    // Byte code:
    //   0: iconst_m1
    //   1: istore 4
    //   3: ldc -75
    //   5: invokestatic 117	hdf:c	(Ljava/lang/String;)Ljava/lang/String;
    //   8: astore 5
    //   10: aload 5
    //   12: ifnonnull +14 -> 26
    //   15: new 64	hdh
    //   18: dup
    //   19: aload_0
    //   20: iconst_m1
    //   21: iconst_m1
    //   22: invokespecial 67	hdh:<init>	(Lhdf;II)V
    //   25: areturn
    //   26: new 183	java/util/Scanner
    //   29: dup
    //   30: aload 5
    //   32: invokespecial 184	java/util/Scanner:<init>	(Ljava/lang/String;)V
    //   35: astore 6
    //   37: aload 6
    //   39: astore 5
    //   41: aload 6
    //   43: invokevirtual 187	java/util/Scanner:next	()Ljava/lang/String;
    //   46: pop
    //   47: aload 6
    //   49: astore 5
    //   51: aload 6
    //   53: invokevirtual 190	java/util/Scanner:nextInt	()I
    //   56: istore_1
    //   57: aload 6
    //   59: astore 5
    //   61: aload 6
    //   63: invokevirtual 190	java/util/Scanner:nextInt	()I
    //   66: istore_2
    //   67: aload 6
    //   69: astore 5
    //   71: aload 6
    //   73: invokevirtual 190	java/util/Scanner:nextInt	()I
    //   76: istore_3
    //   77: iload_1
    //   78: iload_2
    //   79: iadd
    //   80: iload_3
    //   81: iadd
    //   82: istore_1
    //   83: aload 6
    //   85: astore 5
    //   87: aload 6
    //   89: invokevirtual 190	java/util/Scanner:nextInt	()I
    //   92: istore_3
    //   93: aload 6
    //   95: invokevirtual 191	java/util/Scanner:close	()V
    //   98: iload_1
    //   99: istore_2
    //   100: new 64	hdh
    //   103: dup
    //   104: aload_0
    //   105: iload_2
    //   106: iload_3
    //   107: invokespecial 67	hdh:<init>	(Lhdf;II)V
    //   110: areturn
    //   111: astore 5
    //   113: aconst_null
    //   114: astore 6
    //   116: iconst_m1
    //   117: istore_1
    //   118: aload 6
    //   120: astore 5
    //   122: iconst_5
    //   123: ldc -123
    //   125: ldc -63
    //   127: invokestatic 138	hlk:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   130: iload 4
    //   132: istore_3
    //   133: iload_1
    //   134: istore_2
    //   135: aload 6
    //   137: ifnull -37 -> 100
    //   140: aload 6
    //   142: invokevirtual 191	java/util/Scanner:close	()V
    //   145: iload 4
    //   147: istore_3
    //   148: iload_1
    //   149: istore_2
    //   150: goto -50 -> 100
    //   153: astore 6
    //   155: aconst_null
    //   156: astore 5
    //   158: aload 5
    //   160: ifnull +8 -> 168
    //   163: aload 5
    //   165: invokevirtual 191	java/util/Scanner:close	()V
    //   168: aload 6
    //   170: athrow
    //   171: astore 6
    //   173: goto -15 -> 158
    //   176: astore 5
    //   178: iconst_m1
    //   179: istore_1
    //   180: goto -62 -> 118
    //   183: astore 5
    //   185: goto -67 -> 118
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	188	0	this	hdf
    //   56	124	1	m	int
    //   66	84	2	n	int
    //   76	72	3	i1	int
    //   1	145	4	i2	int
    //   8	78	5	localObject1	Object
    //   111	1	5	localException1	Exception
    //   120	44	5	localObject2	Object
    //   176	1	5	localException2	Exception
    //   183	1	5	localException3	Exception
    //   35	106	6	localScanner	java.util.Scanner
    //   153	16	6	localObject3	Object
    //   171	1	6	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   26	37	111	java/lang/Exception
    //   26	37	153	finally
    //   41	47	171	finally
    //   51	57	171	finally
    //   61	67	171	finally
    //   71	77	171	finally
    //   87	93	171	finally
    //   122	130	171	finally
    //   41	47	176	java/lang/Exception
    //   51	57	176	java/lang/Exception
    //   61	67	176	java/lang/Exception
    //   71	77	176	java/lang/Exception
    //   87	93	183	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     hdf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */