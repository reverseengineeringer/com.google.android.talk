import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.chromium.net.ChunkedWritableByteChannel;
import org.chromium.net.HttpUrlRequest;
import org.chromium.net.HttpUrlRequestListener;
import org.chromium.net.ResponseTooLargeException;

@Deprecated
public final class mow
  implements HttpUrlRequest
{
  private static ExecutorService B;
  private static final Object C = new Object();
  private final Object A;
  private final Context a;
  private final String b;
  private final String c;
  private final Map<String, String> d;
  private final WritableByteChannel e;
  private final HttpUrlRequestListener f;
  private IOException g;
  private HttpURLConnection h;
  private long i;
  private int j;
  private int k;
  private long l;
  private boolean m;
  private boolean n;
  private boolean o;
  private long p;
  private String q;
  private byte[] r;
  private ReadableByteChannel s;
  private String t;
  private int u;
  private String v;
  private boolean w;
  private boolean x;
  private String y;
  private InputStream z;
  
  public mow(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      throw new NullPointerException("Context is required");
    }
    String str2;
    if (str2 == null) {
      throw new NullPointerException("URL is required");
    }
    a = paramMap;
    String str1;
    b = str1;
    c = str2;
    Map localMap;
    d = localMap;
    WritableByteChannel localWritableByteChannel;
    e = localWritableByteChannel;
    HttpUrlRequestListener localHttpUrlRequestListener;
    f = localHttpUrlRequestListener;
    A = new Object();
  }
  
  public mow(Map<String, String> paramMap)
  {
    this(paramMap, str1, str2, localMap, new ChunkedWritableByteChannel(), localHttpUrlRequestListener);
  }
  
  private static ExecutorService p()
  {
    synchronized (C)
    {
      if (B == null) {
        B = Executors.newCachedThreadPool(new mox());
      }
      ExecutorService localExecutorService = B;
      return localExecutorService;
    }
  }
  
  /* Error */
  private void q()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   4: iconst_1
    //   5: invokevirtual 112	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   8: aload_0
    //   9: getfield 114	mow:q	Ljava/lang/String;
    //   12: invokestatic 120	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   15: ifne +16 -> 31
    //   18: aload_0
    //   19: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   22: ldc 122
    //   24: aload_0
    //   25: getfield 114	mow:q	Ljava/lang/String;
    //   28: invokevirtual 126	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   31: aconst_null
    //   32: astore_2
    //   33: aload_2
    //   34: astore_1
    //   35: aload_0
    //   36: getfield 128	mow:r	[B
    //   39: ifnull +46 -> 85
    //   42: aload_2
    //   43: astore_1
    //   44: aload_0
    //   45: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   48: aload_0
    //   49: getfield 128	mow:r	[B
    //   52: arraylength
    //   53: invokevirtual 132	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   56: aload_2
    //   57: astore_1
    //   58: aload_0
    //   59: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   62: invokevirtual 136	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   65: astore_2
    //   66: aload_2
    //   67: astore_1
    //   68: aload_2
    //   69: aload_0
    //   70: getfield 128	mow:r	[B
    //   73: invokevirtual 142	java/io/OutputStream:write	([B)V
    //   76: aload_2
    //   77: ifnull +7 -> 84
    //   80: aload_2
    //   81: invokevirtual 145	java/io/OutputStream:close	()V
    //   84: return
    //   85: aload_2
    //   86: astore_1
    //   87: aload_0
    //   88: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   91: aload_0
    //   92: getfield 147	mow:k	I
    //   95: invokevirtual 132	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   98: aload_2
    //   99: astore_1
    //   100: aload_0
    //   101: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   104: invokevirtual 136	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   107: astore_3
    //   108: aload_3
    //   109: astore_1
    //   110: sipush 8192
    //   113: newarray <illegal type>
    //   115: astore 4
    //   117: aload_3
    //   118: astore_1
    //   119: aload 4
    //   121: invokestatic 153	java/nio/ByteBuffer:wrap	([B)Ljava/nio/ByteBuffer;
    //   124: astore 5
    //   126: aload_3
    //   127: astore_2
    //   128: aload_3
    //   129: astore_1
    //   130: aload_0
    //   131: getfield 155	mow:s	Ljava/nio/channels/ReadableByteChannel;
    //   134: aload 5
    //   136: invokeinterface 161 2 0
    //   141: ifle -65 -> 76
    //   144: aload_3
    //   145: astore_1
    //   146: aload 5
    //   148: invokevirtual 165	java/nio/ByteBuffer:flip	()Ljava/nio/Buffer;
    //   151: pop
    //   152: aload_3
    //   153: astore_1
    //   154: aload_3
    //   155: aload 4
    //   157: iconst_0
    //   158: aload 5
    //   160: invokevirtual 169	java/nio/ByteBuffer:limit	()I
    //   163: invokevirtual 172	java/io/OutputStream:write	([BII)V
    //   166: aload_3
    //   167: astore_1
    //   168: aload 5
    //   170: invokevirtual 175	java/nio/ByteBuffer:clear	()Ljava/nio/Buffer;
    //   173: pop
    //   174: goto -48 -> 126
    //   177: astore_2
    //   178: aload_1
    //   179: ifnull +7 -> 186
    //   182: aload_1
    //   183: invokevirtual 145	java/io/OutputStream:close	()V
    //   186: aload_2
    //   187: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	188	0	this	mow
    //   34	149	1	localObject1	Object
    //   32	96	2	localObject2	Object
    //   177	10	2	localObject3	Object
    //   107	60	3	localOutputStream	java.io.OutputStream
    //   115	41	4	arrayOfByte	byte[]
    //   124	45	5	localByteBuffer	ByteBuffer
    // Exception table:
    //   from	to	target	type
    //   35	42	177	finally
    //   44	56	177	finally
    //   58	66	177	finally
    //   68	76	177	finally
    //   87	98	177	finally
    //   100	108	177	finally
    //   110	117	177	finally
    //   119	126	177	finally
    //   130	144	177	finally
    //   146	152	177	finally
    //   154	166	177	finally
    //   168	174	177	finally
  }
  
  private void r()
  {
    n = true;
    i();
  }
  
  private void s()
  {
    if (w) {
      throw new IllegalStateException("Request already started");
    }
  }
  
  public long a()
  {
    return j;
  }
  
  public void a(long paramLong)
  {
    i = paramLong;
  }
  
  public void a(long paramLong, boolean paramBoolean)
  {
    l = paramLong;
    m = paramBoolean;
  }
  
  public void a(String paramString)
  {
    s();
    y = paramString;
  }
  
  public void a(String paramString, ReadableByteChannel paramReadableByteChannel, long paramLong)
  {
    s();
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("Upload contentLength is too big.");
    }
    k = ((int)paramLong);
    q = paramString;
    s = paramReadableByteChannel;
    r = null;
  }
  
  public void a(String paramString, byte[] paramArrayOfByte)
  {
    s();
    q = paramString;
    r = paramArrayOfByte;
    s = null;
  }
  
  public int b()
  {
    int i2 = u;
    int i1 = i2;
    if (i2 == 206) {
      i1 = 200;
    }
    return i1;
  }
  
  public String c()
  {
    return v;
  }
  
  public IOException d()
  {
    if ((g == null) && (n)) {
      g = new ResponseTooLargeException();
    }
    return g;
  }
  
  public ByteBuffer e()
  {
    return ((ChunkedWritableByteChannel)e).a();
  }
  
  public byte[] f()
  {
    return ((ChunkedWritableByteChannel)e).b();
  }
  
  /* Error */
  void g()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: iconst_0
    //   3: istore_2
    //   4: iload_3
    //   5: istore_1
    //   6: aload_0
    //   7: getfield 84	mow:A	Ljava/lang/Object;
    //   10: astore 4
    //   12: iload_3
    //   13: istore_1
    //   14: aload 4
    //   16: monitorenter
    //   17: aload_0
    //   18: getfield 235	mow:x	Z
    //   21: ifeq +33 -> 54
    //   24: aload 4
    //   26: monitorexit
    //   27: aload_0
    //   28: getfield 155	mow:s	Ljava/nio/channels/ReadableByteChannel;
    //   31: ifnull +12 -> 43
    //   34: aload_0
    //   35: getfield 155	mow:s	Ljava/nio/channels/ReadableByteChannel;
    //   38: invokeinterface 236 1 0
    //   43: aload_0
    //   44: getfield 82	mow:f	Lorg/chromium/net/HttpUrlRequestListener;
    //   47: aload_0
    //   48: invokeinterface 241 2 0
    //   53: return
    //   54: aload 4
    //   56: monitorexit
    //   57: iload_3
    //   58: istore_1
    //   59: aload_0
    //   60: new 243	java/net/URL
    //   63: dup
    //   64: aload_0
    //   65: getfield 76	mow:c	Ljava/lang/String;
    //   68: invokespecial 244	java/net/URL:<init>	(Ljava/lang/String;)V
    //   71: invokevirtual 248	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   74: checkcast 108	java/net/HttpURLConnection
    //   77: putfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   80: iload_3
    //   81: istore_1
    //   82: aload_0
    //   83: getfield 201	mow:y	Ljava/lang/String;
    //   86: astore 4
    //   88: aload 4
    //   90: ifnull +16 -> 106
    //   93: iload_3
    //   94: istore_1
    //   95: aload_0
    //   96: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   99: aload_0
    //   100: getfield 201	mow:y	Ljava/lang/String;
    //   103: invokevirtual 251	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   106: iload_3
    //   107: istore_1
    //   108: aload_0
    //   109: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   112: sipush 3000
    //   115: invokevirtual 254	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   118: iload_3
    //   119: istore_1
    //   120: aload_0
    //   121: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   124: ldc -1
    //   126: invokevirtual 258	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   129: iload_3
    //   130: istore_1
    //   131: aload_0
    //   132: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   135: iconst_1
    //   136: invokevirtual 261	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   139: iload_3
    //   140: istore_1
    //   141: aload_0
    //   142: getfield 78	mow:d	Ljava/util/Map;
    //   145: ifnull +179 -> 324
    //   148: iload_3
    //   149: istore_1
    //   150: aload_0
    //   151: getfield 78	mow:d	Ljava/util/Map;
    //   154: invokeinterface 267 1 0
    //   159: invokeinterface 273 1 0
    //   164: astore 4
    //   166: iload_3
    //   167: istore_1
    //   168: aload 4
    //   170: invokeinterface 279 1 0
    //   175: ifeq +149 -> 324
    //   178: iload_3
    //   179: istore_1
    //   180: aload 4
    //   182: invokeinterface 283 1 0
    //   187: checkcast 285	java/util/Map$Entry
    //   190: astore 5
    //   192: iload_3
    //   193: istore_1
    //   194: aload_0
    //   195: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   198: aload 5
    //   200: invokeinterface 288 1 0
    //   205: checkcast 290	java/lang/String
    //   208: aload 5
    //   210: invokeinterface 293 1 0
    //   215: checkcast 290	java/lang/String
    //   218: invokevirtual 126	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   221: goto -55 -> 166
    //   224: astore 4
    //   226: iload_2
    //   227: istore_1
    //   228: aload_0
    //   229: aload 4
    //   231: putfield 218	mow:g	Ljava/io/IOException;
    //   234: aload_0
    //   235: getfield 155	mow:s	Ljava/nio/channels/ReadableByteChannel;
    //   238: ifnull +12 -> 250
    //   241: aload_0
    //   242: getfield 155	mow:s	Ljava/nio/channels/ReadableByteChannel;
    //   245: invokeinterface 236 1 0
    //   250: iload_2
    //   251: ifne -198 -> 53
    //   254: aload_0
    //   255: getfield 82	mow:f	Lorg/chromium/net/HttpUrlRequestListener;
    //   258: aload_0
    //   259: invokeinterface 241 2 0
    //   264: return
    //   265: astore 5
    //   267: aload 4
    //   269: monitorexit
    //   270: iload_3
    //   271: istore_1
    //   272: aload 5
    //   274: athrow
    //   275: astore 4
    //   277: aload_0
    //   278: getfield 155	mow:s	Ljava/nio/channels/ReadableByteChannel;
    //   281: ifnull +12 -> 293
    //   284: aload_0
    //   285: getfield 155	mow:s	Ljava/nio/channels/ReadableByteChannel;
    //   288: invokeinterface 236 1 0
    //   293: iload_1
    //   294: ifne +13 -> 307
    //   297: aload_0
    //   298: getfield 82	mow:f	Lorg/chromium/net/HttpUrlRequestListener;
    //   301: aload_0
    //   302: invokeinterface 241 2 0
    //   307: aload 4
    //   309: athrow
    //   310: astore 4
    //   312: iload_3
    //   313: istore_1
    //   314: new 206	java/lang/IllegalArgumentException
    //   317: dup
    //   318: aload 4
    //   320: invokespecial 296	java/lang/IllegalArgumentException:<init>	(Ljava/lang/Throwable;)V
    //   323: athrow
    //   324: iload_3
    //   325: istore_1
    //   326: aload_0
    //   327: getfield 192	mow:i	J
    //   330: lconst_0
    //   331: lcmp
    //   332: ifeq +41 -> 373
    //   335: iload_3
    //   336: istore_1
    //   337: aload_0
    //   338: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   341: ldc_w 298
    //   344: new 300	java/lang/StringBuilder
    //   347: dup
    //   348: ldc_w 302
    //   351: invokespecial 303	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   354: aload_0
    //   355: getfield 192	mow:i	J
    //   358: invokevirtual 307	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   361: ldc_w 309
    //   364: invokevirtual 312	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: invokevirtual 315	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   370: invokevirtual 126	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   373: iload_3
    //   374: istore_1
    //   375: aload_0
    //   376: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   379: ldc_w 317
    //   382: invokevirtual 321	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   385: ifnonnull +19 -> 404
    //   388: iload_3
    //   389: istore_1
    //   390: aload_0
    //   391: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   394: ldc_w 317
    //   397: aload_0
    //   398: getfield 74	mow:b	Ljava/lang/String;
    //   401: invokevirtual 126	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   404: iload_3
    //   405: istore_1
    //   406: aload_0
    //   407: getfield 128	mow:r	[B
    //   410: ifnonnull +12 -> 422
    //   413: iload_3
    //   414: istore_1
    //   415: aload_0
    //   416: getfield 155	mow:s	Ljava/nio/channels/ReadableByteChannel;
    //   419: ifnull +9 -> 428
    //   422: iload_3
    //   423: istore_1
    //   424: aload_0
    //   425: invokespecial 323	mow:q	()V
    //   428: aconst_null
    //   429: astore 4
    //   431: iload_3
    //   432: istore_1
    //   433: aload_0
    //   434: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   437: invokevirtual 327	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   440: astore 5
    //   442: aload 5
    //   444: astore 4
    //   446: iload_3
    //   447: istore_1
    //   448: aload_0
    //   449: aload_0
    //   450: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   453: invokevirtual 330	java/net/HttpURLConnection:getResponseCode	()I
    //   456: putfield 212	mow:u	I
    //   459: iload_3
    //   460: istore_1
    //   461: aload_0
    //   462: aload_0
    //   463: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   466: invokevirtual 333	java/net/HttpURLConnection:getResponseMessage	()Ljava/lang/String;
    //   469: putfield 215	mow:v	Ljava/lang/String;
    //   472: iload_3
    //   473: istore_1
    //   474: aload_0
    //   475: aload_0
    //   476: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   479: invokevirtual 336	java/net/HttpURLConnection:getContentType	()Ljava/lang/String;
    //   482: putfield 338	mow:t	Ljava/lang/String;
    //   485: iload_3
    //   486: istore_1
    //   487: aload_0
    //   488: aload_0
    //   489: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   492: invokevirtual 341	java/net/HttpURLConnection:getContentLength	()I
    //   495: putfield 189	mow:j	I
    //   498: iload_3
    //   499: istore_1
    //   500: aload_0
    //   501: getfield 195	mow:l	J
    //   504: lconst_0
    //   505: lcmp
    //   506: ifle +60 -> 566
    //   509: iload_3
    //   510: istore_1
    //   511: aload_0
    //   512: getfield 189	mow:j	I
    //   515: i2l
    //   516: aload_0
    //   517: getfield 195	mow:l	J
    //   520: lcmp
    //   521: ifle +45 -> 566
    //   524: iload_3
    //   525: istore_1
    //   526: aload_0
    //   527: getfield 197	mow:m	Z
    //   530: ifeq +36 -> 566
    //   533: iload_3
    //   534: istore_1
    //   535: aload_0
    //   536: invokespecial 343	mow:r	()V
    //   539: aload_0
    //   540: getfield 155	mow:s	Ljava/nio/channels/ReadableByteChannel;
    //   543: ifnull +12 -> 555
    //   546: aload_0
    //   547: getfield 155	mow:s	Ljava/nio/channels/ReadableByteChannel;
    //   550: invokeinterface 236 1 0
    //   555: aload_0
    //   556: getfield 82	mow:f	Lorg/chromium/net/HttpUrlRequestListener;
    //   559: aload_0
    //   560: invokeinterface 241 2 0
    //   565: return
    //   566: iload_3
    //   567: istore_1
    //   568: aload_0
    //   569: getfield 82	mow:f	Lorg/chromium/net/HttpUrlRequestListener;
    //   572: aload_0
    //   573: invokeinterface 345 2 0
    //   578: iload_3
    //   579: istore_1
    //   580: aload_0
    //   581: getfield 212	mow:u	I
    //   584: bipush 100
    //   586: idiv
    //   587: iconst_2
    //   588: if_icmpeq +198 -> 786
    //   591: iconst_1
    //   592: istore_1
    //   593: iload_1
    //   594: ifeq +14 -> 608
    //   597: iload_3
    //   598: istore_1
    //   599: aload_0
    //   600: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   603: invokevirtual 348	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   606: astore 4
    //   608: iload_3
    //   609: istore_1
    //   610: aload_0
    //   611: aload 4
    //   613: putfield 350	mow:z	Ljava/io/InputStream;
    //   616: iload_3
    //   617: istore_1
    //   618: aload_0
    //   619: getfield 350	mow:z	Ljava/io/InputStream;
    //   622: ifnull +45 -> 667
    //   625: iload_3
    //   626: istore_1
    //   627: ldc_w 352
    //   630: aload_0
    //   631: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   634: invokevirtual 355	java/net/HttpURLConnection:getContentEncoding	()Ljava/lang/String;
    //   637: invokevirtual 359	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   640: ifeq +27 -> 667
    //   643: iload_3
    //   644: istore_1
    //   645: aload_0
    //   646: new 361	java/util/zip/GZIPInputStream
    //   649: dup
    //   650: aload_0
    //   651: getfield 350	mow:z	Ljava/io/InputStream;
    //   654: invokespecial 364	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   657: putfield 350	mow:z	Ljava/io/InputStream;
    //   660: iload_3
    //   661: istore_1
    //   662: aload_0
    //   663: iconst_m1
    //   664: putfield 189	mow:j	I
    //   667: iload_3
    //   668: istore_1
    //   669: aload_0
    //   670: getfield 192	mow:i	J
    //   673: lconst_0
    //   674: lcmp
    //   675: ifeq +49 -> 724
    //   678: iload_3
    //   679: istore_1
    //   680: aload_0
    //   681: getfield 212	mow:u	I
    //   684: sipush 200
    //   687: if_icmpne +104 -> 791
    //   690: iload_3
    //   691: istore_1
    //   692: aload_0
    //   693: getfield 189	mow:j	I
    //   696: iconst_m1
    //   697: if_icmpeq +20 -> 717
    //   700: iload_3
    //   701: istore_1
    //   702: aload_0
    //   703: aload_0
    //   704: getfield 189	mow:j	I
    //   707: i2l
    //   708: aload_0
    //   709: getfield 192	mow:i	J
    //   712: lsub
    //   713: l2i
    //   714: putfield 189	mow:j	I
    //   717: iload_3
    //   718: istore_1
    //   719: aload_0
    //   720: iconst_1
    //   721: putfield 366	mow:o	Z
    //   724: iload_3
    //   725: istore_1
    //   726: aload_0
    //   727: getfield 350	mow:z	Ljava/io/InputStream;
    //   730: astore 4
    //   732: aload 4
    //   734: ifnull +114 -> 848
    //   737: invokestatic 368	mow:p	()Ljava/util/concurrent/ExecutorService;
    //   740: new 370	moz
    //   743: dup
    //   744: aload_0
    //   745: invokespecial 373	moz:<init>	(Lmow;)V
    //   748: invokeinterface 379 2 0
    //   753: iconst_1
    //   754: istore_1
    //   755: aload_0
    //   756: getfield 155	mow:s	Ljava/nio/channels/ReadableByteChannel;
    //   759: ifnull +12 -> 771
    //   762: aload_0
    //   763: getfield 155	mow:s	Ljava/nio/channels/ReadableByteChannel;
    //   766: invokeinterface 236 1 0
    //   771: iload_1
    //   772: ifne -719 -> 53
    //   775: aload_0
    //   776: getfield 82	mow:f	Lorg/chromium/net/HttpUrlRequestListener;
    //   779: aload_0
    //   780: invokeinterface 241 2 0
    //   785: return
    //   786: iconst_0
    //   787: istore_1
    //   788: goto -195 -> 593
    //   791: iload_3
    //   792: istore_1
    //   793: aload_0
    //   794: aload_0
    //   795: getfield 192	mow:i	J
    //   798: putfield 381	mow:p	J
    //   801: goto -77 -> 724
    //   804: astore 5
    //   806: goto -513 -> 293
    //   809: astore 4
    //   811: iconst_1
    //   812: istore_1
    //   813: goto -536 -> 277
    //   816: astore 4
    //   818: goto -568 -> 250
    //   821: astore 4
    //   823: iconst_1
    //   824: istore_2
    //   825: goto -599 -> 226
    //   828: astore 4
    //   830: goto -59 -> 771
    //   833: astore 4
    //   835: goto -280 -> 555
    //   838: astore 5
    //   840: goto -394 -> 446
    //   843: astore 4
    //   845: goto -802 -> 43
    //   848: iconst_0
    //   849: istore_1
    //   850: goto -95 -> 755
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	853	0	this	mow
    //   5	845	1	i1	int
    //   3	822	2	i2	int
    //   1	791	3	i3	int
    //   10	171	4	localObject1	Object
    //   224	44	4	localIOException1	IOException
    //   275	33	4	localObject2	Object
    //   310	9	4	localProtocolException	java.net.ProtocolException
    //   429	304	4	localObject3	Object
    //   809	1	4	localObject4	Object
    //   816	1	4	localIOException2	IOException
    //   821	1	4	localIOException3	IOException
    //   828	1	4	localIOException4	IOException
    //   833	1	4	localIOException5	IOException
    //   843	1	4	localIOException6	IOException
    //   190	19	5	localEntry	java.util.Map.Entry
    //   265	8	5	localObject5	Object
    //   440	3	5	localInputStream	InputStream
    //   804	1	5	localIOException7	IOException
    //   838	1	5	localFileNotFoundException	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   6	12	224	java/io/IOException
    //   14	17	224	java/io/IOException
    //   59	80	224	java/io/IOException
    //   82	88	224	java/io/IOException
    //   95	106	224	java/io/IOException
    //   108	118	224	java/io/IOException
    //   120	129	224	java/io/IOException
    //   131	139	224	java/io/IOException
    //   141	148	224	java/io/IOException
    //   150	166	224	java/io/IOException
    //   168	178	224	java/io/IOException
    //   180	192	224	java/io/IOException
    //   194	221	224	java/io/IOException
    //   272	275	224	java/io/IOException
    //   314	324	224	java/io/IOException
    //   326	335	224	java/io/IOException
    //   337	373	224	java/io/IOException
    //   375	388	224	java/io/IOException
    //   390	404	224	java/io/IOException
    //   406	413	224	java/io/IOException
    //   415	422	224	java/io/IOException
    //   424	428	224	java/io/IOException
    //   433	442	224	java/io/IOException
    //   448	459	224	java/io/IOException
    //   461	472	224	java/io/IOException
    //   474	485	224	java/io/IOException
    //   487	498	224	java/io/IOException
    //   500	509	224	java/io/IOException
    //   511	524	224	java/io/IOException
    //   526	533	224	java/io/IOException
    //   535	539	224	java/io/IOException
    //   568	578	224	java/io/IOException
    //   580	591	224	java/io/IOException
    //   599	608	224	java/io/IOException
    //   610	616	224	java/io/IOException
    //   618	625	224	java/io/IOException
    //   627	643	224	java/io/IOException
    //   645	660	224	java/io/IOException
    //   662	667	224	java/io/IOException
    //   669	678	224	java/io/IOException
    //   680	690	224	java/io/IOException
    //   692	700	224	java/io/IOException
    //   702	717	224	java/io/IOException
    //   719	724	224	java/io/IOException
    //   726	732	224	java/io/IOException
    //   793	801	224	java/io/IOException
    //   17	27	265	finally
    //   54	57	265	finally
    //   267	270	265	finally
    //   6	12	275	finally
    //   14	17	275	finally
    //   59	80	275	finally
    //   82	88	275	finally
    //   95	106	275	finally
    //   108	118	275	finally
    //   120	129	275	finally
    //   131	139	275	finally
    //   141	148	275	finally
    //   150	166	275	finally
    //   168	178	275	finally
    //   180	192	275	finally
    //   194	221	275	finally
    //   228	234	275	finally
    //   272	275	275	finally
    //   314	324	275	finally
    //   326	335	275	finally
    //   337	373	275	finally
    //   375	388	275	finally
    //   390	404	275	finally
    //   406	413	275	finally
    //   415	422	275	finally
    //   424	428	275	finally
    //   433	442	275	finally
    //   448	459	275	finally
    //   461	472	275	finally
    //   474	485	275	finally
    //   487	498	275	finally
    //   500	509	275	finally
    //   511	524	275	finally
    //   526	533	275	finally
    //   535	539	275	finally
    //   568	578	275	finally
    //   580	591	275	finally
    //   599	608	275	finally
    //   610	616	275	finally
    //   618	625	275	finally
    //   627	643	275	finally
    //   645	660	275	finally
    //   662	667	275	finally
    //   669	678	275	finally
    //   680	690	275	finally
    //   692	700	275	finally
    //   702	717	275	finally
    //   719	724	275	finally
    //   726	732	275	finally
    //   793	801	275	finally
    //   95	106	310	java/net/ProtocolException
    //   284	293	804	java/io/IOException
    //   737	753	809	finally
    //   241	250	816	java/io/IOException
    //   737	753	821	java/io/IOException
    //   762	771	828	java/io/IOException
    //   546	555	833	java/io/IOException
    //   433	442	838	java/io/FileNotFoundException
    //   34	43	843	java/io/IOException
  }
  
  public void h()
  {
    p().execute(new moy(this));
  }
  
  public void i()
  {
    synchronized (A)
    {
      if (x) {
        return;
      }
      x = true;
      return;
    }
  }
  
  public boolean j()
  {
    synchronized (A)
    {
      boolean bool = x;
      return bool;
    }
  }
  
  public String k()
  {
    return "";
  }
  
  public String l()
  {
    return t;
  }
  
  public Map<String, List<String>> m()
  {
    if (h == null) {
      throw new IllegalStateException("Response headers not available");
    }
    return h.getHeaderFields();
  }
  
  public String n()
  {
    return c;
  }
  
  /* Error */
  void o()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 350	mow:z	Ljava/io/InputStream;
    //   4: ifnull +141 -> 145
    //   7: sipush 8192
    //   10: newarray <illegal type>
    //   12: astore_3
    //   13: aload_0
    //   14: invokevirtual 397	mow:j	()Z
    //   17: ifne +128 -> 145
    //   20: aload_0
    //   21: getfield 350	mow:z	Ljava/io/InputStream;
    //   24: aload_3
    //   25: invokevirtual 402	java/io/InputStream:read	([B)I
    //   28: istore_2
    //   29: iload_2
    //   30: iconst_m1
    //   31: if_icmpeq +114 -> 145
    //   34: aload_0
    //   35: aload_0
    //   36: getfield 381	mow:p	J
    //   39: iload_2
    //   40: i2l
    //   41: ladd
    //   42: putfield 381	mow:p	J
    //   45: aload_0
    //   46: getfield 366	mow:o	Z
    //   49: ifeq +249 -> 298
    //   52: aload_0
    //   53: getfield 381	mow:p	J
    //   56: aload_0
    //   57: getfield 192	mow:i	J
    //   60: lcmp
    //   61: ifle -48 -> 13
    //   64: aload_0
    //   65: iconst_0
    //   66: putfield 366	mow:o	Z
    //   69: aload_0
    //   70: getfield 192	mow:i	J
    //   73: aload_0
    //   74: getfield 381	mow:p	J
    //   77: iload_2
    //   78: i2l
    //   79: lsub
    //   80: lsub
    //   81: l2i
    //   82: istore_1
    //   83: iload_2
    //   84: iload_1
    //   85: isub
    //   86: istore_2
    //   87: aload_0
    //   88: getfield 195	mow:l	J
    //   91: lconst_0
    //   92: lcmp
    //   93: ifeq +79 -> 172
    //   96: aload_0
    //   97: getfield 381	mow:p	J
    //   100: aload_0
    //   101: getfield 195	mow:l	J
    //   104: lcmp
    //   105: ifle +67 -> 172
    //   108: iload_2
    //   109: aload_0
    //   110: getfield 381	mow:p	J
    //   113: aload_0
    //   114: getfield 195	mow:l	J
    //   117: lsub
    //   118: l2i
    //   119: isub
    //   120: istore_2
    //   121: iload_2
    //   122: ifle +19 -> 141
    //   125: aload_0
    //   126: getfield 80	mow:e	Ljava/nio/channels/WritableByteChannel;
    //   129: aload_3
    //   130: iload_1
    //   131: iload_2
    //   132: invokestatic 405	java/nio/ByteBuffer:wrap	([BII)Ljava/nio/ByteBuffer;
    //   135: invokeinterface 409 2 0
    //   140: pop
    //   141: aload_0
    //   142: invokespecial 343	mow:r	()V
    //   145: aload_0
    //   146: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   149: invokevirtual 412	java/net/HttpURLConnection:disconnect	()V
    //   152: aload_0
    //   153: getfield 80	mow:e	Ljava/nio/channels/WritableByteChannel;
    //   156: invokeinterface 413 1 0
    //   161: aload_0
    //   162: getfield 82	mow:f	Lorg/chromium/net/HttpUrlRequestListener;
    //   165: aload_0
    //   166: invokeinterface 241 2 0
    //   171: return
    //   172: aload_0
    //   173: getfield 80	mow:e	Ljava/nio/channels/WritableByteChannel;
    //   176: aload_3
    //   177: iload_1
    //   178: iload_2
    //   179: invokestatic 405	java/nio/ByteBuffer:wrap	([BII)Ljava/nio/ByteBuffer;
    //   182: invokeinterface 409 2 0
    //   187: pop
    //   188: goto -175 -> 13
    //   191: astore_3
    //   192: aload_0
    //   193: aload_3
    //   194: putfield 218	mow:g	Ljava/io/IOException;
    //   197: aload_0
    //   198: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   201: invokevirtual 412	java/net/HttpURLConnection:disconnect	()V
    //   204: aload_0
    //   205: getfield 80	mow:e	Ljava/nio/channels/WritableByteChannel;
    //   208: invokeinterface 413 1 0
    //   213: goto -52 -> 161
    //   216: astore_3
    //   217: aload_0
    //   218: getfield 218	mow:g	Ljava/io/IOException;
    //   221: ifnonnull -60 -> 161
    //   224: aload_0
    //   225: aload_3
    //   226: putfield 218	mow:g	Ljava/io/IOException;
    //   229: goto -68 -> 161
    //   232: astore_3
    //   233: aload_0
    //   234: getfield 218	mow:g	Ljava/io/IOException;
    //   237: ifnonnull -76 -> 161
    //   240: aload_0
    //   241: aload_3
    //   242: putfield 218	mow:g	Ljava/io/IOException;
    //   245: goto -84 -> 161
    //   248: astore_3
    //   249: aload_0
    //   250: getfield 106	mow:h	Ljava/net/HttpURLConnection;
    //   253: invokevirtual 412	java/net/HttpURLConnection:disconnect	()V
    //   256: aload_0
    //   257: getfield 80	mow:e	Ljava/nio/channels/WritableByteChannel;
    //   260: invokeinterface 413 1 0
    //   265: aload_3
    //   266: athrow
    //   267: astore 4
    //   269: aload_0
    //   270: getfield 218	mow:g	Ljava/io/IOException;
    //   273: ifnonnull -8 -> 265
    //   276: aload_0
    //   277: aload 4
    //   279: putfield 218	mow:g	Ljava/io/IOException;
    //   282: goto -17 -> 265
    //   285: astore 4
    //   287: goto -31 -> 256
    //   290: astore_3
    //   291: goto -87 -> 204
    //   294: astore_3
    //   295: goto -143 -> 152
    //   298: iconst_0
    //   299: istore_1
    //   300: goto -213 -> 87
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	303	0	this	mow
    //   82	218	1	i1	int
    //   28	151	2	i2	int
    //   12	165	3	arrayOfByte	byte[]
    //   191	3	3	localIOException1	IOException
    //   216	10	3	localIOException2	IOException
    //   232	10	3	localIOException3	IOException
    //   248	18	3	localObject	Object
    //   290	1	3	localArrayIndexOutOfBoundsException1	ArrayIndexOutOfBoundsException
    //   294	1	3	localArrayIndexOutOfBoundsException2	ArrayIndexOutOfBoundsException
    //   267	11	4	localIOException4	IOException
    //   285	1	4	localArrayIndexOutOfBoundsException3	ArrayIndexOutOfBoundsException
    // Exception table:
    //   from	to	target	type
    //   0	13	191	java/io/IOException
    //   13	29	191	java/io/IOException
    //   34	83	191	java/io/IOException
    //   87	121	191	java/io/IOException
    //   125	141	191	java/io/IOException
    //   141	145	191	java/io/IOException
    //   172	188	191	java/io/IOException
    //   204	213	216	java/io/IOException
    //   152	161	232	java/io/IOException
    //   0	13	248	finally
    //   13	29	248	finally
    //   34	83	248	finally
    //   87	121	248	finally
    //   125	141	248	finally
    //   141	145	248	finally
    //   172	188	248	finally
    //   192	197	248	finally
    //   256	265	267	java/io/IOException
    //   249	256	285	java/lang/ArrayIndexOutOfBoundsException
    //   197	204	290	java/lang/ArrayIndexOutOfBoundsException
    //   145	152	294	java/lang/ArrayIndexOutOfBoundsException
  }
}

/* Location:
 * Qualified Name:     mow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */