import android.os.Looper;
import android.text.TextUtils;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class eit
  extends eht
{
  static final boolean a = false;
  static final ezv b = ezv.a("MediaLoader");
  private static hli<ejd> d;
  private static final Object f = new Object();
  final Object c = new Object();
  private final ExecutorService g = Executors.newSingleThreadExecutor();
  private final HashSet<ejc> h = new HashSet();
  private final LinkedList<ejc> i = new LinkedList();
  
  static
  {
    imx localimx = ezi.q;
  }
  
  private static int a(long paramLong1, long paramLong2)
  {
    if ((paramLong1 > 0L) && (paramLong2 > 0L)) {
      return (int)((paramLong1 - paramLong2) / 1000000L);
    }
    return -1;
  }
  
  private static void a(ejc paramejc, String paramString)
  {
    if (h != null)
    {
      if (h.h != null) {
        break label28;
      }
      paramejc = h;
    }
    for (;;)
    {
      h = paramString;
      return;
      label28:
      paramejc = h;
      String str = String.valueOf(h);
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {
        paramString = str.concat(paramString);
      } else {
        paramString = new String(str);
      }
    }
  }
  
  public static void a(PrintWriter paramPrintWriter)
  {
    for (;;)
    {
      synchronized (f)
      {
        if (d == null) {
          return;
        }
        paramPrintWriter.println("loadTime              w-e   a-e   dec-a del-dec del-e key extras");
        SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.US);
        int j = 0;
        if (j < d.a())
        {
          localObject1 = (ejd)d.a(j);
          String str1 = localSimpleDateFormat.format(Long.valueOf(a));
          int k = a(c, b);
          int m = a(d, b);
          int n = a(e, d);
          int i1 = a(f, e);
          int i2 = a(f, b);
          String str2 = g;
          if (h != null)
          {
            localObject1 = h;
            paramPrintWriter.println(String.format("%s %5d %5d %5d %5d %5d %s %s", new Object[] { str1, Integer.valueOf(k), Integer.valueOf(m), Integer.valueOf(n), Integer.valueOf(i1), Integer.valueOf(i2), str2, localObject1 }));
            j += 1;
          }
        }
        else
        {
          return;
        }
      }
      Object localObject1 = "";
    }
  }
  
  /* Error */
  private void a(byte[] paramArrayOfByte, String paramString, ejc paramejc, boolean paramBoolean)
  {
    // Byte code:
    //   0: invokestatic 179	hbs:b	()V
    //   3: aload_3
    //   4: invokevirtual 183	ejc:j	()Ljava/io/File;
    //   7: astore 6
    //   9: aload_2
    //   10: astore 5
    //   12: aload_2
    //   13: invokestatic 186	eit:f	(Ljava/lang/String;)Z
    //   16: ifne +24 -> 40
    //   19: aload_3
    //   20: getfield 187	ejc:g	Ljava/lang/String;
    //   23: astore_2
    //   24: aload_2
    //   25: astore 5
    //   27: aload_2
    //   28: invokestatic 186	eit:f	(Ljava/lang/String;)Z
    //   31: ifne +9 -> 40
    //   34: aload_0
    //   35: aload_3
    //   36: invokevirtual 190	eit:a	(Lejc;)V
    //   39: return
    //   40: aload 6
    //   42: aload 5
    //   44: aload_3
    //   45: getfield 193	ejc:f	Leyg;
    //   48: invokevirtual 199	eyg:r	()Ljava/lang/String;
    //   51: invokestatic 204	eye:a	(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   54: astore_2
    //   55: aload_2
    //   56: invokestatic 210	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   59: ifeq +20 -> 79
    //   62: aload_0
    //   63: aload_3
    //   64: invokevirtual 190	eit:a	(Lejc;)V
    //   67: ldc -44
    //   69: ldc -42
    //   71: iconst_0
    //   72: anewarray 43	java/lang/Object
    //   75: invokestatic 217	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   78: return
    //   79: aload 6
    //   81: invokevirtual 223	java/io/File:exists	()Z
    //   84: ifne +11 -> 95
    //   87: aload 6
    //   89: invokevirtual 226	java/io/File:mkdir	()Z
    //   92: ifeq +507 -> 599
    //   95: new 219	java/io/File
    //   98: dup
    //   99: aload 6
    //   101: aload_2
    //   102: invokespecial 229	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   105: astore 7
    //   107: aload 7
    //   109: invokevirtual 223	java/io/File:exists	()Z
    //   112: ifne +510 -> 622
    //   115: new 231	java/io/FileOutputStream
    //   118: dup
    //   119: aload 7
    //   121: invokespecial 234	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   124: astore 6
    //   126: aload 6
    //   128: astore 5
    //   130: aload 6
    //   132: astore_2
    //   133: aload 6
    //   135: aload_1
    //   136: invokevirtual 240	java/io/OutputStream:write	([B)V
    //   139: aload 6
    //   141: astore 5
    //   143: aload 6
    //   145: astore_2
    //   146: aload 6
    //   148: invokevirtual 243	java/io/OutputStream:flush	()V
    //   151: aload 6
    //   153: astore_1
    //   154: aload_1
    //   155: astore 5
    //   157: aload_1
    //   158: astore_2
    //   159: aload 7
    //   161: invokestatic 249	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   164: astore 6
    //   166: aload_1
    //   167: astore 5
    //   169: aload_1
    //   170: astore_2
    //   171: aload_3
    //   172: getfield 193	ejc:f	Leyg;
    //   175: aload 6
    //   177: invokevirtual 252	android/net/Uri:getPath	()Ljava/lang/String;
    //   180: invokevirtual 254	eyg:a	(Ljava/lang/String;)V
    //   183: aload_1
    //   184: astore 5
    //   186: aload_1
    //   187: astore_2
    //   188: aload_3
    //   189: aload 6
    //   191: invokevirtual 252	android/net/Uri:getPath	()Ljava/lang/String;
    //   194: invokevirtual 255	ejc:a	(Ljava/lang/String;)V
    //   197: aload_1
    //   198: astore 5
    //   200: aload_1
    //   201: astore_2
    //   202: aload_3
    //   203: getfield 193	ejc:f	Leyg;
    //   206: invokevirtual 199	eyg:r	()Ljava/lang/String;
    //   209: invokestatic 210	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   212: ifeq +35 -> 247
    //   215: aload_1
    //   216: astore 5
    //   218: aload_1
    //   219: astore_2
    //   220: new 257	android/content/Intent
    //   223: dup
    //   224: ldc_w 259
    //   227: aload 6
    //   229: invokespecial 262	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   232: astore 6
    //   234: aload_1
    //   235: astore 5
    //   237: aload_1
    //   238: astore_2
    //   239: getstatic 268	aal:oJ	Landroid/content/Context;
    //   242: aload 6
    //   244: invokevirtual 274	android/content/Context:sendBroadcast	(Landroid/content/Intent;)V
    //   247: aload_1
    //   248: astore 5
    //   250: aload_1
    //   251: astore_2
    //   252: getstatic 32	eit:a	Z
    //   255: ifeq +56 -> 311
    //   258: aload_1
    //   259: astore 5
    //   261: aload_1
    //   262: astore_2
    //   263: aload_3
    //   264: invokevirtual 277	ejc:toString	()Ljava/lang/String;
    //   267: invokestatic 94	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   270: astore 6
    //   272: aload_1
    //   273: astore 5
    //   275: aload_1
    //   276: astore_2
    //   277: aload 6
    //   279: invokevirtual 98	java/lang/String:length	()I
    //   282: ifeq +85 -> 367
    //   285: aload_1
    //   286: astore 5
    //   288: aload_1
    //   289: astore_2
    //   290: ldc_w 279
    //   293: aload 6
    //   295: invokevirtual 102	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   298: astore 6
    //   300: aload_1
    //   301: astore 5
    //   303: aload_1
    //   304: astore_2
    //   305: aload_0
    //   306: aload 6
    //   308: invokevirtual 281	eit:e	(Ljava/lang/String;)V
    //   311: iload 4
    //   313: ifeq +251 -> 564
    //   316: aload_1
    //   317: astore 5
    //   319: aload_1
    //   320: astore_2
    //   321: aload_0
    //   322: aload_3
    //   323: invokespecial 283	eit:d	(Lejc;)V
    //   326: aload_1
    //   327: astore 5
    //   329: aload_1
    //   330: astore_2
    //   331: aload_0
    //   332: aload_3
    //   333: invokevirtual 285	ejc:c	()Ljava/lang/String;
    //   336: invokevirtual 288	eit:b	(Ljava/lang/String;)Ljava/util/List;
    //   339: astore 6
    //   341: aload 6
    //   343: ifnonnull +88 -> 431
    //   346: aload_1
    //   347: ifnull -308 -> 39
    //   350: aload_1
    //   351: invokevirtual 291	java/io/OutputStream:close	()V
    //   354: return
    //   355: astore_1
    //   356: ldc -44
    //   358: ldc_w 293
    //   361: aload_1
    //   362: invokestatic 298	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   365: pop
    //   366: return
    //   367: aload_1
    //   368: astore 5
    //   370: aload_1
    //   371: astore_2
    //   372: new 90	java/lang/String
    //   375: dup
    //   376: ldc_w 279
    //   379: invokespecial 105	java/lang/String:<init>	(Ljava/lang/String;)V
    //   382: astore 6
    //   384: goto -84 -> 300
    //   387: astore_1
    //   388: aload 5
    //   390: astore_2
    //   391: aload_0
    //   392: aload_3
    //   393: invokevirtual 190	eit:a	(Lejc;)V
    //   396: aload 5
    //   398: astore_2
    //   399: ldc -44
    //   401: ldc_w 300
    //   404: aload_1
    //   405: invokestatic 303	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   408: aload 5
    //   410: ifnull -371 -> 39
    //   413: aload 5
    //   415: invokevirtual 291	java/io/OutputStream:close	()V
    //   418: return
    //   419: astore_1
    //   420: ldc -44
    //   422: ldc_w 293
    //   425: aload_1
    //   426: invokestatic 298	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   429: pop
    //   430: return
    //   431: aload_1
    //   432: astore 5
    //   434: aload_1
    //   435: astore_2
    //   436: aload 6
    //   438: invokeinterface 309 1 0
    //   443: astore 6
    //   445: aload_1
    //   446: astore 5
    //   448: aload_1
    //   449: astore_2
    //   450: aload 6
    //   452: invokeinterface 314 1 0
    //   457: ifeq +107 -> 564
    //   460: aload_1
    //   461: astore 5
    //   463: aload_1
    //   464: astore_2
    //   465: aload 6
    //   467: invokeinterface 318 1 0
    //   472: checkcast 320	ehx
    //   475: astore 7
    //   477: aload_1
    //   478: astore 5
    //   480: aload_1
    //   481: astore_2
    //   482: ldc_w 322
    //   485: aload 7
    //   487: instanceof 80
    //   490: invokestatic 325	hbs:a	(Ljava/lang/String;Z)V
    //   493: aload_1
    //   494: astore 5
    //   496: aload_1
    //   497: astore_2
    //   498: aload 7
    //   500: checkcast 80	ejc
    //   503: astore 7
    //   505: aload_1
    //   506: astore 5
    //   508: aload_1
    //   509: astore_2
    //   510: aload 7
    //   512: getfield 327	ejc:e	Z
    //   515: ifeq +36 -> 551
    //   518: aload_1
    //   519: astore 5
    //   521: aload_1
    //   522: astore_2
    //   523: aload_0
    //   524: new 329	eix
    //   527: dup
    //   528: aload_0
    //   529: aload 7
    //   531: invokespecial 332	eix:<init>	(Leit;Lejc;)V
    //   534: invokevirtual 335	eit:a	(Ljava/lang/Runnable;)V
    //   537: goto -92 -> 445
    //   540: astore_1
    //   541: aload_2
    //   542: ifnull +7 -> 549
    //   545: aload_2
    //   546: invokevirtual 291	java/io/OutputStream:close	()V
    //   549: aload_1
    //   550: athrow
    //   551: aload_1
    //   552: astore 5
    //   554: aload_1
    //   555: astore_2
    //   556: aload 7
    //   558: invokevirtual 337	ejc:h	()V
    //   561: goto -116 -> 445
    //   564: aload_1
    //   565: ifnull -526 -> 39
    //   568: aload_1
    //   569: invokevirtual 291	java/io/OutputStream:close	()V
    //   572: return
    //   573: astore_1
    //   574: ldc -44
    //   576: ldc_w 293
    //   579: aload_1
    //   580: invokestatic 298	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   583: pop
    //   584: return
    //   585: astore_2
    //   586: ldc -44
    //   588: ldc_w 293
    //   591: aload_2
    //   592: invokestatic 298	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   595: pop
    //   596: goto -47 -> 549
    //   599: ldc -44
    //   601: ldc_w 339
    //   604: invokestatic 342	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   607: pop
    //   608: return
    //   609: astore_1
    //   610: aconst_null
    //   611: astore_2
    //   612: goto -71 -> 541
    //   615: astore_1
    //   616: aconst_null
    //   617: astore 5
    //   619: goto -231 -> 388
    //   622: aconst_null
    //   623: astore_1
    //   624: goto -470 -> 154
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	627	0	this	eit
    //   0	627	1	paramArrayOfByte	byte[]
    //   0	627	2	paramString	String
    //   0	627	3	paramejc	ejc
    //   0	627	4	paramBoolean	boolean
    //   10	608	5	localObject1	Object
    //   7	459	6	localObject2	Object
    //   105	452	7	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   350	354	355	java/io/IOException
    //   133	139	387	java/io/IOException
    //   146	151	387	java/io/IOException
    //   159	166	387	java/io/IOException
    //   171	183	387	java/io/IOException
    //   188	197	387	java/io/IOException
    //   202	215	387	java/io/IOException
    //   220	234	387	java/io/IOException
    //   239	247	387	java/io/IOException
    //   252	258	387	java/io/IOException
    //   263	272	387	java/io/IOException
    //   277	285	387	java/io/IOException
    //   290	300	387	java/io/IOException
    //   305	311	387	java/io/IOException
    //   321	326	387	java/io/IOException
    //   331	341	387	java/io/IOException
    //   372	384	387	java/io/IOException
    //   436	445	387	java/io/IOException
    //   450	460	387	java/io/IOException
    //   465	477	387	java/io/IOException
    //   482	493	387	java/io/IOException
    //   498	505	387	java/io/IOException
    //   510	518	387	java/io/IOException
    //   523	537	387	java/io/IOException
    //   556	561	387	java/io/IOException
    //   413	418	419	java/io/IOException
    //   133	139	540	finally
    //   146	151	540	finally
    //   159	166	540	finally
    //   171	183	540	finally
    //   188	197	540	finally
    //   202	215	540	finally
    //   220	234	540	finally
    //   239	247	540	finally
    //   252	258	540	finally
    //   263	272	540	finally
    //   277	285	540	finally
    //   290	300	540	finally
    //   305	311	540	finally
    //   321	326	540	finally
    //   331	341	540	finally
    //   372	384	540	finally
    //   391	396	540	finally
    //   399	408	540	finally
    //   436	445	540	finally
    //   450	460	540	finally
    //   465	477	540	finally
    //   482	493	540	finally
    //   498	505	540	finally
    //   510	518	540	finally
    //   523	537	540	finally
    //   556	561	540	finally
    //   568	572	573	java/io/IOException
    //   545	549	585	java/io/IOException
    //   107	126	609	finally
    //   107	126	615	java/io/IOException
  }
  
  private void c(ejc paramejc)
  {
    if (a)
    {
      localObject = String.valueOf(paramejc.toString());
      if (((String)localObject).length() == 0) {
        break label74;
      }
    }
    label74:
    for (Object localObject = "startGetBytes on ".concat((String)localObject);; localObject = new String("startGetBytes on "))
    {
      e((String)localObject);
      if (h != null) {
        h.d = System.nanoTime();
      }
      localObject = paramejc.k_();
      if ((localObject != null) && (((eis)localObject).a() != null)) {
        a(paramejc, (eis)localObject);
      }
      return;
    }
  }
  
  private void d(ejc paramejc)
  {
    int k = 0;
    if (h != null) {
      h.f = System.nanoTime();
    }
    ejc localejc;
    for (;;)
    {
      synchronized (c)
      {
        if (paramejc.a())
        {
          boolean bool = h.remove(paramejc);
          if (!bool) {
            ezi.e("Babel_medialoader", String.valueOf(toString()).concat(" removeFromActive for a request that isn't in the active."), new Object[0]);
          }
          k = bool;
          if (a)
          {
            paramejc = String.valueOf(paramejc.toString());
            if (paramejc.length() == 0) {
              break label325;
            }
            paramejc = "removeFromActive: reference request =".concat(paramejc);
            e(paramejc);
            k = bool;
          }
        }
        if ((k != 0) && (h.size() >= 8))
        {
          int j = h.size();
          ezi.e("Babel_medialoader", 77 + "Number of active requests (" + j + ") greater than max active (8)", new Object[0]);
        }
        if ((k == 0) || (i.size() <= 0)) {
          break label439;
        }
        paramejc = null;
        localejc = paramejc;
        if (paramejc != null) {
          break label419;
        }
        localejc = paramejc;
        if (i.size() <= 0) {
          break label419;
        }
        localejc = (ejc)i.poll();
        if (a)
        {
          paramejc = String.valueOf(localejc.toString());
          if (paramejc.length() == 0) {
            break label339;
          }
          paramejc = "transferrequest selected  on ".concat(paramejc);
          e(paramejc);
        }
        if (!a(localejc.c())) {
          break;
        }
        if (a)
        {
          paramejc = String.valueOf(localejc.toString());
          if (paramejc.length() == 0) {
            break label353;
          }
          paramejc = "mediaDecoded waiting to active request =".concat(paramejc);
          e(paramejc);
        }
        h.add(localejc);
        paramejc = localejc;
      }
      label325:
      paramejc = new String("removeFromActive: reference request =");
      continue;
      label339:
      paramejc = new String("transferrequest selected  on ");
      continue;
      label353:
      paramejc = new String("mediaDecoded waiting to active request =");
    }
    if (a)
    {
      paramejc = String.valueOf(localejc.toString());
      if (paramejc.length() != 0) {}
      for (paramejc = "mediaDecoded waiting to active skipped: request =".concat(paramejc);; paramejc = new String("mediaDecoded waiting to active skipped: request ="))
      {
        e(paramejc);
        break;
      }
    }
    for (;;)
    {
      label419:
      if (localejc != null) {
        c(localejc);
      }
      return;
      paramejc = null;
      break;
      label439:
      localejc = null;
    }
  }
  
  private static boolean f(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      if ((paramString != null) && (paramString.endsWith("*"))) {}
      for (int j = 1; j == 0; j = 0) {
        return true;
      }
    }
    return false;
  }
  
  protected String a()
  {
    return "MediaLoader";
  }
  
  public void a(ejc paramejc)
  {
    hbs.b();
    String str = String.valueOf(paramejc.n());
    ezi.d("Babel", String.valueOf(str).length() + 21 + "Media failed to load:" + str, new Object[0]);
    a(paramejc, " Failed");
    d(paramejc);
    b(paramejc.c());
    if (e)
    {
      a(new eiz(this, paramejc));
      return;
    }
    paramejc.g();
  }
  
  public void a(ejc paramejc, eis parameis)
  {
    byte[] arrayOfByte = parameis.a();
    if (a) {
      if (parameis != null) {
        break label167;
      }
    }
    label167:
    int j;
    for (String str1 = " null ";; str1 = 18 + " size=" + j + " ")
    {
      String str2 = String.valueOf(paramejc.toString());
      e(String.valueOf(str1).length() + 16 + String.valueOf(str2).length() + "mediaDownloaded " + str1 + str2);
      if (h != null) {
        h.e = System.nanoTime();
      }
      if (parameis.c()) {
        a(paramejc, " Volley Cache Hit");
      }
      if ((arrayOfByte == null) || (arrayOfByte.length <= 0)) {
        break label257;
      }
      if ((paramejc.n().r() == null) || (!TextUtils.isEmpty(paramejc.n().q()))) {
        break;
      }
      g.execute(new eiu(this, paramejc, arrayOfByte, parameis));
      return;
      j = arrayOfByte.length;
    }
    if (paramejc.n().p())
    {
      g.execute(new eiv(this, paramejc, arrayOfByte, parameis));
      return;
    }
    g.execute(new eiw(this, paramejc, arrayOfByte));
    return;
    label257:
    b(paramejc);
  }
  
  public void a(ejc paramejc, ejb paramejb)
  {
    
    if (a)
    {
      localObject1 = String.valueOf(paramejc.toString());
      if (((String)localObject1).length() != 0)
      {
        localObject1 = "mediaDecoded ".concat((String)localObject1);
        e((String)localObject1);
      }
    }
    else
    {
      d(paramejc);
      localObject1 = b(paramejc.c());
      if (localObject1 != null) {
        break label80;
      }
      if (paramejb != null) {
        paramejb.b();
      }
    }
    label80:
    while (paramejb == null)
    {
      return;
      localObject1 = new String("mediaDecoded ");
      break;
    }
    Object localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (ehx)((Iterator)localObject1).next();
      hbs.a("Expected condition to be true", localObject2 instanceof ejc);
      paramejb.a();
      localObject2 = (ejc)localObject2;
      if ((h != null) && (h != null))
      {
        if (localObject2 != paramejc)
        {
          h.c = h.c;
          h.d = h.d;
          h.e = h.e;
          a((ejc)localObject2, " Secondary request");
        }
        h.f = System.nanoTime();
      }
      if (e)
      {
        a(new eiy(this, (ejc)localObject2, paramejb));
      }
      else
      {
        ((ejc)localObject2).a(paramejb);
        paramejb.b();
      }
    }
    paramejb.b();
  }
  
  protected void a(ArrayList<String> paramArrayList)
  {
    if (paramArrayList.size() > 0)
    {
      Iterator localIterator = paramArrayList.iterator();
      Object localObject1;
      for (;;)
      {
        if (!localIterator.hasNext()) {
          return;
        }
        paramArrayList = (String)localIterator.next();
        localObject1 = c(paramArrayList);
        if (localObject1 == null)
        {
          if (a)
          {
            paramArrayList = String.valueOf(paramArrayList);
            if (paramArrayList.length() != 0) {}
            for (paramArrayList = "No MediaRequests for key: ".concat(paramArrayList);; paramArrayList = new String("No MediaRequests for key: "))
            {
              e(paramArrayList);
              break;
            }
          }
        }
        else if ((localObject1 instanceof ejc))
        {
          localObject1 = (ejc)localObject1;
          if (h != null) {
            h.c = System.nanoTime();
          }
          synchronized (c)
          {
            if (!((ejc)localObject1).a())
            {
              paramArrayList = (ArrayList<String>)localObject1;
              if (a)
              {
                paramArrayList = String.valueOf(((ejc)localObject1).toString());
                if (paramArrayList.length() != 0)
                {
                  paramArrayList = "execute skip: reference request =".concat(paramArrayList);
                  e(paramArrayList);
                  paramArrayList = (ArrayList<String>)localObject1;
                }
              }
              else
              {
                if (paramArrayList == null) {
                  continue;
                }
                c(paramArrayList);
                continue;
              }
              paramArrayList = new String("execute skip: reference request =");
            }
          }
        }
      }
      if (h.size() < 8)
      {
        if (a)
        {
          paramArrayList = String.valueOf(((ejc)localObject1).toString());
          if (paramArrayList.length() == 0) {
            break label267;
          }
        }
        label267:
        for (paramArrayList = "execute add to active: reference request =".concat(paramArrayList);; paramArrayList = new String("execute add to active: reference request ="))
        {
          e(paramArrayList);
          h.add(localObject1);
          paramArrayList = (ArrayList<String>)localObject1;
          break;
        }
      }
      if (a)
      {
        paramArrayList = String.valueOf(((ejc)localObject1).toString());
        if (paramArrayList.length() == 0) {
          break label329;
        }
      }
      label329:
      for (paramArrayList = "execute add to waiting: reference request =".concat(paramArrayList);; paramArrayList = new String("execute add to waiting: reference request ="))
      {
        e(paramArrayList);
        i.add(localObject1);
        paramArrayList = null;
        break;
      }
    }
  }
  
  public boolean a(ehx paramehx)
  {
    return a(paramehx, false);
  }
  
  public boolean a(ehx paramehx, boolean paramBoolean)
  {
    if ((paramehx == null) || (!(paramehx instanceof ejc)))
    {
      paramehx = String.valueOf(paramehx);
      ezi.e("Babel_medialoader", String.valueOf(paramehx).length() + 35 + "MediaLoader.load: invalid request: " + paramehx, new Object[0]);
      return false;
    }
    ejc localejc = (ejc)paramehx;
    if (a)
    {
      ??? = String.valueOf(localejc.toString());
      e(String.valueOf(???).length() + 30 + "load req=" + (String)??? + " loadOnlyCached=" + paramBoolean);
    }
    Object localObject2;
    if (ezi.A)
    {
      localObject2 = new ejd();
      a = System.currentTimeMillis();
      b = System.nanoTime();
      g = localejc.c();
    }
    boolean bool;
    for (;;)
    {
      synchronized (f)
      {
        if (d == null) {
          d = new hli(200);
        }
        d.a(localObject2);
        h = ((ejd)localObject2);
        if ((!localejc.f()) || (!localejc.e())) {
          break label295;
        }
        bool = true;
        if ((bool) || (paramBoolean)) {
          break label361;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
          break;
        }
        super.c(paramehx);
        return false;
      }
      if (d != null)
      {
        synchronized (f)
        {
          if (d != null) {
            d = null;
          }
        }
        label295:
        bool = false;
      }
    }
    if (a)
    {
      ??? = String.valueOf(localejc.toString());
      if (((String)???).length() == 0) {
        break label346;
      }
    }
    label346:
    for (??? = "no cache found, load req=".concat((String)???);; ??? = new String("no cache found, load req="))
    {
      e((String)???);
      return super.a(paramehx);
    }
    label361:
    if (h != null)
    {
      long l = System.nanoTime();
      h.c = l;
      h.d = l;
      h.e = l;
      h.f = l;
      if (!bool) {
        break label486;
      }
      paramehx = " Bitmap Cache Hit";
      if (h.h != null) {
        break label493;
      }
      ??? = h;
      label440:
      h = paramehx;
      if (a)
      {
        paramehx = String.valueOf(h.toString());
        if (paramehx.length() == 0) {
          break label545;
        }
      }
    }
    label486:
    label493:
    label545:
    for (paramehx = "request history=".concat(paramehx);; paramehx = new String("request history="))
    {
      e(paramehx);
      return bool;
      paramehx = " Bitmap Cache Miss";
      break;
      ??? = h;
      localObject2 = String.valueOf(h);
      paramehx = String.valueOf(paramehx);
      if (paramehx.length() != 0)
      {
        paramehx = ((String)localObject2).concat(paramehx);
        break label440;
      }
      paramehx = new String((String)localObject2);
      break label440;
    }
  }
  
  public void b(ejc paramejc)
  {
    g.execute(new eja(this, paramejc));
  }
  
  void e(String paramString)
  {
    String str = String.valueOf(toString());
    new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(paramString).length()).append(str).append(": ").append(paramString);
  }
  
  public String toString()
  {
    int j = h.size();
    int k = i.size();
    return 51 + "MediaLoader: active/waiting=" + j + "/" + k;
  }
}

/* Location:
 * Qualified Name:     eit
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */