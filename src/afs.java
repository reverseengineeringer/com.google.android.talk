import android.util.Log;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class afs
{
  public final String a = "ISO-8859-1";
  public String b;
  public String c;
  public aft d;
  public final Set<String> e = new HashSet();
  public final Set<String> f = new HashSet();
  private final List<afq> g = new ArrayList();
  private boolean h;
  
  public afs()
  {
    this((byte)0);
  }
  
  public afs(byte paramByte) {}
  
  private static boolean a(char paramChar)
  {
    return ((paramChar >= 'a') && (paramChar <= 'z')) || ((paramChar >= 'A') && (paramChar <= 'Z'));
  }
  
  private String e(String paramString)
  {
    Object localObject = paramString;
    if (paramString.trim().endsWith("="))
    {
      int i = paramString.length() - 1;
      while (paramString.charAt(i) != '=') {}
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramString.substring(0, i + 1));
      ((StringBuilder)localObject).append("\r\n");
      for (;;)
      {
        paramString = a();
        if (paramString == null) {
          throw new agc("File ended during parsing a Quoted-Printable String");
        }
        if (!paramString.trim().endsWith("=")) {
          break;
        }
        i = paramString.length() - 1;
        while (paramString.charAt(i) != '=') {}
        ((StringBuilder)localObject).append(paramString.substring(0, i + 1));
        ((StringBuilder)localObject).append("\r\n");
      }
      ((StringBuilder)localObject).append(paramString);
      localObject = ((StringBuilder)localObject).toString();
    }
    return (String)localObject;
  }
  
  private String f(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    for (;;)
    {
      paramString = b();
      if ((paramString == null) || (paramString.length() == 0) || (g(paramString) != null)) {
        break;
      }
      a();
      localStringBuilder.append(" ").append(paramString);
    }
    return localStringBuilder.toString();
  }
  
  private static String g(String paramString)
  {
    int i = paramString.indexOf(":");
    if (i >= 0)
    {
      int j = paramString.indexOf(";");
      if (i == -1) {
        i = j;
      }
      for (;;)
      {
        return paramString.substring(0, i).toUpperCase();
        if (j != -1) {
          i = Math.min(i, j);
        }
      }
    }
    return null;
  }
  
  private boolean l()
  {
    b = "8BIT";
    c = "UTF-8";
    if (!a(false)) {
      return false;
    }
    Iterator localIterator = g.iterator();
    while (localIterator.hasNext()) {
      ((afq)localIterator.next()).d();
    }
    d();
    localIterator = g.iterator();
    while (localIterator.hasNext()) {
      ((afq)localIterator.next()).e();
    }
    return true;
  }
  
  protected String a()
  {
    return d.readLine();
  }
  
  public void a(afq paramafq)
  {
    g.add(paramafq);
  }
  
  /* Error */
  protected void a(afx paramafx)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 173	afx:a	()Ljava/lang/String;
    //   4: invokevirtual 112	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   7: astore_3
    //   8: aload_1
    //   9: invokevirtual 175	afx:c	()Ljava/lang/String;
    //   12: astore 5
    //   14: aload_1
    //   15: ldc -79
    //   17: invokevirtual 180	afx:d	(Ljava/lang/String;)Ljava/util/Collection;
    //   20: astore_2
    //   21: aload_2
    //   22: ifnull +141 -> 163
    //   25: aload_2
    //   26: invokeinterface 183 1 0
    //   31: invokeinterface 146 1 0
    //   36: checkcast 52	java/lang/String
    //   39: astore_2
    //   40: aload_2
    //   41: invokestatic 189	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   44: ifeq +740 -> 784
    //   47: ldc 126
    //   49: astore_2
    //   50: aload_3
    //   51: ldc -65
    //   53: invokevirtual 194	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   56: ifne +21 -> 77
    //   59: aload_3
    //   60: ldc -60
    //   62: invokevirtual 194	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   65: ifne +12 -> 77
    //   68: aload_3
    //   69: ldc -58
    //   71: invokevirtual 194	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   74: ifeq +192 -> 266
    //   77: new 34	java/util/ArrayList
    //   80: dup
    //   81: invokespecial 35	java/util/ArrayList:<init>	()V
    //   84: astore_3
    //   85: aload_0
    //   86: getfield 124	afs:b	Ljava/lang/String;
    //   89: ldc -56
    //   91: invokevirtual 194	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   94: ifeq +74 -> 168
    //   97: aload_0
    //   98: aload 5
    //   100: invokespecial 202	afs:e	(Ljava/lang/String;)Ljava/lang/String;
    //   103: astore 4
    //   105: aload_1
    //   106: aload 4
    //   108: invokevirtual 204	afx:c	(Ljava/lang/String;)V
    //   111: aload 4
    //   113: aload_0
    //   114: invokevirtual 206	afs:f	()I
    //   117: invokestatic 211	afz:a	(Ljava/lang/String;I)Ljava/util/List;
    //   120: invokeinterface 137 1 0
    //   125: astore 4
    //   127: aload 4
    //   129: invokeinterface 142 1 0
    //   134: ifeq +90 -> 224
    //   137: aload_3
    //   138: aload 4
    //   140: invokeinterface 146 1 0
    //   145: checkcast 52	java/lang/String
    //   148: ldc 46
    //   150: aload_2
    //   151: invokestatic 214	afz:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   154: invokeinterface 165 2 0
    //   159: pop
    //   160: goto -33 -> 127
    //   163: aconst_null
    //   164: astore_2
    //   165: goto -125 -> 40
    //   168: aload_0
    //   169: aload 5
    //   171: invokespecial 216	afs:f	(Ljava/lang/String;)Ljava/lang/String;
    //   174: aload_0
    //   175: invokevirtual 206	afs:f	()I
    //   178: invokestatic 211	afz:a	(Ljava/lang/String;I)Ljava/util/List;
    //   181: invokeinterface 137 1 0
    //   186: astore 4
    //   188: aload 4
    //   190: invokeinterface 142 1 0
    //   195: ifeq +29 -> 224
    //   198: aload_3
    //   199: aload 4
    //   201: invokeinterface 146 1 0
    //   206: checkcast 52	java/lang/String
    //   209: ldc 46
    //   211: aload_2
    //   212: invokestatic 218	afz:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   215: invokeinterface 165 2 0
    //   220: pop
    //   221: goto -33 -> 188
    //   224: aload_1
    //   225: aload_3
    //   226: invokevirtual 221	afx:a	(Ljava/util/List;)V
    //   229: aload_0
    //   230: getfield 37	afs:g	Ljava/util/List;
    //   233: invokeinterface 137 1 0
    //   238: astore_2
    //   239: aload_2
    //   240: invokeinterface 142 1 0
    //   245: ifeq +532 -> 777
    //   248: aload_2
    //   249: invokeinterface 146 1 0
    //   254: checkcast 148	afq
    //   257: aload_1
    //   258: invokeinterface 223 2 0
    //   263: goto -24 -> 239
    //   266: aload_0
    //   267: getfield 124	afs:b	Ljava/lang/String;
    //   270: ldc -56
    //   272: invokevirtual 194	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   275: ifne +29 -> 304
    //   278: aload_3
    //   279: ldc -31
    //   281: invokevirtual 194	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   284: ifeq +89 -> 373
    //   287: aload_1
    //   288: ldc -29
    //   290: invokevirtual 180	afx:d	(Ljava/lang/String;)Ljava/util/Collection;
    //   293: ifnonnull +80 -> 373
    //   296: aload 5
    //   298: invokestatic 229	afz:a	(Ljava/lang/String;)Z
    //   301: ifeq +72 -> 373
    //   304: aload_0
    //   305: aload 5
    //   307: invokespecial 202	afs:e	(Ljava/lang/String;)Ljava/lang/String;
    //   310: astore_3
    //   311: aload_3
    //   312: ldc 46
    //   314: aload_2
    //   315: invokestatic 214	afz:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   318: astore_2
    //   319: aload_1
    //   320: aload_3
    //   321: invokevirtual 204	afx:c	(Ljava/lang/String;)V
    //   324: aload_1
    //   325: iconst_1
    //   326: anewarray 52	java/lang/String
    //   329: dup
    //   330: iconst_0
    //   331: aload_2
    //   332: aastore
    //   333: invokevirtual 232	afx:a	([Ljava/lang/String;)V
    //   336: aload_0
    //   337: getfield 37	afs:g	Ljava/util/List;
    //   340: invokeinterface 137 1 0
    //   345: astore_2
    //   346: aload_2
    //   347: invokeinterface 142 1 0
    //   352: ifeq +425 -> 777
    //   355: aload_2
    //   356: invokeinterface 146 1 0
    //   361: checkcast 148	afq
    //   364: aload_1
    //   365: invokeinterface 223 2 0
    //   370: goto -24 -> 346
    //   373: aload_0
    //   374: getfield 124	afs:b	Ljava/lang/String;
    //   377: ldc -22
    //   379: invokevirtual 194	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   382: ifne +15 -> 397
    //   385: aload_0
    //   386: getfield 124	afs:b	Ljava/lang/String;
    //   389: ldc -20
    //   391: invokevirtual 194	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   394: ifeq +147 -> 541
    //   397: aload_0
    //   398: aload 5
    //   400: invokevirtual 238	afs:c	(Ljava/lang/String;)Ljava/lang/String;
    //   403: astore_2
    //   404: aload_1
    //   405: aload_2
    //   406: iconst_0
    //   407: invokestatic 244	android/util/Base64:decode	(Ljava/lang/String;I)[B
    //   410: invokevirtual 247	afx:a	([B)V
    //   413: aload_0
    //   414: getfield 37	afs:g	Ljava/util/List;
    //   417: invokeinterface 137 1 0
    //   422: astore_2
    //   423: aload_2
    //   424: invokeinterface 142 1 0
    //   429: ifeq +348 -> 777
    //   432: aload_2
    //   433: invokeinterface 146 1 0
    //   438: checkcast 148	afq
    //   441: aload_1
    //   442: invokeinterface 223 2 0
    //   447: goto -24 -> 423
    //   450: astore_2
    //   451: ldc -7
    //   453: ldc -5
    //   455: invokestatic 256	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   458: pop
    //   459: aload_0
    //   460: getfield 37	afs:g	Ljava/util/List;
    //   463: invokeinterface 137 1 0
    //   468: astore_2
    //   469: aload_2
    //   470: invokeinterface 142 1 0
    //   475: ifeq +302 -> 777
    //   478: aload_2
    //   479: invokeinterface 146 1 0
    //   484: checkcast 148	afq
    //   487: aload_1
    //   488: invokeinterface 223 2 0
    //   493: goto -24 -> 469
    //   496: astore_2
    //   497: aload 5
    //   499: invokestatic 260	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   502: astore_2
    //   503: aload_2
    //   504: invokevirtual 66	java/lang/String:length	()I
    //   507: ifeq +20 -> 527
    //   510: ldc_w 262
    //   513: aload_2
    //   514: invokevirtual 265	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   517: astore_2
    //   518: new 87	agc
    //   521: dup
    //   522: aload_2
    //   523: invokespecial 92	agc:<init>	(Ljava/lang/String;)V
    //   526: athrow
    //   527: new 52	java/lang/String
    //   530: dup
    //   531: ldc_w 262
    //   534: invokespecial 266	java/lang/String:<init>	(Ljava/lang/String;)V
    //   537: astore_2
    //   538: goto -20 -> 518
    //   541: aload_0
    //   542: getfield 124	afs:b	Ljava/lang/String;
    //   545: ldc_w 268
    //   548: invokevirtual 194	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   551: ifne +53 -> 604
    //   554: aload_0
    //   555: getfield 124	afs:b	Ljava/lang/String;
    //   558: ldc 122
    //   560: invokevirtual 194	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   563: ifne +41 -> 604
    //   566: aload_0
    //   567: getfield 124	afs:b	Ljava/lang/String;
    //   570: ldc_w 270
    //   573: invokevirtual 273	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   576: ifne +28 -> 604
    //   579: ldc_w 275
    //   582: iconst_2
    //   583: anewarray 4	java/lang/Object
    //   586: dup
    //   587: iconst_0
    //   588: aload_0
    //   589: getfield 124	afs:b	Ljava/lang/String;
    //   592: aastore
    //   593: dup
    //   594: iconst_1
    //   595: aload_0
    //   596: invokevirtual 277	afs:g	()Ljava/lang/String;
    //   599: aastore
    //   600: invokestatic 281	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   603: pop
    //   604: aload_0
    //   605: invokevirtual 206	afs:f	()I
    //   608: ifne +170 -> 778
    //   611: aconst_null
    //   612: astore_3
    //   613: aload_0
    //   614: invokevirtual 97	afs:b	()Ljava/lang/String;
    //   617: astore 6
    //   619: aload 6
    //   621: invokestatic 189	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   624: ifne +75 -> 699
    //   627: aload 6
    //   629: iconst_0
    //   630: invokevirtual 70	java/lang/String:charAt	(I)C
    //   633: bipush 32
    //   635: if_icmpne +64 -> 699
    //   638: ldc_w 283
    //   641: aload 6
    //   643: invokevirtual 112	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   646: invokevirtual 286	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   649: ifne +50 -> 699
    //   652: aload_0
    //   653: invokevirtual 85	afs:a	()Ljava/lang/String;
    //   656: pop
    //   657: aload_3
    //   658: astore 4
    //   660: aload_3
    //   661: ifnonnull +20 -> 681
    //   664: new 72	java/lang/StringBuilder
    //   667: dup
    //   668: invokespecial 73	java/lang/StringBuilder:<init>	()V
    //   671: astore 4
    //   673: aload 4
    //   675: aload 5
    //   677: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   680: pop
    //   681: aload 4
    //   683: aload 6
    //   685: iconst_1
    //   686: invokevirtual 289	java/lang/String:substring	(I)Ljava/lang/String;
    //   689: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   692: pop
    //   693: aload 4
    //   695: astore_3
    //   696: goto -83 -> 613
    //   699: aload_3
    //   700: ifnull +78 -> 778
    //   703: aload_3
    //   704: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   707: astore_3
    //   708: new 34	java/util/ArrayList
    //   711: dup
    //   712: invokespecial 35	java/util/ArrayList:<init>	()V
    //   715: astore 4
    //   717: aload 4
    //   719: aload_0
    //   720: aload_3
    //   721: invokevirtual 291	afs:d	(Ljava/lang/String;)Ljava/lang/String;
    //   724: ldc 46
    //   726: aload_2
    //   727: invokestatic 218	afz:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   730: invokevirtual 292	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   733: pop
    //   734: aload_1
    //   735: aload 4
    //   737: invokevirtual 221	afx:a	(Ljava/util/List;)V
    //   740: aload_0
    //   741: getfield 37	afs:g	Ljava/util/List;
    //   744: invokeinterface 137 1 0
    //   749: astore_2
    //   750: aload_2
    //   751: invokeinterface 142 1 0
    //   756: ifeq +21 -> 777
    //   759: aload_2
    //   760: invokeinterface 146 1 0
    //   765: checkcast 148	afq
    //   768: aload_1
    //   769: invokeinterface 223 2 0
    //   774: goto -24 -> 750
    //   777: return
    //   778: aload 5
    //   780: astore_3
    //   781: goto -73 -> 708
    //   784: goto -734 -> 50
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	787	0	this	afs
    //   0	787	1	paramafx	afx
    //   20	413	2	localObject1	Object
    //   450	1	2	localOutOfMemoryError	OutOfMemoryError
    //   468	11	2	localIterator	Iterator
    //   496	1	2	localIllegalArgumentException	IllegalArgumentException
    //   502	258	2	localObject2	Object
    //   7	774	3	localObject3	Object
    //   103	633	4	localObject4	Object
    //   12	767	5	str1	String
    //   617	67	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   397	404	450	java/lang/OutOfMemoryError
    //   404	413	450	java/lang/OutOfMemoryError
    //   413	423	450	java/lang/OutOfMemoryError
    //   423	447	450	java/lang/OutOfMemoryError
    //   497	518	450	java/lang/OutOfMemoryError
    //   518	527	450	java/lang/OutOfMemoryError
    //   527	538	450	java/lang/OutOfMemoryError
    //   404	413	496	java/lang/IllegalArgumentException
  }
  
  protected void a(afx paramafx, String paramString)
  {
    Object localObject = paramString.split("=", 2);
    if (localObject.length == 2)
    {
      paramString = localObject[0].trim().toUpperCase();
      localObject = localObject[1].trim();
      if (paramString.equals("TYPE"))
      {
        c(paramafx, (String)localObject);
        return;
      }
      if (paramString.equals("VALUE"))
      {
        d(paramafx, (String)localObject);
        return;
      }
      if (paramString.equals("ENCODING"))
      {
        e(paramafx, (String)localObject);
        return;
      }
      if (paramString.equals("CHARSET"))
      {
        f(paramafx, (String)localObject);
        return;
      }
      if (paramString.equals("LANGUAGE"))
      {
        g(paramafx, (String)localObject);
        return;
      }
      if (paramString.startsWith("X-"))
      {
        a(paramafx, paramString, (String)localObject);
        return;
      }
      throw new agc(String.valueOf(paramString).length() + 15 + "Unknown type \"" + paramString + "\"");
    }
    b(paramafx, localObject[0]);
  }
  
  protected void a(afx paramafx, String paramString1, String paramString2)
  {
    paramafx.a(paramString1, paramString2);
  }
  
  public void a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      throw new NullPointerException("InputStream must not be null.");
    }
    d = new aft(new InputStreamReader(paramInputStream, a));
    System.currentTimeMillis();
    paramInputStream = g.iterator();
    while (paramInputStream.hasNext()) {
      ((afq)paramInputStream.next()).a();
    }
    for (;;)
    {
      try
      {
        if (h) {}
        for (;;)
        {
          paramInputStream = g.iterator();
          while (paramInputStream.hasNext()) {
            ((afq)paramInputStream.next()).b();
          }
          if (l()) {
            break;
          }
        }
        return;
      }
      finally {}
    }
  }
  
  protected boolean a(String paramString)
  {
    if ((!h().contains(paramString.toUpperCase())) && (!paramString.startsWith("X-")) && (!e.contains(paramString)))
    {
      e.add(paramString);
      paramString = String.valueOf(paramString);
      if (paramString.length() == 0) {
        break label72;
      }
      "Property name unsupported by vCard 2.1: ".concat(paramString);
    }
    for (;;)
    {
      return true;
      label72:
      new String("Property name unsupported by vCard 2.1: ");
    }
  }
  
  protected boolean a(boolean paramBoolean)
  {
    do
    {
      String str;
      do
      {
        str = a();
        if (str == null) {
          return false;
        }
      } while (str.trim().length() <= 0);
      Object localObject = str.split(":", 2);
      if ((localObject.length == 2) && (localObject[0].trim().equalsIgnoreCase("BEGIN")) && (localObject[1].trim().equalsIgnoreCase("VCARD"))) {
        return true;
      }
      if (!paramBoolean)
      {
        localObject = String.valueOf("Expected String \"BEGIN:VCARD\" did not come (Instead, \"");
        throw new agc(String.valueOf(localObject).length() + 7 + String.valueOf(str).length() + (String)localObject + str + "\" came)");
      }
    } while (paramBoolean);
    throw new agc("Reached where must not be reached.");
  }
  
  protected afx b(String paramString)
  {
    afx localafx = new afx();
    int n = paramString.length();
    if ((n > 0) && (paramString.charAt(0) == '#')) {
      throw new agd();
    }
    int k = 0;
    int m = 0;
    int j = 0;
    if (k < n)
    {
      int i1 = paramString.charAt(k);
      int i;
      switch (j)
      {
      default: 
        i = m;
      }
      for (;;)
      {
        k += 1;
        m = i;
        break;
        if (i1 == 58)
        {
          localafx.a(paramString.substring(m, k));
          if (k < n - 1) {}
          for (paramString = paramString.substring(k + 1);; paramString = "")
          {
            localafx.c(paramString);
            return localafx;
          }
        }
        if (i1 == 46)
        {
          String str = paramString.substring(m, k);
          if (str.length() != 0) {
            localafx.b(str);
          }
          i = k + 1;
        }
        else
        {
          i = m;
          if (i1 == 59)
          {
            localafx.a(paramString.substring(m, k));
            i = k + 1;
            j = 1;
            continue;
            if (i1 == 34)
            {
              "2.1".equalsIgnoreCase(g());
              j = 2;
              i = m;
            }
            else if (i1 == 59)
            {
              a(localafx, paramString.substring(m, k));
              i = k + 1;
            }
            else
            {
              i = m;
              if (i1 == 58)
              {
                a(localafx, paramString.substring(m, k));
                if (k < n - 1) {}
                for (paramString = paramString.substring(k + 1);; paramString = "")
                {
                  localafx.c(paramString);
                  return localafx;
                }
                i = m;
                if (i1 == 34)
                {
                  "2.1".equalsIgnoreCase(g());
                  j = 1;
                  i = m;
                }
              }
            }
          }
        }
      }
    }
    throw new agc(String.valueOf(paramString).length() + 16 + "Invalid line: \"" + paramString + "\"", (byte)0);
  }
  
  protected String b()
  {
    return d.a();
  }
  
  protected void b(afx paramafx)
  {
    if (!paramafx.c().toUpperCase().contains("BEGIN:VCARD"))
    {
      Iterator localIterator = g.iterator();
      while (localIterator.hasNext()) {
        ((afq)localIterator.next()).a(paramafx);
      }
    }
    throw new agf("AGENT Property is not supported now.", (byte)0);
  }
  
  protected void b(afx paramafx, String paramString)
  {
    c(paramafx, paramString);
  }
  
  protected String c()
  {
    String str;
    do
    {
      str = a();
      if (str == null) {
        throw new agc("Reached end of buffer.");
      }
    } while (str.trim().length() <= 0);
    return str;
  }
  
  protected String c(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    for (;;)
    {
      paramString = b();
      if (paramString == null) {
        throw new agc("File ended during parsing BASE64 binary");
      }
      String str = g(paramString);
      if (h().contains(str))
      {
        paramString = String.valueOf(paramString.trim());
        if (paramString.length() != 0) {
          "Problematic line: ".concat(paramString);
        }
      }
      do
      {
        for (;;)
        {
          return localStringBuilder.toString();
          new String("Problematic line: ");
        }
        a();
      } while (paramString.length() == 0);
      localStringBuilder.append(paramString);
    }
  }
  
  protected void c(afx paramafx, String paramString)
  {
    if ((!i().contains(paramString.toUpperCase())) && (!paramString.startsWith("X-")) && (!e.contains(paramString)))
    {
      e.add(paramString);
      String.format("TYPE unsupported by %s: ", new Object[] { Integer.valueOf(f()), paramString });
    }
    paramafx.a("TYPE", paramString);
  }
  
  protected String d(String paramString)
  {
    return paramString;
  }
  
  protected void d()
  {
    int i = 0;
    try
    {
      bool = e();
      i = bool;
    }
    catch (agd localagd1)
    {
      for (;;)
      {
        try
        {
          boolean bool = e();
          i = bool;
        }
        catch (agd localagd2)
        {
          Log.e("vCard", "Invalid line which looks like some comment was found. Ignored.");
        }
        localagd1 = localagd1;
        Log.e("vCard", "Invalid line which looks like some comment was found. Ignored.");
      }
    }
    if (i == 0) {}
  }
  
  protected void d(afx paramafx, String paramString)
  {
    if ((!j().contains(paramString.toUpperCase())) && (!paramString.startsWith("X-")) && (!f.contains(paramString)))
    {
      f.add(paramString);
      String.format("The value unsupported by TYPE of %s: ", new Object[] { Integer.valueOf(f()), paramString });
    }
    paramafx.a("VALUE", paramString);
  }
  
  protected void e(afx paramafx, String paramString)
  {
    if ((k().contains(paramString)) || (paramString.startsWith("X-")))
    {
      paramafx.a("ENCODING", paramString);
      b = paramString.toUpperCase();
      return;
    }
    throw new agc(String.valueOf(paramString).length() + 19 + "Unknown encoding \"" + paramString + "\"");
  }
  
  protected boolean e()
  {
    b = "8BIT";
    Object localObject = b(c());
    String str1 = ((afx)localObject).a().toUpperCase();
    String str2 = ((afx)localObject).c();
    if (str1.equals("BEGIN"))
    {
      if (str2.equalsIgnoreCase("VCARD"))
      {
        localObject = g.iterator();
        while (((Iterator)localObject).hasNext()) {
          ((afq)((Iterator)localObject).next()).d();
        }
        d();
        localObject = g.iterator();
        while (((Iterator)localObject).hasNext()) {
          ((afq)((Iterator)localObject).next()).e();
        }
      }
      localObject = String.valueOf(str2);
      if (((String)localObject).length() != 0) {}
      for (localObject = "Unknown BEGIN type: ".concat((String)localObject);; localObject = new String("Unknown BEGIN type: ")) {
        throw new agc((String)localObject);
      }
    }
    if (str1.equals("END"))
    {
      if (str2.equalsIgnoreCase("VCARD")) {
        return true;
      }
      localObject = String.valueOf(str2);
      if (((String)localObject).length() != 0) {}
      for (localObject = "Unknown END type: ".concat((String)localObject);; localObject = new String("Unknown END type: ")) {
        throw new agc((String)localObject);
      }
    }
    str2 = ((afx)localObject).c();
    if (str1.equals("AGENT")) {
      b((afx)localObject);
    }
    for (;;)
    {
      return false;
      a(str1);
      if ((str1.equals("VERSION")) && (!str2.equals(g())))
      {
        localObject = String.valueOf(g());
        throw new agg(String.valueOf(str2).length() + 26 + String.valueOf(localObject).length() + "Incompatible version: " + str2 + " != " + (String)localObject);
      }
      a((afx)localObject);
    }
  }
  
  protected int f()
  {
    return 0;
  }
  
  protected void f(afx paramafx, String paramString)
  {
    c = paramString;
    paramafx.a("CHARSET", paramString);
  }
  
  protected String g()
  {
    return "2.1";
  }
  
  protected void g(afx paramafx, String paramString)
  {
    int j = 0;
    Object localObject1 = paramString.split("-");
    if (localObject1.length != 2) {
      throw new agc(String.valueOf(paramString).length() + 20 + "Invalid Language: \"" + paramString + "\"");
    }
    Object localObject2 = localObject1[0];
    int k = ((String)localObject2).length();
    int i = 0;
    while (i < k)
    {
      if (!a(((String)localObject2).charAt(i))) {
        throw new agc(String.valueOf(paramString).length() + 20 + "Invalid Language: \"" + paramString + "\"");
      }
      i += 1;
    }
    localObject1 = localObject1[1];
    k = ((String)localObject1).length();
    i = j;
    while (i < k)
    {
      if (!a(((String)localObject1).charAt(i))) {
        throw new agc(String.valueOf(paramString).length() + 20 + "Invalid Language: \"" + paramString + "\"");
      }
      i += 1;
    }
    paramafx.a("LANGUAGE", paramString);
  }
  
  protected Set<String> h()
  {
    return afv.a;
  }
  
  protected Set<String> i()
  {
    return afv.b;
  }
  
  protected Set<String> j()
  {
    return afv.c;
  }
  
  protected Set<String> k()
  {
    return afv.d;
  }
}

/* Location:
 * Qualified Name:     afs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */