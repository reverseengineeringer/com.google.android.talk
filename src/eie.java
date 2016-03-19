import android.os.ConditionVariable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class eie
  implements eir
{
  static final boolean a = false;
  static eie b;
  static final Object h = new Object();
  private static final ezv k = ezv.a("BabelPeopleCache");
  private static Runnable x = new eih();
  boolean c;
  final fic d;
  public final Handler e;
  final Object f;
  String g;
  public final Runnable i;
  glt j;
  private int l;
  private boolean m;
  private final ConditionVariable n = new ConditionVariable();
  private final List<a> o;
  private eil p;
  private fkg q;
  private gpx r;
  private hq<String, ArrayList<Integer>> s;
  private hq<String, ArrayList<Integer>> t;
  private boolean u;
  private long v;
  private boolean w;
  
  static
  {
    imx localimx = ezi.q;
  }
  
  private eie()
  {
    fid localfid = new fid(aal.oJ);
    localfid.a(glu.c, new glx().a(117).a());
    localfid.a(new eif(this));
    localfid.a(new eig(this));
    d = localfid.b();
    o = new ArrayList();
    s = new hq();
    t = new hq();
    e = new Handler(Looper.getMainLooper());
    f = new Object();
    u = false;
    v = 0L;
    w = false;
    g = "N/A";
    i = new eii(this);
    j = new glt(this);
  }
  
  public static eie a()
  {
    synchronized (h)
    {
      if ((b != null) && (Thread.holdsLock(bf))) {
        throw new IllegalStateException("Invalid lock ordering");
      }
    }
    if (b == null) {
      b = new eie();
    }
    b.h();
    eie localeie = b;
    return localeie;
  }
  
  public static void b()
  {
    eie localeie = a();
    try
    {
      localeie.a(true);
      return;
    }
    finally
    {
      localeie.c();
    }
  }
  
  private ArrayList<gpr> d(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    String str = ezm.n(paramString);
    Object localObject1 = (ArrayList)t.get(str);
    if (localObject1 != null)
    {
      ArrayList localArrayList = new ArrayList();
      localObject1 = ((ArrayList)localObject1).iterator();
      for (;;)
      {
        if (!((Iterator)localObject1).hasNext()) {
          break label161;
        }
        Object localObject2 = (Integer)((Iterator)localObject1).next();
        localObject2 = (gpr)q.a(aal.a((Integer)localObject2, 0));
        Iterator localIterator = ((gpr)localObject2).d().iterator();
        if (localIterator.hasNext())
        {
          gpy localgpy = (gpy)localIterator.next();
          if ((!str.equals(ezm.n(localgpy.b()))) || (!ezm.d(paramString, localgpy.b()))) {
            break;
          }
          localArrayList.add(localObject2);
        }
      }
      label161:
      if (localArrayList.size() > 0) {
        return localArrayList;
      }
    }
    return null;
  }
  
  public static long g()
  {
    return aal.a(aal.oJ, "babel_gms_people_cache_notification_lag", 25000L);
  }
  
  private void h()
  {
    synchronized (f)
    {
      l += 1;
      if (a)
      {
        String str1 = String.valueOf("GmsPeopleCache: addRef  ref:");
        int i1 = l;
        String str2 = String.valueOf(Log.getStackTraceString(new Throwable()));
        new StringBuilder(String.valueOf(str1).length() + 12 + String.valueOf(str2).length()).append(str1).append(i1).append("\n").append(str2);
      }
      if (l == 1) {
        e.removeCallbacks(x);
      }
      if ((!d.e()) && (!d.f())) {
        d.b();
      }
      return;
    }
  }
  
  private void i()
  {
    String str = k.b("waitForReady");
    if (Thread.holdsLock(f)) {
      throw new IllegalStateException("Invalid lock ordering");
    }
    n.block();
    k.c(str);
  }
  
  public bzq a(String paramString)
  {
    i();
    ArrayList localArrayList;
    synchronized (f)
    {
      if (s.containsKey(paramString))
      {
        localArrayList = new ArrayList();
        paramString = ((ArrayList)s.get(paramString)).iterator();
        if (paramString.hasNext())
        {
          Integer localInteger = (Integer)paramString.next();
          localArrayList.add(q.a(aal.a(localInteger, 0)));
        }
      }
    }
    for (paramString = localArrayList;; paramString = null)
    {
      if (paramString == null) {
        return null;
      }
      paramString = bzq.a(paramString);
      return paramString;
    }
  }
  
  public void a(eim arg1, fkg paramfkg, gpx paramgpx)
  {
    synchronized (f)
    {
      if (a)
      {
        long l1 = System.currentTimeMillis();
        long l2 = v;
        new StringBuilder(53).append("GmsPeopleCache: onPeopleReady ").append(l1 - l2).append(" ms");
      }
      hbw.a(new eij(this, paramfkg, paramgpx));
      return;
    }
  }
  
  /* Error */
  void a(fkg arg1, gpx paramgpx)
  {
    // Byte code:
    //   0: getstatic 60	eie:k	Lezv;
    //   3: ldc_w 370
    //   6: invokevirtual 327	ezv:b	(Ljava/lang/String;)Ljava/lang/String;
    //   9: astore 11
    //   11: new 137	hq
    //   14: dup
    //   15: invokespecial 138	hq:<init>	()V
    //   18: astore 13
    //   20: new 137	hq
    //   23: dup
    //   24: invokespecial 138	hq:<init>	()V
    //   27: astore 14
    //   29: invokestatic 349	java/lang/System:currentTimeMillis	()J
    //   32: lstore 5
    //   34: ldc_w 372
    //   37: invokestatic 378	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   40: astore 12
    //   42: aload_1
    //   43: ifnull +141 -> 184
    //   46: getstatic 91	aal:oJ	Landroid/content/Context;
    //   49: ldc_w 380
    //   52: sipush 2000
    //   55: invokestatic 383	aal:a	(Landroid/content/Context;Ljava/lang/String;I)I
    //   58: istore 4
    //   60: iconst_0
    //   61: istore_3
    //   62: iload_3
    //   63: aload_1
    //   64: invokevirtual 385	fkg:a	()I
    //   67: if_icmpge +45 -> 112
    //   70: iload_3
    //   71: iload 4
    //   73: if_icmplt +415 -> 488
    //   76: aload_1
    //   77: invokevirtual 385	fkg:a	()I
    //   80: istore_3
    //   81: new 296	java/lang/StringBuilder
    //   84: dup
    //   85: bipush 63
    //   87: invokespecial 302	java/lang/StringBuilder:<init>	(I)V
    //   90: ldc_w 387
    //   93: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: iload_3
    //   97: invokevirtual 309	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   100: ldc_w 389
    //   103: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: iload 4
    //   108: invokevirtual 309	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   111: pop
    //   112: invokestatic 349	java/lang/System:currentTimeMillis	()J
    //   115: lstore 7
    //   117: getstatic 67	eie:a	Z
    //   120: ifeq +64 -> 184
    //   123: ldc_w 391
    //   126: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   129: astore 9
    //   131: aload_1
    //   132: invokevirtual 385	fkg:a	()I
    //   135: istore_3
    //   136: new 296	java/lang/StringBuilder
    //   139: dup
    //   140: aload 9
    //   142: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   145: invokevirtual 299	java/lang/String:length	()I
    //   148: bipush 45
    //   150: iadd
    //   151: invokespecial 302	java/lang/StringBuilder:<init>	(I)V
    //   154: aload 9
    //   156: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: lload 7
    //   161: lload 5
    //   163: lsub
    //   164: invokevirtual 354	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   167: ldc_w 393
    //   170: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: iload_3
    //   174: invokevirtual 309	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   177: ldc_w 395
    //   180: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: pop
    //   184: aload_0
    //   185: getfield 157	eie:f	Ljava/lang/Object;
    //   188: astore 9
    //   190: aload 9
    //   192: monitorenter
    //   193: aload_0
    //   194: getfield 231	eie:q	Lfkg;
    //   197: astore 10
    //   199: aload_0
    //   200: getfield 397	eie:r	Lgpx;
    //   203: astore 15
    //   205: aload_0
    //   206: new 399	eil
    //   209: dup
    //   210: aload_0
    //   211: getfield 135	eie:o	Ljava/util/List;
    //   214: aload_1
    //   215: aload_2
    //   216: aload 10
    //   218: aload 15
    //   220: invokespecial 402	eil:<init>	(Ljava/util/List;Lfkg;Lgpx;Lfkg;Lgpx;)V
    //   223: putfield 404	eie:p	Leil;
    //   226: aload_0
    //   227: aload_1
    //   228: putfield 231	eie:q	Lfkg;
    //   231: aload_0
    //   232: aload_2
    //   233: putfield 397	eie:r	Lgpx;
    //   236: aload_0
    //   237: aload 14
    //   239: putfield 142	eie:t	Lhq;
    //   242: aload_0
    //   243: aload 13
    //   245: putfield 140	eie:s	Lhq;
    //   248: getstatic 91	aal:oJ	Landroid/content/Context;
    //   251: invokestatic 409	bfz:c	(Landroid/content/Context;)Ljava/lang/String;
    //   254: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   257: astore_1
    //   258: aload 12
    //   260: invokevirtual 413	java/security/MessageDigest:digest	()[B
    //   263: invokestatic 416	aal:a	([B)Ljava/lang/String;
    //   266: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   269: astore_2
    //   270: aload_0
    //   271: new 296	java/lang/StringBuilder
    //   274: dup
    //   275: aload_1
    //   276: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   279: invokevirtual 299	java/lang/String:length	()I
    //   282: iconst_1
    //   283: iadd
    //   284: aload_2
    //   285: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   288: invokevirtual 299	java/lang/String:length	()I
    //   291: iadd
    //   292: invokespecial 302	java/lang/StringBuilder:<init>	(I)V
    //   295: aload_1
    //   296: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   299: ldc_w 418
    //   302: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   305: aload_2
    //   306: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   309: invokevirtual 421	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   312: putfield 167	eie:g	Ljava/lang/String;
    //   315: aload_0
    //   316: iconst_0
    //   317: putfield 159	eie:u	Z
    //   320: aload_0
    //   321: iconst_1
    //   322: putfield 423	eie:m	Z
    //   325: aload_0
    //   326: getfield 83	eie:n	Landroid/os/ConditionVariable;
    //   329: invokevirtual 426	android/os/ConditionVariable:open	()V
    //   332: new 428	eik
    //   335: dup
    //   336: aload_0
    //   337: invokespecial 429	eik:<init>	(Leie;)V
    //   340: invokestatic 365	hbw:a	(Ljava/lang/Runnable;)V
    //   343: aload_0
    //   344: getfield 163	eie:w	Z
    //   347: ifeq +24 -> 371
    //   350: ldc 53
    //   352: ldc_w 431
    //   355: iconst_0
    //   356: anewarray 4	java/lang/Object
    //   359: invokestatic 434	ezi:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   362: aload_0
    //   363: iconst_0
    //   364: putfield 163	eie:w	Z
    //   367: aload_0
    //   368: invokevirtual 436	eie:e	()V
    //   371: aload_0
    //   372: getfield 157	eie:f	Ljava/lang/Object;
    //   375: astore_1
    //   376: aload_1
    //   377: monitorenter
    //   378: invokestatic 349	java/lang/System:currentTimeMillis	()J
    //   381: lstore 5
    //   383: aload_0
    //   384: getfield 231	eie:q	Lfkg;
    //   387: ifnull +22 -> 409
    //   390: aload_0
    //   391: getfield 231	eie:q	Lfkg;
    //   394: invokevirtual 385	fkg:a	()I
    //   397: ifle +12 -> 409
    //   400: aload_0
    //   401: getfield 231	eie:q	Lfkg;
    //   404: iconst_0
    //   405: invokevirtual 239	fkg:a	(I)Ljava/lang/Object;
    //   408: pop
    //   409: getstatic 67	eie:a	Z
    //   412: ifeq +38 -> 450
    //   415: invokestatic 349	java/lang/System:currentTimeMillis	()J
    //   418: lstore 7
    //   420: new 296	java/lang/StringBuilder
    //   423: dup
    //   424: bipush 59
    //   426: invokespecial 302	java/lang/StringBuilder:<init>	(I)V
    //   429: ldc_w 438
    //   432: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   435: lload 7
    //   437: lload 5
    //   439: lsub
    //   440: invokevirtual 354	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   443: ldc_w 356
    //   446: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   449: pop
    //   450: aload_1
    //   451: monitorexit
    //   452: aload 9
    //   454: monitorexit
    //   455: aload_0
    //   456: getfield 155	eie:e	Landroid/os/Handler;
    //   459: aload_0
    //   460: getfield 404	eie:p	Leil;
    //   463: invokevirtual 442	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   466: pop
    //   467: getstatic 60	eie:k	Lezv;
    //   470: aload 11
    //   472: invokevirtual 332	ezv:c	(Ljava/lang/String;)V
    //   475: return
    //   476: astore_1
    //   477: new 188	java/lang/IllegalStateException
    //   480: dup
    //   481: ldc_w 444
    //   484: invokespecial 193	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   487: athrow
    //   488: aload_1
    //   489: iload_3
    //   490: invokevirtual 239	fkg:a	(I)Ljava/lang/Object;
    //   493: checkcast 241	gpr
    //   496: astore 15
    //   498: aload 15
    //   500: invokeinterface 446 1 0
    //   505: astore 16
    //   507: aload 16
    //   509: invokestatic 452	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   512: ifne +117 -> 629
    //   515: getstatic 67	eie:a	Z
    //   518: ifeq +65 -> 583
    //   521: aload 15
    //   523: invokeinterface 454 1 0
    //   528: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   531: astore 9
    //   533: new 296	java/lang/StringBuilder
    //   536: dup
    //   537: aload 16
    //   539: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   542: invokevirtual 299	java/lang/String:length	()I
    //   545: bipush 50
    //   547: iadd
    //   548: aload 9
    //   550: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   553: invokevirtual 299	java/lang/String:length	()I
    //   556: iadd
    //   557: invokespecial 302	java/lang/StringBuilder:<init>	(I)V
    //   560: ldc_w 456
    //   563: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   566: aload 16
    //   568: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   571: ldc_w 458
    //   574: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   577: aload 9
    //   579: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   582: pop
    //   583: aload 13
    //   585: aload 16
    //   587: invokevirtual 213	hq:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   590: checkcast 132	java/util/ArrayList
    //   593: astore 10
    //   595: aload 10
    //   597: ifnonnull +245 -> 842
    //   600: new 132	java/util/ArrayList
    //   603: dup
    //   604: invokespecial 133	java/util/ArrayList:<init>	()V
    //   607: astore 9
    //   609: aload 13
    //   611: aload 16
    //   613: aload 9
    //   615: invokevirtual 462	hq:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   618: pop
    //   619: aload 9
    //   621: iload_3
    //   622: invokestatic 465	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   625: invokevirtual 263	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   628: pop
    //   629: aload 15
    //   631: invokeinterface 244 1 0
    //   636: invokeinterface 247 1 0
    //   641: astore 16
    //   643: aload 16
    //   645: invokeinterface 223 1 0
    //   650: ifeq +387 -> 1037
    //   653: aload 16
    //   655: invokeinterface 227 1 0
    //   660: checkcast 249	gpy
    //   663: astore 9
    //   665: aload 9
    //   667: invokeinterface 252 1 0
    //   672: invokestatic 209	ezm:n	(Ljava/lang/String;)Ljava/lang/String;
    //   675: astore 17
    //   677: getstatic 67	eie:a	Z
    //   680: ifeq +97 -> 777
    //   683: aload 9
    //   685: invokeinterface 252 1 0
    //   690: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   693: astore 9
    //   695: aload 15
    //   697: invokeinterface 454 1 0
    //   702: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   705: astore 10
    //   707: new 296	java/lang/StringBuilder
    //   710: dup
    //   711: aload 9
    //   713: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   716: invokevirtual 299	java/lang/String:length	()I
    //   719: bipush 57
    //   721: iadd
    //   722: aload 10
    //   724: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   727: invokevirtual 299	java/lang/String:length	()I
    //   730: iadd
    //   731: aload 17
    //   733: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   736: invokevirtual 299	java/lang/String:length	()I
    //   739: iadd
    //   740: invokespecial 302	java/lang/StringBuilder:<init>	(I)V
    //   743: ldc_w 467
    //   746: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   749: aload 9
    //   751: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   754: ldc_w 458
    //   757: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   760: aload 10
    //   762: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   765: ldc_w 469
    //   768: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   771: aload 17
    //   773: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   776: pop
    //   777: aload 14
    //   779: aload 17
    //   781: invokevirtual 213	hq:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   784: checkcast 132	java/util/ArrayList
    //   787: astore 10
    //   789: aload 10
    //   791: astore 9
    //   793: aload 10
    //   795: ifnonnull +22 -> 817
    //   798: new 132	java/util/ArrayList
    //   801: dup
    //   802: invokespecial 133	java/util/ArrayList:<init>	()V
    //   805: astore 9
    //   807: aload 14
    //   809: aload 17
    //   811: aload 9
    //   813: invokevirtual 462	hq:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   816: pop
    //   817: aload 9
    //   819: iload_3
    //   820: invokestatic 465	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   823: invokevirtual 472	java/util/ArrayList:contains	(Ljava/lang/Object;)Z
    //   826: ifne -183 -> 643
    //   829: aload 9
    //   831: iload_3
    //   832: invokestatic 465	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   835: invokevirtual 263	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   838: pop
    //   839: goto -196 -> 643
    //   842: aload 10
    //   844: astore 9
    //   846: getstatic 67	eie:a	Z
    //   849: ifeq -230 -> 619
    //   852: aload 10
    //   854: astore 9
    //   856: ldc 53
    //   858: iconst_3
    //   859: invokestatic 475	ezi:a	(Ljava/lang/String;I)Z
    //   862: ifeq -243 -> 619
    //   865: aload 15
    //   867: invokeinterface 454 1 0
    //   872: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   875: astore 9
    //   877: ldc 53
    //   879: new 296	java/lang/StringBuilder
    //   882: dup
    //   883: aload 16
    //   885: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   888: invokevirtual 299	java/lang/String:length	()I
    //   891: bipush 53
    //   893: iadd
    //   894: aload 9
    //   896: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   899: invokevirtual 299	java/lang/String:length	()I
    //   902: iadd
    //   903: invokespecial 302	java/lang/StringBuilder:<init>	(I)V
    //   906: ldc_w 477
    //   909: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   912: aload 16
    //   914: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   917: ldc_w 479
    //   920: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   923: aload 9
    //   925: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   928: invokevirtual 421	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   931: iconst_0
    //   932: anewarray 4	java/lang/Object
    //   935: invokestatic 481	ezi:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   938: aload 10
    //   940: invokevirtual 217	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   943: astore 16
    //   945: aload 10
    //   947: astore 9
    //   949: aload 16
    //   951: invokeinterface 223 1 0
    //   956: ifeq -337 -> 619
    //   959: aload_1
    //   960: aload 16
    //   962: invokeinterface 227 1 0
    //   967: checkcast 229	java/lang/Integer
    //   970: iconst_0
    //   971: invokestatic 234	aal:a	(Ljava/lang/Integer;I)I
    //   974: invokevirtual 239	fkg:a	(I)Ljava/lang/Object;
    //   977: checkcast 241	gpr
    //   980: invokeinterface 454 1 0
    //   985: invokestatic 285	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   988: astore 9
    //   990: aload 9
    //   992: invokevirtual 299	java/lang/String:length	()I
    //   995: ifeq +27 -> 1022
    //   998: ldc_w 483
    //   1001: aload 9
    //   1003: invokevirtual 486	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   1006: astore 9
    //   1008: ldc 53
    //   1010: aload 9
    //   1012: iconst_0
    //   1013: anewarray 4	java/lang/Object
    //   1016: invokestatic 481	ezi:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   1019: goto -74 -> 945
    //   1022: new 254	java/lang/String
    //   1025: dup
    //   1026: ldc_w 483
    //   1029: invokespecial 487	java/lang/String:<init>	(Ljava/lang/String;)V
    //   1032: astore 9
    //   1034: goto -26 -> 1008
    //   1037: aload 15
    //   1039: checkcast 489	eji
    //   1042: aload 12
    //   1044: invokevirtual 492	eji:a	(Ljava/security/MessageDigest;)V
    //   1047: iload_3
    //   1048: iconst_1
    //   1049: iadd
    //   1050: istore_3
    //   1051: goto -989 -> 62
    //   1054: astore_2
    //   1055: aload_1
    //   1056: monitorexit
    //   1057: aload_2
    //   1058: athrow
    //   1059: astore_1
    //   1060: aload 9
    //   1062: monitorexit
    //   1063: aload_1
    //   1064: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1065	0	this	eie
    //   0	1065	2	paramgpx	gpx
    //   61	990	3	i1	int
    //   58	49	4	i2	int
    //   32	406	5	l1	long
    //   115	321	7	l2	long
    //   197	749	10	localObject2	Object
    //   9	462	11	str1	String
    //   40	1003	12	localMessageDigest	java.security.MessageDigest
    //   18	592	13	localhq1	hq
    //   27	781	14	localhq2	hq
    //   203	835	15	localObject3	Object
    //   505	456	16	localObject4	Object
    //   675	135	17	str2	String
    // Exception table:
    //   from	to	target	type
    //   34	42	476	java/security/NoSuchAlgorithmException
    //   378	409	1054	finally
    //   409	450	1054	finally
    //   450	452	1054	finally
    //   1055	1057	1054	finally
    //   193	371	1059	finally
    //   371	378	1059	finally
    //   452	455	1059	finally
    //   1057	1059	1059	finally
    //   1060	1063	1059	finally
  }
  
  void a(boolean paramBoolean)
  {
    String str = k.b("refreshInternal");
    synchronized (f)
    {
      if (u)
      {
        ezi.a("BabelPeopleCache", "GmsPeopleCache: Load in progress. Queueing up refresh", new Object[0]);
        w = true;
        k.c(str);
        return;
      }
      ezi.a("BabelPeopleCache", "GmsPeopleCache: Refresh requested. Performing now", new Object[0]);
      e();
    }
  }
  
  public ArrayList<gpr> b(String paramString)
  {
    i();
    synchronized (f)
    {
      paramString = d(paramString);
      return paramString;
    }
  }
  
  public gpr c(String paramString)
  {
    i();
    for (;;)
    {
      synchronized (f)
      {
        paramString = d(paramString);
        if (paramString != null)
        {
          if (paramString.size() == 1)
          {
            paramString = (gpr)paramString.get(0);
            return paramString;
          }
          Iterator localIterator = paramString.iterator();
          paramString = null;
          if (localIterator.hasNext())
          {
            localObject1 = (gpr)localIterator.next();
            if (!TextUtils.isEmpty(((gpr)localObject1).e()))
            {
              if (paramString == null) {
                break label106;
              }
              return null;
            }
          }
          else
          {
            return paramString;
          }
        }
        else
        {
          return null;
        }
      }
      Object localObject1 = paramString;
      label106:
      paramString = (String)localObject1;
    }
  }
  
  public void c()
  {
    synchronized (f)
    {
      if (l <= 0) {
        throw new IllegalStateException("number of clients should be bigger than 0");
      }
    }
    l -= 1;
    if (a)
    {
      String str = String.valueOf("GmsPeopleCache: releaseRef  ref:");
      int i1 = l;
      new StringBuilder(String.valueOf(str).length() + 11).append(str).append(i1);
    }
    if (l == 0) {
      e.postDelayed(x, 60000L);
    }
  }
  
  boolean d()
  {
    synchronized (f)
    {
      if (l != 0) {
        return false;
      }
      hbs.a("Expected condition to be true", o.isEmpty());
      if ((d.e()) || (d.f()))
      {
        if (d.e()) {
          glu.m.a(d, j);
        }
        d.d();
      }
      if (q != null)
      {
        q.b();
        q = null;
      }
      if (r != null)
      {
        r.b();
        r = null;
      }
      e.removeCallbacks(i);
      t.clear();
      s.clear();
      c = true;
      return true;
    }
  }
  
  void e()
  {
    String str = k.b("load");
    synchronized (f)
    {
      h();
      if ((!d.e()) && (!d.f()))
      {
        ezi.a("BabelPeopleCache", "GmsPeopleCache: disconnected in load(). Reconnecting", new Object[0]);
        d.b();
        return;
      }
      ezi.a("BabelPeopleCache", "GmsPeopleCache: PeopleLoader load() begins", new Object[0]);
      u = true;
      v = System.currentTimeMillis();
      new eim(d, this).b();
      k.c(str);
      return;
    }
  }
  
  public boolean f()
  {
    synchronized (f)
    {
      boolean bool = m;
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     eie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */