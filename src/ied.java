import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

public final class ied
{
  static final long a;
  static final ieh c = new iee();
  private static final Bundle d;
  private static final Set<String> e;
  private static final Pattern f;
  final ieh b;
  private ies g;
  private String h;
  private boolean i;
  private final Context j;
  private final iie k;
  private final String l;
  private final String m;
  private final String n;
  private final boolean o;
  private final iep p;
  private final idj q;
  private final iei r;
  private final boolean s;
  
  static
  {
    Object localObject = new Bundle();
    ((Bundle)localObject).putString("uploadType", "resumable");
    d = (Bundle)localObject;
    a = ipl.d.a(10L);
    localObject = new HashSet(2);
    ((Set)localObject).addAll(Arrays.asList(new String[] { "application/placeholder-image", "application/stitching-preview" }));
    e = Collections.unmodifiableSet((Set)localObject);
    f = Pattern.compile("bytes=(\\d+)-(\\d+)");
  }
  
  ied(ief paramief)
  {
    j = a;
    l = b;
    m = c;
    n = d;
    b = e;
    o = f;
    p = g;
    r = ((iei)ilh.b(j, iei.class));
    s = i;
    q = h;
    k = new iie(j, b, "oauth2:https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/plus.stream.read https://www.googleapis.com/auth/plus.stream.write https://www.googleapis.com/auth/plus.circles.write https://www.googleapis.com/auth/plus.circles.read https://www.googleapis.com/auth/plus.photos.readwrite https://www.googleapis.com/auth/plus.native");
  }
  
  private ieb a(String paramString, iet paramiet, boolean paramBoolean)
  {
    b.a(0L, paramiet.k());
    if (Log.isLoggable("MediaUploader", 4))
    {
      i1 = paramiet.hashCode();
      new StringBuilder(28).append("--- UPLOAD task: ").append(i1);
    }
    Object localObject1;
    if (Log.isLoggable("MediaUploader", 2))
    {
      localObject1 = String.valueOf("Uploading stream, resumeFingerprint: ");
      new StringBuilder(String.valueOf(localObject1).length() + 50 + String.valueOf(null).length()).append((String)localObject1).append(null).append(", background: ").append(paramBoolean).append(", offset: 0)");
    }
    InputStream localInputStream = paramiet.a(0L);
    Object localObject4;
    int i2;
    Object localObject3;
    try
    {
      localObject1 = new ieg(this, paramiet.g(), paramiet.k(), 0L);
      localObject4 = new ies(j, k, paramString, paramiet.e(), 0L, paramiet.k(), localInputStream, paramBoolean, (ifa)localObject1);
      try
      {
        if (i) {
          throw new idp();
        }
      }
      finally {}
      if (a == null) {
        break label732;
      }
    }
    catch (IOException localIOException)
    {
      throw new idw(localIOException.toString(), aal.a(paramiet, paramString));
    }
    finally
    {
      try
      {
        g = null;
        aen.a(localInputStream);
        throw paramString;
      }
      finally {}
      g = ((ies)localObject4);
      a((iej)localObject4);
      i2 = ((ies)localObject4).e();
      if (!a(i2)) {
        break label893;
      }
      localIOException.a(paramiet.k(), paramiet.k());
      if (Log.isLoggable("MediaUploader", 3))
      {
        i1 = (int)((iej)localObject4).f();
        new StringBuilder(32).append("parseResult: length: ").append(i1);
      }
      localObject3 = ((iej)localObject4).g();
      localObject3 = lxy.a((byte[])localObject3, 0, localObject3.length);
      localObject4 = new iyy();
      ((iyy)localObject4).b((lxy)localObject3);
      localObject4 = a;
      if (localObject4 == null) {
        throw new idy("Unable to parse UploadMediaResponse");
      }
      if (localObject4 == null) {
        break label1095;
      }
      if (d != null) {
        break label605;
      }
      break label1095;
    }
    jft localjft = a;
    label422:
    Object localObject5;
    label440:
    Object localObject6;
    if (l != null)
    {
      localObject4 = l.b;
      if (c == null) {
        break label1107;
      }
      localObject5 = c.a;
      if (q == null) {
        break label1113;
      }
      localObject6 = q.i;
      label458:
      String str = i;
      long l1 = (aal.a(u) * 1000.0D);
      for (localObject3 = new iec().a((ieo)localObject3).a((String)localObject5).a(l1).b(h).b(paramiet.k()).c((String)localObject6).d(str).e((String)localObject4).a();; localObject3 = new iec().a((ieo)localObject3).b((String)localObject4).b(paramiet.k()).d((String)localObject5).e((String)localObject6).a())
      {
        localObject4 = (ArrayList)iel.b.get();
        i1 = ((ArrayList)localObject4).size();
        if (i1 > 0)
        {
          localObject4 = (ien)((ArrayList)localObject4).get(i1 - 1);
          b = ((int)(b + 1L));
        }
        label605:
        try
        {
          g = null;
          aen.a(localInputStream);
          return (ieb)localObject3;
        }
        finally {}
        localObject3 = d;
        l1 = -1L;
        long l2 = -1L;
        paramBoolean = false;
        boolean bool = false;
        long l4 = l1;
        long l3 = l2;
        if (localObject3 != null)
        {
          if (b != null) {
            l1 = b.longValue() / 1048576L;
          }
          if (a != null) {
            l2 = a.longValue() / 1048576L;
          }
          paramBoolean = aal.a(d, false);
          bool = aal.a(c, false);
          l3 = l2;
          l4 = l1;
        }
        localObject3 = new ieo(l4, l3, paramBoolean, bool);
        break;
        label732:
        if (e == null) {
          break label877;
        }
        localObject5 = null;
        localjft = null;
        lsg locallsg = e;
        Object localObject7 = null;
        localObject6 = localObject7;
        localObject4 = localjft;
        if (b != null)
        {
          str = b.a;
          localObject6 = localObject7;
          localObject4 = localjft;
          localObject5 = str;
          if (b.b != null)
          {
            localObject4 = b.b.c;
            localObject6 = b.b.a;
            localObject5 = str;
          }
        }
      }
      label877:
      throw new idy("Unsupported UploadMediaResponse type");
      label893:
      if (i2 != 308) {
        break label1119;
      }
    }
    label1095:
    label1107:
    label1113:
    label1119:
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0) {
        throw new idy("uploaded full stream but server returned incomplete");
      }
      if (i2 == 400) {
        throw new idy(55 + "upload failed (bad payload, file too large) " + i2);
      }
      if ((i2 >= 500) && (i2 < 600)) {
        throw new idw(33 + "upload transient error" + i2, aal.a(paramiet, paramString));
      }
      if (((ieg)localObject3).a()) {
        throw ((ieg)localObject3).b();
      }
      if (((ies)localObject4).i()) {
        throw new idp(((ies)localObject4).h(), aal.a(paramiet, paramString));
      }
      if (((ies)localObject4).h() != null) {
        throw new idw(((ies)localObject4).h(), aal.a(paramiet, paramString));
      }
      throw new idy(Integer.toString(i2));
      localObject3 = null;
      break;
      localObject4 = null;
      break label422;
      localObject5 = null;
      break label440;
      localObject6 = null;
      break label458;
    }
  }
  
  private iej a(iej paramiej)
  {
    paramiej.a();
    b();
    long l1 = SystemClock.elapsedRealtime();
    paramiej.d();
    iel.a(SystemClock.elapsedRealtime() - l1);
    int i1 = paramiej.e();
    if ((i1 == 401) || (i1 == 403)) {}
    try
    {
      paramiej.j().a();
      paramiej.a();
      b();
      l1 = SystemClock.elapsedRealtime();
      paramiej.d();
      iel.a(SystemClock.elapsedRealtime() - l1);
      return paramiej;
    }
    catch (IOException paramiej)
    {
      throw new idx(paramiej);
    }
  }
  
  private static boolean a(int paramInt)
  {
    return (paramInt == 200) || (paramInt == 201);
  }
  
  /* Error */
  public ieb a(ieq paramieq)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 6
    //   6: new 176	iet
    //   9: dup
    //   10: aload_0
    //   11: getfield 121	ied:j	Landroid/content/Context;
    //   14: aload_1
    //   15: invokevirtual 509	ieq:a	()Landroid/net/Uri;
    //   18: aload_1
    //   19: invokevirtual 511	ieq:b	()Ljava/lang/String;
    //   22: aload_1
    //   23: invokevirtual 513	ieq:d	()Ljava/lang/String;
    //   26: aload_1
    //   27: invokevirtual 516	ieq:n	()Llfi;
    //   30: aload_1
    //   31: invokevirtual 519	ieq:o	()Lmcq;
    //   34: aload_1
    //   35: invokevirtual 522	ieq:p	()Ljae;
    //   38: invokespecial 525	iet:<init>	(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Llfi;Lmcq;Ljae;)V
    //   41: astore 5
    //   43: aload_1
    //   44: invokevirtual 527	ieq:k	()Z
    //   47: ifne +22 -> 69
    //   50: aload_0
    //   51: getfield 121	ied:j	Landroid/content/Context;
    //   54: aload_1
    //   55: invokevirtual 509	ieq:a	()Landroid/net/Uri;
    //   58: invokestatic 530	aal:b	(Landroid/content/Context;Landroid/net/Uri;)Z
    //   61: ifeq +8 -> 69
    //   64: aload 5
    //   66: invokevirtual 531	iet:a	()V
    //   69: aload_1
    //   70: invokevirtual 533	ieq:c	()Ljava/lang/String;
    //   73: invokestatic 539	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   76: ifne +12 -> 88
    //   79: aload 5
    //   81: aload_1
    //   82: invokevirtual 533	ieq:c	()Ljava/lang/String;
    //   85: invokevirtual 541	iet:a	(Ljava/lang/String;)V
    //   88: aload_1
    //   89: invokevirtual 543	ieq:j	()J
    //   92: lconst_0
    //   93: lcmp
    //   94: ifle +12 -> 106
    //   97: aload 5
    //   99: aload_1
    //   100: invokevirtual 543	ieq:j	()J
    //   103: invokevirtual 545	iet:b	(J)V
    //   106: aload 5
    //   108: invokevirtual 240	iet:e	()Ljava/lang/String;
    //   111: astore 4
    //   113: getstatic 97	ied:e	Ljava/util/Set;
    //   116: aload 4
    //   118: invokeinterface 549 2 0
    //   123: ifeq +76 -> 199
    //   126: new 551	idr
    //   129: dup
    //   130: aload 4
    //   132: iconst_0
    //   133: invokespecial 554	idr:<init>	(Ljava/lang/String;Z)V
    //   136: athrow
    //   137: astore 4
    //   139: aload 5
    //   141: astore_1
    //   142: new 556	idt
    //   145: dup
    //   146: aload 4
    //   148: invokespecial 557	idt:<init>	(Ljava/lang/Throwable;)V
    //   151: athrow
    //   152: astore 5
    //   154: aload_1
    //   155: astore 4
    //   157: aload 5
    //   159: astore_1
    //   160: aload 4
    //   162: ifnull +30 -> 192
    //   165: aload 4
    //   167: invokevirtual 559	iet:b	()Z
    //   170: ifeq +22 -> 192
    //   173: new 561	java/io/File
    //   176: dup
    //   177: aload 4
    //   179: invokevirtual 563	iet:c	()Landroid/net/Uri;
    //   182: invokevirtual 568	android/net/Uri:getPath	()Ljava/lang/String;
    //   185: invokespecial 569	java/io/File:<init>	(Ljava/lang/String;)V
    //   188: invokevirtual 572	java/io/File:delete	()Z
    //   191: pop
    //   192: aload_0
    //   193: iconst_0
    //   194: putfield 244	ied:i	Z
    //   197: aload_1
    //   198: athrow
    //   199: aload 4
    //   201: ifnull +73 -> 274
    //   204: aload 4
    //   206: ldc_w 574
    //   209: invokevirtual 578	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   212: ifne +431 -> 643
    //   215: aload 4
    //   217: ldc_w 580
    //   220: invokevirtual 578	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   223: ifne +420 -> 643
    //   226: aload 4
    //   228: ldc_w 582
    //   231: invokevirtual 578	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   234: ifeq +40 -> 274
    //   237: goto +406 -> 643
    //   240: iload_2
    //   241: ifne +38 -> 279
    //   244: new 551	idr
    //   247: dup
    //   248: aload 4
    //   250: iconst_1
    //   251: invokespecial 554	idr:<init>	(Ljava/lang/String;Z)V
    //   254: athrow
    //   255: astore_1
    //   256: aload 5
    //   258: astore 4
    //   260: new 249	idw
    //   263: dup
    //   264: aload_1
    //   265: aconst_null
    //   266: invokespecial 469	idw:<init>	(Ljava/lang/Exception;Ljava/lang/String;)V
    //   269: athrow
    //   270: astore_1
    //   271: goto -111 -> 160
    //   274: iconst_0
    //   275: istore_2
    //   276: goto -36 -> 240
    //   279: aload_1
    //   280: invokevirtual 584	ieq:m	()Z
    //   283: istore_3
    //   284: aload_0
    //   285: getfield 141	ied:o	Z
    //   288: ifeq +134 -> 422
    //   291: ldc_w 586
    //   294: astore 4
    //   296: aload_0
    //   297: getfield 121	ied:j	Landroid/content/Context;
    //   300: ldc_w 588
    //   303: aload 4
    //   305: iconst_1
    //   306: getstatic 54	ied:d	Landroid/os/Bundle;
    //   309: invokestatic 591	aal:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;
    //   312: astore 6
    //   314: aload_0
    //   315: getfield 121	ied:j	Landroid/content/Context;
    //   318: astore 7
    //   320: aload_0
    //   321: getfield 171	ied:k	Liie;
    //   324: astore 8
    //   326: aload_0
    //   327: getfield 133	ied:n	Ljava/lang/String;
    //   330: astore 9
    //   332: aload_0
    //   333: getfield 129	ied:m	Ljava/lang/String;
    //   336: astore 10
    //   338: aload_0
    //   339: getfield 154	ied:r	Liei;
    //   342: ifnonnull +96 -> 438
    //   345: aload_0
    //   346: getfield 145	ied:p	Liep;
    //   349: astore 4
    //   351: new 593	idm
    //   354: dup
    //   355: aload 7
    //   357: aload 8
    //   359: aload 6
    //   361: aload_1
    //   362: aload 5
    //   364: aload 9
    //   366: aload 10
    //   368: aload 4
    //   370: aload_0
    //   371: getfield 158	ied:s	Z
    //   374: invokespecial 596	idm:<init>	(Landroid/content/Context;Lihs;Ljava/lang/String;Lieq;Liet;Ljava/lang/String;Ljava/lang/String;Liep;Z)V
    //   377: astore 4
    //   379: aload_0
    //   380: aload 4
    //   382: invokespecial 269	ied:a	(Liej;)Liej;
    //   385: pop
    //   386: aload 4
    //   388: invokevirtual 597	idm:e	()I
    //   391: istore_2
    //   392: iload_2
    //   393: invokestatic 274	ied:a	(I)Z
    //   396: ifeq +103 -> 499
    //   399: aload 4
    //   401: invokevirtual 598	idm:c	()Ljava/lang/String;
    //   404: astore 4
    //   406: aload 4
    //   408: ifnonnull +44 -> 452
    //   411: new 300	idy
    //   414: dup
    //   415: ldc_w 600
    //   418: invokespecial 305	idy:<init>	(Ljava/lang/String;)V
    //   421: athrow
    //   422: aload_0
    //   423: getfield 601	ied:h	Ljava/lang/String;
    //   426: ifnull +230 -> 656
    //   429: aload_0
    //   430: getfield 601	ied:h	Ljava/lang/String;
    //   433: astore 4
    //   435: goto -139 -> 296
    //   438: aload_0
    //   439: getfield 154	ied:r	Liei;
    //   442: invokeinterface 604 1 0
    //   447: astore 4
    //   449: goto -98 -> 351
    //   452: aload_0
    //   453: aload 4
    //   455: aload 5
    //   457: aload_1
    //   458: invokevirtual 584	ieq:m	()Z
    //   461: invokespecial 606	ied:a	(Ljava/lang/String;Liet;Z)Lieb;
    //   464: astore_1
    //   465: aload 5
    //   467: invokevirtual 559	iet:b	()Z
    //   470: ifeq +22 -> 492
    //   473: new 561	java/io/File
    //   476: dup
    //   477: aload 5
    //   479: invokevirtual 563	iet:c	()Landroid/net/Uri;
    //   482: invokevirtual 568	android/net/Uri:getPath	()Ljava/lang/String;
    //   485: invokespecial 569	java/io/File:<init>	(Ljava/lang/String;)V
    //   488: invokevirtual 572	java/io/File:delete	()Z
    //   491: pop
    //   492: aload_0
    //   493: iconst_0
    //   494: putfield 244	ied:i	Z
    //   497: aload_1
    //   498: areturn
    //   499: iload_2
    //   500: sipush 400
    //   503: if_icmpne +33 -> 536
    //   506: new 300	idy
    //   509: dup
    //   510: new 198	java/lang/StringBuilder
    //   513: dup
    //   514: bipush 55
    //   516: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   519: ldc_w 449
    //   522: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   525: iload_2
    //   526: invokevirtual 208	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   529: invokevirtual 450	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   532: invokespecial 305	idy:<init>	(Ljava/lang/String;)V
    //   535: athrow
    //   536: iload_2
    //   537: sipush 401
    //   540: if_icmpne +17 -> 557
    //   543: new 497	idx
    //   546: dup
    //   547: sipush 401
    //   550: invokestatic 474	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   553: invokespecial 607	idx:<init>	(Ljava/lang/String;)V
    //   556: athrow
    //   557: iload_2
    //   558: sipush 503
    //   561: if_icmpne +115 -> 676
    //   564: new 249	idw
    //   567: dup
    //   568: ldc_w 609
    //   571: iconst_0
    //   572: invokespecial 612	idw:<init>	(Ljava/lang/String;B)V
    //   575: athrow
    //   576: new 249	idw
    //   579: dup
    //   580: new 198	java/lang/StringBuilder
    //   583: dup
    //   584: bipush 34
    //   586: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   589: ldc_w 614
    //   592: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   595: iload_2
    //   596: invokevirtual 208	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   599: invokevirtual 450	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   602: invokespecial 615	idw:<init>	(Ljava/lang/String;)V
    //   605: athrow
    //   606: new 300	idy
    //   609: dup
    //   610: iload_2
    //   611: invokestatic 474	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   614: invokespecial 305	idy:<init>	(Ljava/lang/String;)V
    //   617: athrow
    //   618: astore 4
    //   620: goto -428 -> 192
    //   623: astore_1
    //   624: aload 6
    //   626: astore 4
    //   628: goto -368 -> 260
    //   631: astore 4
    //   633: aconst_null
    //   634: astore_1
    //   635: goto -493 -> 142
    //   638: astore 4
    //   640: goto -148 -> 492
    //   643: iconst_1
    //   644: istore_2
    //   645: goto -405 -> 240
    //   648: astore_1
    //   649: aload 5
    //   651: astore 4
    //   653: goto -493 -> 160
    //   656: iload_3
    //   657: ifeq +11 -> 668
    //   660: ldc_w 617
    //   663: astore 4
    //   665: goto -369 -> 296
    //   668: ldc_w 619
    //   671: astore 4
    //   673: goto -377 -> 296
    //   676: iload_2
    //   677: ifeq -101 -> 576
    //   680: iload_2
    //   681: sipush 500
    //   684: if_icmplt -78 -> 606
    //   687: iload_2
    //   688: sipush 600
    //   691: if_icmpge -85 -> 606
    //   694: goto -118 -> 576
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	697	0	this	ied
    //   0	697	1	paramieq	ieq
    //   240	452	2	i1	int
    //   283	374	3	bool	boolean
    //   1	130	4	str1	String
    //   137	10	4	localFileNotFoundException1	java.io.FileNotFoundException
    //   155	299	4	localObject1	Object
    //   618	1	4	localException1	Exception
    //   626	1	4	localObject2	Object
    //   631	1	4	localFileNotFoundException2	java.io.FileNotFoundException
    //   638	1	4	localException2	Exception
    //   651	21	4	localObject3	Object
    //   41	99	5	localiet1	iet
    //   152	498	5	localiet2	iet
    //   4	621	6	str2	String
    //   318	38	7	localContext	Context
    //   324	34	8	localiie	iie
    //   330	35	9	str3	String
    //   336	31	10	str4	String
    // Exception table:
    //   from	to	target	type
    //   43	69	137	java/io/FileNotFoundException
    //   69	88	137	java/io/FileNotFoundException
    //   88	106	137	java/io/FileNotFoundException
    //   106	137	137	java/io/FileNotFoundException
    //   204	237	137	java/io/FileNotFoundException
    //   244	255	137	java/io/FileNotFoundException
    //   279	291	137	java/io/FileNotFoundException
    //   296	351	137	java/io/FileNotFoundException
    //   351	406	137	java/io/FileNotFoundException
    //   411	422	137	java/io/FileNotFoundException
    //   422	435	137	java/io/FileNotFoundException
    //   438	449	137	java/io/FileNotFoundException
    //   452	465	137	java/io/FileNotFoundException
    //   506	536	137	java/io/FileNotFoundException
    //   543	557	137	java/io/FileNotFoundException
    //   564	576	137	java/io/FileNotFoundException
    //   576	606	137	java/io/FileNotFoundException
    //   606	618	137	java/io/FileNotFoundException
    //   142	152	152	finally
    //   43	69	255	java/io/IOException
    //   69	88	255	java/io/IOException
    //   88	106	255	java/io/IOException
    //   106	137	255	java/io/IOException
    //   204	237	255	java/io/IOException
    //   244	255	255	java/io/IOException
    //   279	291	255	java/io/IOException
    //   296	351	255	java/io/IOException
    //   351	406	255	java/io/IOException
    //   411	422	255	java/io/IOException
    //   422	435	255	java/io/IOException
    //   438	449	255	java/io/IOException
    //   452	465	255	java/io/IOException
    //   506	536	255	java/io/IOException
    //   543	557	255	java/io/IOException
    //   564	576	255	java/io/IOException
    //   576	606	255	java/io/IOException
    //   606	618	255	java/io/IOException
    //   6	43	270	finally
    //   260	270	270	finally
    //   165	192	618	java/lang/Exception
    //   6	43	623	java/io/IOException
    //   6	43	631	java/io/FileNotFoundException
    //   465	492	638	java/lang/Exception
    //   43	69	648	finally
    //   69	88	648	finally
    //   88	106	648	finally
    //   106	137	648	finally
    //   204	237	648	finally
    //   244	255	648	finally
    //   279	291	648	finally
    //   296	351	648	finally
    //   351	406	648	finally
    //   411	422	648	finally
    //   422	435	648	finally
    //   438	449	648	finally
    //   452	465	648	finally
    //   506	536	648	finally
    //   543	557	648	finally
    //   564	576	648	finally
    //   576	606	648	finally
    //   606	618	648	finally
  }
  
  public void a()
  {
    try
    {
      i = true;
      if (g != null)
      {
        g.c();
        g = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void b()
  {
    q.a();
  }
}

/* Location:
 * Qualified Name:     ied
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */