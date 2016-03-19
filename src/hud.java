import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

final class hud
{
  private final int a;
  private final List<hue> b = new LinkedList();
  private final File c;
  private int d;
  private int e;
  
  public hud(Context paramContext, String paramString)
  {
    a = ((Build.VERSION.RELEASE.hashCode() + 31) * 31 + a(paramContext));
    paramContext = String.valueOf(paramContext.getDir(null, 0).getAbsolutePath());
    c = new File(String.valueOf(paramContext).length() + 1 + String.valueOf(paramString).length() + paramContext + "/" + paramString);
    d();
    b();
  }
  
  private static int a(Context paramContext)
  {
    try
    {
      int i = getPackageManagergetPackageInfogetPackageName0versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.e("BackgroundTask", "Failed to get application version", paramContext);
    }
    return 0;
  }
  
  private static int a(hus paramhus)
  {
    paramhus = paramhus.e();
    if (paramhus != null) {}
    for (int i = paramhus.length;; i = 0) {
      return i + 200;
    }
  }
  
  private void a(hue paramhue)
  {
    b.add(paramhue);
    e += a(c);
  }
  
  private void a(Iterator<hue> paramIterator, hue paramhue)
  {
    paramIterator.remove();
    e -= a(c);
  }
  
  private void b()
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      hue localhue = (hue)localIterator.next();
      if (c.h())
      {
        if (Log.isLoggable("BackgroundTask", 4))
        {
          String str1 = String.valueOf(c);
          String str2 = b;
          new StringBuilder(String.valueOf(str1).length() + 32 + String.valueOf(str2).length()).append("Dropping expired result: ").append(str1).append(", tag: ").append(str2);
        }
        a(localIterator, localhue);
      }
    }
  }
  
  private void c()
  {
    Iterator localIterator = b.iterator();
    while ((e > 512000) && (localIterator.hasNext()))
    {
      hue localhue = (hue)localIterator.next();
      if (Log.isLoggable("BackgroundTask", 4))
      {
        String str1 = String.valueOf(c);
        String str2 = b;
        new StringBuilder(String.valueOf(str1).length() + 37 + String.valueOf(str2).length()).append("Dropping result to make room: ").append(str1).append(", tag: ").append(str2);
      }
      a(localIterator, localhue);
    }
  }
  
  /* Error */
  private void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 78	hud:c	Ljava/io/File;
    //   4: astore 7
    //   6: aload 7
    //   8: monitorenter
    //   9: invokestatic 182	android/os/StrictMode:allowThreadDiskWrites	()Landroid/os/StrictMode$ThreadPolicy;
    //   12: astore 8
    //   14: aload_0
    //   15: getfield 78	hud:c	Ljava/io/File;
    //   18: invokevirtual 185	java/io/File:exists	()Z
    //   21: istore_3
    //   22: iload_3
    //   23: ifne +35 -> 58
    //   26: aload_0
    //   27: getfield 78	hud:c	Ljava/io/File;
    //   30: invokevirtual 185	java/io/File:exists	()Z
    //   33: ifeq +11 -> 44
    //   36: aload_0
    //   37: getfield 78	hud:c	Ljava/io/File;
    //   40: invokevirtual 188	java/io/File:delete	()Z
    //   43: pop
    //   44: aload_0
    //   45: iconst_0
    //   46: putfield 190	hud:d	I
    //   49: aload 8
    //   51: invokestatic 194	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   54: aload 7
    //   56: monitorexit
    //   57: return
    //   58: new 196	java/io/DataInputStream
    //   61: dup
    //   62: new 198	java/io/BufferedInputStream
    //   65: dup
    //   66: new 200	java/io/FileInputStream
    //   69: dup
    //   70: aload_0
    //   71: getfield 78	hud:c	Ljava/io/File;
    //   74: invokespecial 203	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   77: invokespecial 206	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   80: invokespecial 207	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   83: astore 5
    //   85: aload 5
    //   87: astore 4
    //   89: aload 5
    //   91: invokevirtual 210	java/io/DataInputStream:readInt	()I
    //   94: istore_1
    //   95: aload 5
    //   97: astore 4
    //   99: aload_0
    //   100: getfield 40	hud:a	I
    //   103: istore_2
    //   104: iload_1
    //   105: iload_2
    //   106: if_icmpeq +48 -> 154
    //   109: aload 5
    //   111: invokevirtual 213	java/io/DataInputStream:close	()V
    //   114: aload_0
    //   115: getfield 78	hud:c	Ljava/io/File;
    //   118: invokevirtual 185	java/io/File:exists	()Z
    //   121: ifeq +11 -> 132
    //   124: aload_0
    //   125: getfield 78	hud:c	Ljava/io/File;
    //   128: invokevirtual 188	java/io/File:delete	()Z
    //   131: pop
    //   132: aload_0
    //   133: iconst_0
    //   134: putfield 190	hud:d	I
    //   137: aload 8
    //   139: invokestatic 194	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   142: aload 7
    //   144: monitorexit
    //   145: return
    //   146: astore 4
    //   148: aload 7
    //   150: monitorexit
    //   151: aload 4
    //   153: athrow
    //   154: aload 5
    //   156: astore 4
    //   158: aload 5
    //   160: invokevirtual 210	java/io/DataInputStream:readInt	()I
    //   163: istore_2
    //   164: iconst_0
    //   165: istore_1
    //   166: iload_1
    //   167: iload_2
    //   168: if_icmpge +55 -> 223
    //   171: aload 5
    //   173: astore 4
    //   175: aload 5
    //   177: invokevirtual 210	java/io/DataInputStream:readInt	()I
    //   180: newarray <illegal type>
    //   182: astore 6
    //   184: aload 5
    //   186: astore 4
    //   188: aload 5
    //   190: aload 6
    //   192: invokevirtual 217	java/io/DataInputStream:readFully	([B)V
    //   195: aload 5
    //   197: astore 4
    //   199: aload_0
    //   200: aload 6
    //   202: ldc -127
    //   204: invokevirtual 223	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   207: invokestatic 228	aal:a	([BLjava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   210: checkcast 129	hue
    //   213: invokespecial 230	hud:a	(Lhue;)V
    //   216: iload_1
    //   217: iconst_1
    //   218: iadd
    //   219: istore_1
    //   220: goto -54 -> 166
    //   223: aload 5
    //   225: astore 4
    //   227: ldc 105
    //   229: iconst_4
    //   230: invokestatic 161	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   233: ifeq +40 -> 273
    //   236: aload 5
    //   238: astore 4
    //   240: aload_0
    //   241: getfield 23	hud:b	Ljava/util/List;
    //   244: invokeinterface 233 1 0
    //   249: istore_1
    //   250: aload 5
    //   252: astore 4
    //   254: new 58	java/lang/StringBuilder
    //   257: dup
    //   258: bipush 34
    //   260: invokespecial 64	java/lang/StringBuilder:<init>	(I)V
    //   263: ldc -21
    //   265: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: iload_1
    //   269: invokevirtual 238	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   272: pop
    //   273: aload 5
    //   275: invokevirtual 213	java/io/DataInputStream:close	()V
    //   278: aload_0
    //   279: getfield 78	hud:c	Ljava/io/File;
    //   282: invokevirtual 185	java/io/File:exists	()Z
    //   285: ifeq +11 -> 296
    //   288: aload_0
    //   289: getfield 78	hud:c	Ljava/io/File;
    //   292: invokevirtual 188	java/io/File:delete	()Z
    //   295: pop
    //   296: aload_0
    //   297: iconst_0
    //   298: putfield 190	hud:d	I
    //   301: aload 8
    //   303: invokestatic 194	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   306: aload 7
    //   308: monitorexit
    //   309: return
    //   310: astore 6
    //   312: aconst_null
    //   313: astore 5
    //   315: aload 5
    //   317: astore 4
    //   319: ldc 105
    //   321: ldc -16
    //   323: aload 6
    //   325: invokestatic 112	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   328: pop
    //   329: aload 5
    //   331: ifnull +8 -> 339
    //   334: aload 5
    //   336: invokevirtual 213	java/io/DataInputStream:close	()V
    //   339: aload_0
    //   340: getfield 78	hud:c	Ljava/io/File;
    //   343: invokevirtual 185	java/io/File:exists	()Z
    //   346: ifeq +11 -> 357
    //   349: aload_0
    //   350: getfield 78	hud:c	Ljava/io/File;
    //   353: invokevirtual 188	java/io/File:delete	()Z
    //   356: pop
    //   357: aload_0
    //   358: iconst_0
    //   359: putfield 190	hud:d	I
    //   362: aload 8
    //   364: invokestatic 194	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   367: goto -61 -> 306
    //   370: astore 5
    //   372: aconst_null
    //   373: astore 4
    //   375: aload 4
    //   377: ifnull +8 -> 385
    //   380: aload 4
    //   382: invokevirtual 213	java/io/DataInputStream:close	()V
    //   385: aload_0
    //   386: getfield 78	hud:c	Ljava/io/File;
    //   389: invokevirtual 185	java/io/File:exists	()Z
    //   392: ifeq +11 -> 403
    //   395: aload_0
    //   396: getfield 78	hud:c	Ljava/io/File;
    //   399: invokevirtual 188	java/io/File:delete	()Z
    //   402: pop
    //   403: aload_0
    //   404: iconst_0
    //   405: putfield 190	hud:d	I
    //   408: aload 8
    //   410: invokestatic 194	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   413: aload 5
    //   415: athrow
    //   416: astore 4
    //   418: goto -304 -> 114
    //   421: astore 4
    //   423: goto -145 -> 278
    //   426: astore 4
    //   428: goto -89 -> 339
    //   431: astore 4
    //   433: goto -48 -> 385
    //   436: astore 5
    //   438: goto -63 -> 375
    //   441: astore 6
    //   443: goto -128 -> 315
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	446	0	this	hud
    //   94	175	1	i	int
    //   103	66	2	j	int
    //   21	2	3	bool	boolean
    //   87	11	4	localDataInputStream1	java.io.DataInputStream
    //   146	6	4	localObject1	Object
    //   156	225	4	localDataInputStream2	java.io.DataInputStream
    //   416	1	4	localIOException1	java.io.IOException
    //   421	1	4	localIOException2	java.io.IOException
    //   426	1	4	localIOException3	java.io.IOException
    //   431	1	4	localIOException4	java.io.IOException
    //   83	252	5	localDataInputStream3	java.io.DataInputStream
    //   370	44	5	localObject2	Object
    //   436	1	5	localObject3	Object
    //   182	19	6	arrayOfByte	byte[]
    //   310	14	6	localException1	Exception
    //   441	1	6	localException2	Exception
    //   4	303	7	localFile	File
    //   12	397	8	localThreadPolicy	android.os.StrictMode.ThreadPolicy
    // Exception table:
    //   from	to	target	type
    //   9	14	146	finally
    //   26	44	146	finally
    //   44	57	146	finally
    //   109	114	146	finally
    //   114	132	146	finally
    //   132	145	146	finally
    //   148	151	146	finally
    //   273	278	146	finally
    //   278	296	146	finally
    //   296	306	146	finally
    //   306	309	146	finally
    //   334	339	146	finally
    //   339	357	146	finally
    //   357	367	146	finally
    //   380	385	146	finally
    //   385	403	146	finally
    //   403	416	146	finally
    //   14	22	310	java/lang/Exception
    //   58	85	310	java/lang/Exception
    //   14	22	370	finally
    //   58	85	370	finally
    //   109	114	416	java/io/IOException
    //   273	278	421	java/io/IOException
    //   334	339	426	java/io/IOException
    //   380	385	431	java/io/IOException
    //   89	95	436	finally
    //   99	104	436	finally
    //   158	164	436	finally
    //   175	184	436	finally
    //   188	195	436	finally
    //   199	216	436	finally
    //   227	236	436	finally
    //   240	250	436	finally
    //   254	273	436	finally
    //   319	329	436	finally
    //   89	95	441	java/lang/Exception
    //   99	104	441	java/lang/Exception
    //   158	164	441	java/lang/Exception
    //   175	184	441	java/lang/Exception
    //   188	195	441	java/lang/Exception
    //   199	216	441	java/lang/Exception
    //   227	236	441	java/lang/Exception
    //   240	250	441	java/lang/Exception
    //   254	273	441	java/lang/Exception
  }
  
  /* Error */
  public int a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 23	hud:b	Ljava/util/List;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: new 242	java/util/ArrayList
    //   10: dup
    //   11: aload_0
    //   12: getfield 23	hud:b	Ljava/util/List;
    //   15: invokeinterface 233 1 0
    //   20: invokespecial 243	java/util/ArrayList:<init>	(I)V
    //   23: astore 4
    //   25: aload_0
    //   26: getfield 23	hud:b	Ljava/util/List;
    //   29: invokeinterface 146 1 0
    //   34: astore_3
    //   35: aload_3
    //   36: invokeinterface 150 1 0
    //   41: ifeq +46 -> 87
    //   44: aload_3
    //   45: invokeinterface 154 1 0
    //   50: checkcast 129	hue
    //   53: astore 5
    //   55: aload 5
    //   57: getfield 132	hue:c	Lhus;
    //   60: invokevirtual 246	hus:j	()I
    //   63: getstatic 250	hut:c	I
    //   66: if_icmpne -31 -> 35
    //   69: aload 4
    //   71: aload 5
    //   73: invokeinterface 125 2 0
    //   78: pop
    //   79: goto -44 -> 35
    //   82: astore_3
    //   83: aload_2
    //   84: monitorexit
    //   85: aload_3
    //   86: athrow
    //   87: aload_2
    //   88: monitorexit
    //   89: aload_0
    //   90: getfield 78	hud:c	Ljava/io/File;
    //   93: astore 5
    //   95: aload 5
    //   97: monitorenter
    //   98: aload 4
    //   100: invokeinterface 251 1 0
    //   105: istore_1
    //   106: iload_1
    //   107: aload_0
    //   108: getfield 190	hud:d	I
    //   111: if_icmpne +8 -> 119
    //   114: aload 5
    //   116: monitorexit
    //   117: iconst_0
    //   118: ireturn
    //   119: new 253	java/io/DataOutputStream
    //   122: dup
    //   123: new 255	java/io/BufferedOutputStream
    //   126: dup
    //   127: new 257	java/io/FileOutputStream
    //   130: dup
    //   131: aload_0
    //   132: getfield 78	hud:c	Ljava/io/File;
    //   135: invokespecial 258	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   138: invokespecial 261	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   141: invokespecial 262	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   144: astore_3
    //   145: aload_3
    //   146: astore_2
    //   147: aload_3
    //   148: aload_0
    //   149: getfield 40	hud:a	I
    //   152: invokevirtual 265	java/io/DataOutputStream:writeInt	(I)V
    //   155: aload_3
    //   156: astore_2
    //   157: aload_3
    //   158: aload 4
    //   160: invokeinterface 233 1 0
    //   165: invokevirtual 265	java/io/DataOutputStream:writeInt	(I)V
    //   168: aload_3
    //   169: astore_2
    //   170: aload 4
    //   172: invokeinterface 146 1 0
    //   177: astore 6
    //   179: aload_3
    //   180: astore_2
    //   181: aload 6
    //   183: invokeinterface 150 1 0
    //   188: ifeq +68 -> 256
    //   191: aload_3
    //   192: astore_2
    //   193: aload 6
    //   195: invokeinterface 154 1 0
    //   200: checkcast 129	hue
    //   203: invokestatic 268	aal:a	(Landroid/os/Parcelable;)[B
    //   206: astore 7
    //   208: aload_3
    //   209: astore_2
    //   210: aload_3
    //   211: aload 7
    //   213: arraylength
    //   214: invokevirtual 265	java/io/DataOutputStream:writeInt	(I)V
    //   217: aload_3
    //   218: astore_2
    //   219: aload_3
    //   220: aload 7
    //   222: invokevirtual 271	java/io/DataOutputStream:write	([B)V
    //   225: goto -46 -> 179
    //   228: astore 4
    //   230: aload_3
    //   231: astore_2
    //   232: ldc 105
    //   234: ldc_w 273
    //   237: aload 4
    //   239: invokestatic 112	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   242: pop
    //   243: aload_3
    //   244: ifnull +7 -> 251
    //   247: aload_3
    //   248: invokevirtual 274	java/io/DataOutputStream:close	()V
    //   251: aload 5
    //   253: monitorexit
    //   254: iconst_m1
    //   255: ireturn
    //   256: aload_3
    //   257: astore_2
    //   258: aload_0
    //   259: iload_1
    //   260: putfield 190	hud:d	I
    //   263: aload_3
    //   264: astore_2
    //   265: ldc 105
    //   267: iconst_4
    //   268: invokestatic 161	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   271: ifeq +35 -> 306
    //   274: aload_3
    //   275: astore_2
    //   276: aload 4
    //   278: invokeinterface 233 1 0
    //   283: istore_1
    //   284: aload_3
    //   285: astore_2
    //   286: new 58	java/lang/StringBuilder
    //   289: dup
    //   290: bipush 38
    //   292: invokespecial 64	java/lang/StringBuilder:<init>	(I)V
    //   295: ldc_w 276
    //   298: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   301: iload_1
    //   302: invokevirtual 238	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   305: pop
    //   306: aload_3
    //   307: astore_2
    //   308: aload 4
    //   310: invokeinterface 233 1 0
    //   315: istore_1
    //   316: aload_3
    //   317: invokevirtual 274	java/io/DataOutputStream:close	()V
    //   320: aload 5
    //   322: monitorexit
    //   323: iload_1
    //   324: ireturn
    //   325: astore_2
    //   326: aload 5
    //   328: monitorexit
    //   329: aload_2
    //   330: athrow
    //   331: astore_3
    //   332: aconst_null
    //   333: astore_2
    //   334: aload_2
    //   335: ifnull +7 -> 342
    //   338: aload_2
    //   339: invokevirtual 274	java/io/DataOutputStream:close	()V
    //   342: aload_3
    //   343: athrow
    //   344: astore_2
    //   345: goto -25 -> 320
    //   348: astore_2
    //   349: goto -98 -> 251
    //   352: astore_2
    //   353: goto -11 -> 342
    //   356: astore_3
    //   357: goto -23 -> 334
    //   360: astore 4
    //   362: aconst_null
    //   363: astore_3
    //   364: goto -134 -> 230
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	367	0	this	hud
    //   105	219	1	i	int
    //   4	304	2	localObject1	Object
    //   325	5	2	localObject2	Object
    //   333	6	2	localObject3	Object
    //   344	1	2	localIOException1	java.io.IOException
    //   348	1	2	localIOException2	java.io.IOException
    //   352	1	2	localIOException3	java.io.IOException
    //   34	11	3	localIterator1	Iterator
    //   82	4	3	localObject4	Object
    //   144	173	3	localDataOutputStream	java.io.DataOutputStream
    //   331	12	3	localObject5	Object
    //   356	1	3	localObject6	Object
    //   363	1	3	localObject7	Object
    //   23	148	4	localArrayList	java.util.ArrayList
    //   228	81	4	localException1	Exception
    //   360	1	4	localException2	Exception
    //   53	274	5	localObject8	Object
    //   177	17	6	localIterator2	Iterator
    //   206	15	7	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   7	35	82	finally
    //   35	79	82	finally
    //   83	85	82	finally
    //   87	89	82	finally
    //   147	155	228	java/lang/Exception
    //   157	168	228	java/lang/Exception
    //   170	179	228	java/lang/Exception
    //   181	191	228	java/lang/Exception
    //   193	208	228	java/lang/Exception
    //   210	217	228	java/lang/Exception
    //   219	225	228	java/lang/Exception
    //   258	263	228	java/lang/Exception
    //   265	274	228	java/lang/Exception
    //   276	284	228	java/lang/Exception
    //   286	306	228	java/lang/Exception
    //   308	316	228	java/lang/Exception
    //   98	117	325	finally
    //   247	251	325	finally
    //   251	254	325	finally
    //   316	320	325	finally
    //   320	323	325	finally
    //   326	329	325	finally
    //   338	342	325	finally
    //   342	344	325	finally
    //   119	145	331	finally
    //   316	320	344	java/io/IOException
    //   247	251	348	java/io/IOException
    //   338	342	352	java/io/IOException
    //   147	155	356	finally
    //   157	168	356	finally
    //   170	179	356	finally
    //   181	191	356	finally
    //   193	208	356	finally
    //   210	217	356	finally
    //   219	225	356	finally
    //   232	243	356	finally
    //   258	263	356	finally
    //   265	274	356	finally
    //   276	284	356	finally
    //   286	306	356	finally
    //   308	316	356	finally
    //   119	145	360	java/lang/Exception
  }
  
  public int a(int paramInt)
  {
    List localList = b;
    int i = 0;
    for (;;)
    {
      try
      {
        Iterator localIterator = b.iterator();
        if (localIterator.hasNext())
        {
          hue localhue = (hue)localIterator.next();
          if (a == paramInt)
          {
            a(localIterator, localhue);
            i += 1;
          }
        }
        else
        {
          return i;
        }
      }
      finally {}
    }
  }
  
  public hus a(int paramInt, String paramString)
  {
    synchronized (b)
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        hue localhue = (hue)localIterator.next();
        if ((a == paramInt) && (TextUtils.equals(b, paramString)))
        {
          a(localIterator, localhue);
          paramString = c;
          return paramString;
        }
      }
      return null;
    }
  }
  
  public void a(int paramInt, String paramString, hus paramhus)
  {
    if (a(paramhus) > 128000)
    {
      if (Log.isLoggable("BackgroundTask", 5))
      {
        paramhus = String.valueOf(paramhus);
        new StringBuilder(String.valueOf(paramhus).length() + 34 + String.valueOf(paramString).length()).append("Result too large to store: ").append(paramhus).append(", tag: ").append(paramString);
      }
      return;
    }
    synchronized (b)
    {
      b();
      a(new hue(paramInt, paramString, paramhus));
      c();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     hud
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */