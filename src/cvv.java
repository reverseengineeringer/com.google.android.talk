import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class cvv
  implements agi
{
  private static final boolean a = false;
  private cvo b;
  private final File c;
  private final int d;
  
  static
  {
    imx localimx = ezi.i;
  }
  
  public cvv(File paramFile, int paramInt)
  {
    paramFile = String.valueOf(paramFile.getAbsolutePath());
    String str = String.valueOf("/volleyCache");
    if (str.length() != 0) {}
    for (paramFile = paramFile.concat(str);; paramFile = new String(paramFile))
    {
      c = new File(paramFile);
      d = paramInt;
      return;
    }
  }
  
  private static int a(InputStream paramInputStream)
  {
    int i = paramInputStream.read();
    if (i == -1) {
      throw new EOFException();
    }
    return i;
  }
  
  static void a(OutputStream paramOutputStream, int paramInt)
  {
    paramOutputStream.write(paramInt & 0xFF);
    paramOutputStream.write(paramInt >> 8 & 0xFF);
    paramOutputStream.write(paramInt >> 16 & 0xFF);
    paramOutputStream.write(paramInt >>> 24);
  }
  
  static void a(OutputStream paramOutputStream, long paramLong)
  {
    paramOutputStream.write((byte)(int)paramLong);
    paramOutputStream.write((byte)(int)(paramLong >>> 8));
    paramOutputStream.write((byte)(int)(paramLong >>> 16));
    paramOutputStream.write((byte)(int)(paramLong >>> 24));
    paramOutputStream.write((byte)(int)(paramLong >>> 32));
    paramOutputStream.write((byte)(int)(paramLong >>> 40));
    paramOutputStream.write((byte)(int)(paramLong >>> 48));
    paramOutputStream.write((byte)(int)(paramLong >>> 56));
  }
  
  static void a(OutputStream paramOutputStream, String paramString)
  {
    paramString = paramString.getBytes("UTF-8");
    a(paramOutputStream, paramString.length);
    paramOutputStream.write(paramString, 0, paramString.length);
  }
  
  static void a(Map<String, String> paramMap, OutputStream paramOutputStream)
  {
    if (paramMap != null)
    {
      a(paramOutputStream, paramMap.size());
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        a(paramOutputStream, (String)localEntry.getKey());
        a(paramOutputStream, (String)localEntry.getValue());
      }
    }
    a(paramOutputStream, 0);
  }
  
  private static byte[] a(InputStream paramInputStream, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      int j = paramInputStream.read(arrayOfByte, i, paramInt - i);
      if (j == -1) {
        break;
      }
      i += j;
    }
    if (i != paramInt) {
      throw new IOException(50 + "Expected " + paramInt + " bytes, read " + i + " bytes");
    }
    return arrayOfByte;
  }
  
  private static int b(InputStream paramInputStream)
  {
    return a(paramInputStream) | 0x0 | a(paramInputStream) << 8 | a(paramInputStream) << 16 | a(paramInputStream) << 24;
  }
  
  private static long c(InputStream paramInputStream)
  {
    return 0L | a(paramInputStream) & 0xFF | (a(paramInputStream) & 0xFF) << 8 | (a(paramInputStream) & 0xFF) << 16 | (a(paramInputStream) & 0xFF) << 24 | (a(paramInputStream) & 0xFF) << 32 | (a(paramInputStream) & 0xFF) << 40 | (a(paramInputStream) & 0xFF) << 48 | (a(paramInputStream) & 0xFF) << 56;
  }
  
  private static String d(InputStream paramInputStream)
  {
    return new String(a(paramInputStream, (int)c(paramInputStream)), "UTF-8");
  }
  
  private static Map<String, String> e(InputStream paramInputStream)
  {
    int j = b(paramInputStream);
    if (j == 0) {}
    for (Object localObject = Collections.emptyMap();; localObject = new hq(j))
    {
      int i = 0;
      while (i < j)
      {
        ((Map)localObject).put(d(paramInputStream).intern(), d(paramInputStream).intern());
        i += 1;
      }
    }
    return (Map<String, String>)localObject;
  }
  
  /* Error */
  public agj a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_1
    //   6: invokevirtual 195	java/lang/String:hashCode	()I
    //   9: istore_2
    //   10: aload_0
    //   11: getfield 197	cvv:b	Lcvo;
    //   14: iload_2
    //   15: invokestatic 200	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   18: invokevirtual 205	cvo:a	(Ljava/lang/String;)Lcvt;
    //   21: astore_3
    //   22: aload_3
    //   23: ifnull +427 -> 450
    //   26: aload_3
    //   27: invokevirtual 210	cvt:a	()Ljava/io/InputStream;
    //   30: astore_3
    //   31: aload_3
    //   32: astore 4
    //   34: new 212	cvw
    //   37: dup
    //   38: invokespecial 213	cvw:<init>	()V
    //   41: astore 6
    //   43: aload_3
    //   44: astore 4
    //   46: aload_3
    //   47: invokestatic 172	cvv:b	(Ljava/io/InputStream;)I
    //   50: ldc -42
    //   52: if_icmpeq +50 -> 102
    //   55: aload_3
    //   56: astore 4
    //   58: new 134	java/io/IOException
    //   61: dup
    //   62: invokespecial 215	java/io/IOException:<init>	()V
    //   65: athrow
    //   66: astore_1
    //   67: aload_3
    //   68: astore 4
    //   70: ldc -39
    //   72: ldc -37
    //   74: iconst_0
    //   75: anewarray 4	java/lang/Object
    //   78: invokestatic 222	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   81: aload 5
    //   83: astore 4
    //   85: aload_3
    //   86: ifnull +11 -> 97
    //   89: aload_3
    //   90: invokevirtual 225	java/io/InputStream:close	()V
    //   93: aload 5
    //   95: astore 4
    //   97: aload_0
    //   98: monitorexit
    //   99: aload 4
    //   101: areturn
    //   102: aload_3
    //   103: astore 4
    //   105: aload 6
    //   107: aload_3
    //   108: invokestatic 172	cvv:b	(Ljava/io/InputStream;)I
    //   111: putfield 227	cvw:a	I
    //   114: aload_3
    //   115: astore 4
    //   117: aload 6
    //   119: aload_3
    //   120: invokestatic 180	cvv:d	(Ljava/io/InputStream;)Ljava/lang/String;
    //   123: putfield 230	cvw:b	Ljava/lang/String;
    //   126: aload_3
    //   127: astore 4
    //   129: aload 6
    //   131: aload_3
    //   132: invokestatic 180	cvv:d	(Ljava/io/InputStream;)Ljava/lang/String;
    //   135: putfield 232	cvw:c	Ljava/lang/String;
    //   138: aload_3
    //   139: astore 4
    //   141: aload 6
    //   143: getfield 232	cvw:c	Ljava/lang/String;
    //   146: ldc -22
    //   148: invokevirtual 238	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   151: ifeq +12 -> 163
    //   154: aload_3
    //   155: astore 4
    //   157: aload 6
    //   159: aconst_null
    //   160: putfield 232	cvw:c	Ljava/lang/String;
    //   163: aload_3
    //   164: astore 4
    //   166: aload 6
    //   168: aload_3
    //   169: invokestatic 163	cvv:c	(Ljava/io/InputStream;)J
    //   172: putfield 241	cvw:d	J
    //   175: aload_3
    //   176: astore 4
    //   178: aload 6
    //   180: aload_3
    //   181: invokestatic 163	cvv:c	(Ljava/io/InputStream;)J
    //   184: putfield 243	cvw:e	J
    //   187: aload_3
    //   188: astore 4
    //   190: aload 6
    //   192: aload_3
    //   193: invokestatic 163	cvv:c	(Ljava/io/InputStream;)J
    //   196: putfield 246	cvw:f	J
    //   199: aload_3
    //   200: astore 4
    //   202: aload 6
    //   204: aload_3
    //   205: invokestatic 248	cvv:e	(Ljava/io/InputStream;)Ljava/util/Map;
    //   208: putfield 252	cvw:g	Ljava/util/Map;
    //   211: aload_3
    //   212: astore 4
    //   214: aload 6
    //   216: getfield 230	cvw:b	Ljava/lang/String;
    //   219: aload_1
    //   220: invokevirtual 238	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   223: ifne +112 -> 335
    //   226: aload_3
    //   227: astore 4
    //   229: getstatic 24	cvv:a	Z
    //   232: ifeq +31 -> 263
    //   235: aload_3
    //   236: astore 4
    //   238: aload_1
    //   239: invokestatic 41	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   242: astore_1
    //   243: aload_3
    //   244: astore 4
    //   246: aload_1
    //   247: invokevirtual 47	java/lang/String:length	()I
    //   250: ifeq +56 -> 306
    //   253: aload_3
    //   254: astore 4
    //   256: ldc -2
    //   258: aload_1
    //   259: invokevirtual 51	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   262: pop
    //   263: aload 5
    //   265: astore 4
    //   267: aload_3
    //   268: ifnull -171 -> 97
    //   271: aload_3
    //   272: invokevirtual 225	java/io/InputStream:close	()V
    //   275: aload 5
    //   277: astore 4
    //   279: goto -182 -> 97
    //   282: astore_1
    //   283: ldc -39
    //   285: ldc -37
    //   287: iconst_0
    //   288: anewarray 4	java/lang/Object
    //   291: invokestatic 222	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   294: aload 5
    //   296: astore 4
    //   298: goto -201 -> 97
    //   301: astore_1
    //   302: aload_0
    //   303: monitorexit
    //   304: aload_1
    //   305: athrow
    //   306: aload_3
    //   307: astore 4
    //   309: new 37	java/lang/String
    //   312: dup
    //   313: ldc -2
    //   315: invokespecial 59	java/lang/String:<init>	(Ljava/lang/String;)V
    //   318: pop
    //   319: goto -56 -> 263
    //   322: astore_1
    //   323: aload 4
    //   325: ifnull +8 -> 333
    //   328: aload 4
    //   330: invokevirtual 225	java/io/InputStream:close	()V
    //   333: aload_1
    //   334: athrow
    //   335: aload_3
    //   336: astore 4
    //   338: aload_3
    //   339: aload 6
    //   341: getfield 227	cvw:a	I
    //   344: invokestatic 165	cvv:a	(Ljava/io/InputStream;I)[B
    //   347: astore 7
    //   349: aload_3
    //   350: astore 4
    //   352: getstatic 24	cvv:a	Z
    //   355: ifeq +32 -> 387
    //   358: aload_3
    //   359: astore 4
    //   361: aload_1
    //   362: invokestatic 41	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   365: astore_1
    //   366: aload_3
    //   367: astore 4
    //   369: aload_1
    //   370: invokevirtual 47	java/lang/String:length	()I
    //   373: ifeq +60 -> 433
    //   376: aload_3
    //   377: astore 4
    //   379: ldc_w 256
    //   382: aload_1
    //   383: invokevirtual 51	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   386: pop
    //   387: aload_3
    //   388: astore 4
    //   390: aload 6
    //   392: aload 7
    //   394: invokevirtual 259	cvw:a	([B)Lagj;
    //   397: astore_1
    //   398: aload_1
    //   399: astore 4
    //   401: aload_3
    //   402: ifnull -305 -> 97
    //   405: aload_3
    //   406: invokevirtual 225	java/io/InputStream:close	()V
    //   409: aload_1
    //   410: astore 4
    //   412: goto -315 -> 97
    //   415: astore_3
    //   416: ldc -39
    //   418: ldc -37
    //   420: iconst_0
    //   421: anewarray 4	java/lang/Object
    //   424: invokestatic 222	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   427: aload_1
    //   428: astore 4
    //   430: goto -333 -> 97
    //   433: aload_3
    //   434: astore 4
    //   436: new 37	java/lang/String
    //   439: dup
    //   440: ldc_w 256
    //   443: invokespecial 59	java/lang/String:<init>	(Ljava/lang/String;)V
    //   446: pop
    //   447: goto -60 -> 387
    //   450: aload 5
    //   452: astore 4
    //   454: getstatic 24	cvv:a	Z
    //   457: ifeq -360 -> 97
    //   460: aload_1
    //   461: invokestatic 41	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   464: astore_1
    //   465: aload_1
    //   466: invokevirtual 47	java/lang/String:length	()I
    //   469: ifeq +18 -> 487
    //   472: ldc_w 261
    //   475: aload_1
    //   476: invokevirtual 51	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   479: pop
    //   480: aload 5
    //   482: astore 4
    //   484: goto -387 -> 97
    //   487: new 37	java/lang/String
    //   490: dup
    //   491: ldc_w 261
    //   494: invokespecial 59	java/lang/String:<init>	(Ljava/lang/String;)V
    //   497: pop
    //   498: aload 5
    //   500: astore 4
    //   502: goto -405 -> 97
    //   505: astore_1
    //   506: aconst_null
    //   507: astore 4
    //   509: goto -186 -> 323
    //   512: astore_1
    //   513: ldc -39
    //   515: ldc -37
    //   517: iconst_0
    //   518: anewarray 4	java/lang/Object
    //   521: invokestatic 222	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   524: aload 5
    //   526: astore 4
    //   528: goto -431 -> 97
    //   531: astore_3
    //   532: ldc -39
    //   534: ldc -37
    //   536: iconst_0
    //   537: anewarray 4	java/lang/Object
    //   540: invokestatic 222	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   543: goto -210 -> 333
    //   546: astore_1
    //   547: aconst_null
    //   548: astore_3
    //   549: goto -482 -> 67
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	552	0	this	cvv
    //   0	552	1	paramString	String
    //   9	6	2	i	int
    //   21	385	3	localObject1	Object
    //   415	19	3	localIOException1	IOException
    //   531	1	3	localIOException2	IOException
    //   548	1	3	localObject2	Object
    //   32	495	4	localObject3	Object
    //   1	524	5	localObject4	Object
    //   41	350	6	localcvw	cvw
    //   347	46	7	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   34	43	66	java/io/IOException
    //   46	55	66	java/io/IOException
    //   58	66	66	java/io/IOException
    //   105	114	66	java/io/IOException
    //   117	126	66	java/io/IOException
    //   129	138	66	java/io/IOException
    //   141	154	66	java/io/IOException
    //   157	163	66	java/io/IOException
    //   166	175	66	java/io/IOException
    //   178	187	66	java/io/IOException
    //   190	199	66	java/io/IOException
    //   202	211	66	java/io/IOException
    //   214	226	66	java/io/IOException
    //   229	235	66	java/io/IOException
    //   238	243	66	java/io/IOException
    //   246	253	66	java/io/IOException
    //   256	263	66	java/io/IOException
    //   309	319	66	java/io/IOException
    //   338	349	66	java/io/IOException
    //   352	358	66	java/io/IOException
    //   361	366	66	java/io/IOException
    //   369	376	66	java/io/IOException
    //   379	387	66	java/io/IOException
    //   390	398	66	java/io/IOException
    //   436	447	66	java/io/IOException
    //   271	275	282	java/io/IOException
    //   89	93	301	finally
    //   271	275	301	finally
    //   283	294	301	finally
    //   328	333	301	finally
    //   333	335	301	finally
    //   405	409	301	finally
    //   416	427	301	finally
    //   513	524	301	finally
    //   532	543	301	finally
    //   34	43	322	finally
    //   46	55	322	finally
    //   58	66	322	finally
    //   70	81	322	finally
    //   105	114	322	finally
    //   117	126	322	finally
    //   129	138	322	finally
    //   141	154	322	finally
    //   157	163	322	finally
    //   166	175	322	finally
    //   178	187	322	finally
    //   190	199	322	finally
    //   202	211	322	finally
    //   214	226	322	finally
    //   229	235	322	finally
    //   238	243	322	finally
    //   246	253	322	finally
    //   256	263	322	finally
    //   309	319	322	finally
    //   338	349	322	finally
    //   352	358	322	finally
    //   361	366	322	finally
    //   369	376	322	finally
    //   379	387	322	finally
    //   390	398	322	finally
    //   436	447	322	finally
    //   405	409	415	java/io/IOException
    //   5	22	505	finally
    //   26	31	505	finally
    //   454	480	505	finally
    //   487	498	505	finally
    //   89	93	512	java/io/IOException
    //   328	333	531	java/io/IOException
    //   5	22	546	java/io/IOException
    //   26	31	546	java/io/IOException
    //   454	480	546	java/io/IOException
    //   487	498	546	java/io/IOException
  }
  
  public void a()
  {
    try
    {
      b = cvo.a(c, d);
      return;
    }
    catch (IOException localIOException)
    {
      ezi.e("Babel", "VolleyDiskCache: IO exception on initialize", new Object[0]);
      throw new RuntimeException("Couldn't initialize volley disk cache");
    }
    finally {}
  }
  
  /* Error */
  public void a(String paramString, agj paramagj)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aconst_null
    //   3: astore 5
    //   5: aload 5
    //   7: astore 4
    //   9: aload_1
    //   10: invokevirtual 195	java/lang/String:hashCode	()I
    //   13: istore_3
    //   14: aload 5
    //   16: astore 4
    //   18: getstatic 24	cvv:a	Z
    //   21: ifeq +38 -> 59
    //   24: aload 5
    //   26: astore 4
    //   28: aload_1
    //   29: invokestatic 41	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   32: astore 6
    //   34: aload 5
    //   36: astore 4
    //   38: aload 6
    //   40: invokevirtual 47	java/lang/String:length	()I
    //   43: ifeq +129 -> 172
    //   46: aload 5
    //   48: astore 4
    //   50: ldc_w 274
    //   53: aload 6
    //   55: invokevirtual 51	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   58: pop
    //   59: aload 5
    //   61: astore 4
    //   63: aload_0
    //   64: getfield 197	cvv:b	Lcvo;
    //   67: iload_3
    //   68: invokestatic 200	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   71: invokevirtual 277	cvo:b	(Ljava/lang/String;)Lcvq;
    //   74: astore 7
    //   76: aload 5
    //   78: astore 4
    //   80: aload 7
    //   82: invokevirtual 282	cvq:a	()Ljava/io/OutputStream;
    //   85: astore 6
    //   87: aload 6
    //   89: astore 4
    //   91: aload 6
    //   93: astore 5
    //   95: aload_2
    //   96: getfield 285	agj:g	Ljava/util/Map;
    //   99: ldc_w 287
    //   102: ldc_w 287
    //   105: invokeinterface 187 3 0
    //   110: pop
    //   111: aload 6
    //   113: astore 4
    //   115: aload 6
    //   117: astore 5
    //   119: new 212	cvw
    //   122: dup
    //   123: aload_1
    //   124: aload_2
    //   125: invokespecial 289	cvw:<init>	(Ljava/lang/String;Lagj;)V
    //   128: aload 6
    //   130: invokevirtual 292	cvw:a	(Ljava/io/OutputStream;)Z
    //   133: pop
    //   134: aload 6
    //   136: astore 4
    //   138: aload 6
    //   140: astore 5
    //   142: aload 6
    //   144: aload_2
    //   145: getfield 295	agj:a	[B
    //   148: invokevirtual 298	java/io/OutputStream:write	([B)V
    //   151: aload 6
    //   153: astore 4
    //   155: aload 6
    //   157: astore 5
    //   159: aload 7
    //   161: invokevirtual 300	cvq:b	()V
    //   164: aload 6
    //   166: invokevirtual 301	java/io/OutputStream:close	()V
    //   169: aload_0
    //   170: monitorexit
    //   171: return
    //   172: aload 5
    //   174: astore 4
    //   176: new 37	java/lang/String
    //   179: dup
    //   180: ldc_w 274
    //   183: invokespecial 59	java/lang/String:<init>	(Ljava/lang/String;)V
    //   186: pop
    //   187: goto -128 -> 59
    //   190: astore_1
    //   191: aload 4
    //   193: astore 5
    //   195: ldc -39
    //   197: ldc_w 303
    //   200: iconst_0
    //   201: anewarray 4	java/lang/Object
    //   204: invokestatic 222	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   207: aload 4
    //   209: ifnull -40 -> 169
    //   212: aload 4
    //   214: invokevirtual 301	java/io/OutputStream:close	()V
    //   217: goto -48 -> 169
    //   220: astore_1
    //   221: ldc -39
    //   223: ldc_w 303
    //   226: iconst_0
    //   227: anewarray 4	java/lang/Object
    //   230: invokestatic 222	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   233: goto -64 -> 169
    //   236: astore_1
    //   237: aload_0
    //   238: monitorexit
    //   239: aload_1
    //   240: athrow
    //   241: astore_1
    //   242: ldc -39
    //   244: ldc_w 303
    //   247: iconst_0
    //   248: anewarray 4	java/lang/Object
    //   251: invokestatic 222	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   254: goto -85 -> 169
    //   257: astore_1
    //   258: aconst_null
    //   259: astore 5
    //   261: aload 5
    //   263: ifnull +8 -> 271
    //   266: aload 5
    //   268: invokevirtual 301	java/io/OutputStream:close	()V
    //   271: aload_1
    //   272: athrow
    //   273: astore_2
    //   274: ldc -39
    //   276: ldc_w 303
    //   279: iconst_0
    //   280: anewarray 4	java/lang/Object
    //   283: invokestatic 222	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   286: goto -15 -> 271
    //   289: astore_1
    //   290: goto -29 -> 261
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	293	0	this	cvv
    //   0	293	1	paramString	String
    //   0	293	2	paramagj	agj
    //   13	55	3	i	int
    //   7	206	4	localObject1	Object
    //   3	264	5	localObject2	Object
    //   32	133	6	localObject3	Object
    //   74	86	7	localcvq	cvq
    // Exception table:
    //   from	to	target	type
    //   9	14	190	java/io/IOException
    //   18	24	190	java/io/IOException
    //   28	34	190	java/io/IOException
    //   38	46	190	java/io/IOException
    //   50	59	190	java/io/IOException
    //   63	76	190	java/io/IOException
    //   80	87	190	java/io/IOException
    //   95	111	190	java/io/IOException
    //   119	134	190	java/io/IOException
    //   142	151	190	java/io/IOException
    //   159	164	190	java/io/IOException
    //   176	187	190	java/io/IOException
    //   212	217	220	java/io/IOException
    //   164	169	236	finally
    //   212	217	236	finally
    //   221	233	236	finally
    //   242	254	236	finally
    //   266	271	236	finally
    //   271	273	236	finally
    //   274	286	236	finally
    //   164	169	241	java/io/IOException
    //   9	14	257	finally
    //   18	24	257	finally
    //   28	34	257	finally
    //   38	46	257	finally
    //   50	59	257	finally
    //   63	76	257	finally
    //   80	87	257	finally
    //   176	187	257	finally
    //   266	271	273	java/io/IOException
    //   95	111	289	finally
    //   119	134	289	finally
    //   142	151	289	finally
    //   159	164	289	finally
    //   195	207	289	finally
  }
  
  public void b(String paramString)
  {
    for (;;)
    {
      try
      {
        int i = paramString.hashCode();
        if (a)
        {
          paramString = String.valueOf(paramString);
          if (paramString.length() == 0) {
            continue;
          }
          "VolleyDiskCache: Cache remove ".concat(paramString);
        }
        b.c(String.valueOf(i));
      }
      catch (IOException paramString)
      {
        continue;
      }
      finally {}
      return;
      new String("VolleyDiskCache: Cache remove ");
    }
  }
}

/* Location:
 * Qualified Name:     cvv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */