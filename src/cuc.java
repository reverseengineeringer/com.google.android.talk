import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class cuc
  extends htu
{
  private int a;
  private bdy b;
  
  public cuc(String paramString, int paramInt, bdy parambdy)
  {
    super(paramString, '\000');
    a = paramInt;
    b = parambdy;
  }
  
  private void a(Context paramContext, Collection<String> paramCollection, Map<String, dyl> paramMap)
  {
    long l = System.currentTimeMillis();
    bha localbha = ((bhg)ilh.a(paramContext, bhg.class)).a(a).b();
    localbha.a();
    ContentValues localContentValues = new ContentValues();
    Iterator localIterator = paramMap.entrySet().iterator();
    if (localIterator.hasNext())
    {
      paramMap = (Map.Entry)localIterator.next();
      dyl localdyl = (dyl)paramMap.getValue();
      if (paramCollection.size() == 1) {}
      for (paramMap = (String)paramCollection.iterator().next();; paramMap = (String)paramMap.getKey())
      {
        a(localbha, localContentValues, a, b, c, d, l, paramMap);
        break;
      }
    }
    localbha.b();
    localbha.c();
    paramContext.getContentResolver().notifyChange(ctr.d, null);
  }
  
  private void a(Context paramContext, List<eyu<dtt, cyx[]>> paramList)
  {
    long l = System.currentTimeMillis();
    bha localbha = ((bhg)ilh.a(paramContext, bhg.class)).a(a).b();
    localbha.a();
    ContentValues localContentValues = new ContentValues();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      eyu localeyu = (eyu)paramList.next();
      cyx[] arrayOfcyx = (cyx[])b;
      int j = arrayOfcyx.length;
      int i = 0;
      while (i < j)
      {
        cyx localcyx = arrayOfcyx[i];
        if ((localcyx != null) && (a == czd.b))
        {
          if (!TextUtils.isEmpty(a).d)) {
            a(localbha, localContentValues, z, localcyx.b(), h, e, l, a).d);
          }
          if (!TextUtils.isEmpty(a).c)) {
            a(localbha, localContentValues, z, localcyx.b(), h, e, l, a).c);
          }
        }
        i += 1;
      }
    }
    localbha.b();
    localbha.c();
    paramContext.getContentResolver().notifyChange(ctr.d, null);
  }
  
  private static void a(bha parambha, ContentValues paramContentValues, boolean paramBoolean, String paramString1, String paramString2, String paramString3, long paramLong, String paramString4)
  {
    paramContentValues.clear();
    paramContentValues.put("is_hangouts_user", Boolean.valueOf(paramBoolean));
    if (!TextUtils.isEmpty(paramString1))
    {
      paramContentValues.put("gaia_id", paramString1);
      paramContentValues.put("needs_gaia_ids_resolved", Boolean.valueOf(false));
    }
    paramContentValues.put("avatar_url", paramString2);
    paramContentValues.put("display_name", paramString3);
    paramContentValues.put("last_checked_ts", Long.valueOf(paramLong));
    parambha.a("merged_contact_details", paramContentValues, "lookup_data = ? OR lookup_data_standardized = ?", new String[] { paramString4, paramString4 });
  }
  
  /* Error */
  private bdy e(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: getstatic 120	ctr:d	Landroid/net/Uri;
    //   5: invokevirtual 223	android/net/Uri:buildUpon	()Landroid/net/Uri$Builder;
    //   8: astore_3
    //   9: aload_3
    //   10: ldc -31
    //   12: aload_0
    //   13: getfield 15	cuc:a	I
    //   16: invokestatic 231	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   19: invokevirtual 237	android/net/Uri$Builder:appendQueryParameter	(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   22: pop
    //   23: aload_3
    //   24: ldc -17
    //   26: aload_0
    //   27: getfield 17	cuc:b	Lbdy;
    //   30: invokevirtual 244	bdy:k	()Ljava/lang/String;
    //   33: invokevirtual 237	android/net/Uri$Builder:appendQueryParameter	(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   36: pop
    //   37: aload_1
    //   38: invokevirtual 115	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   41: aload_3
    //   42: invokevirtual 248	android/net/Uri$Builder:build	()Landroid/net/Uri;
    //   45: getstatic 252	ctr:g	[Ljava/lang/String;
    //   48: aconst_null
    //   49: aconst_null
    //   50: aconst_null
    //   51: invokevirtual 256	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   54: astore_1
    //   55: new 258	cts
    //   58: dup
    //   59: aconst_null
    //   60: aload_1
    //   61: invokespecial 261	cts:<init>	(Ljava/lang/String;Landroid/database/Cursor;)V
    //   64: astore_2
    //   65: aload_2
    //   66: invokevirtual 264	cts:moveToFirst	()Z
    //   69: ifeq +20 -> 89
    //   72: aload_2
    //   73: invokevirtual 267	cts:a	()Lbdy;
    //   76: astore_2
    //   77: aload_1
    //   78: ifnull +9 -> 87
    //   81: aload_1
    //   82: invokeinterface 272 1 0
    //   87: aload_2
    //   88: areturn
    //   89: aload_1
    //   90: ifnull +9 -> 99
    //   93: aload_1
    //   94: invokeinterface 272 1 0
    //   99: aload_0
    //   100: getfield 17	cuc:b	Lbdy;
    //   103: invokevirtual 244	bdy:k	()Ljava/lang/String;
    //   106: invokestatic 275	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   109: astore_1
    //   110: aload_1
    //   111: invokevirtual 278	java/lang/String:length	()I
    //   114: ifeq +37 -> 151
    //   117: ldc_w 280
    //   120: aload_1
    //   121: invokevirtual 284	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   124: astore_1
    //   125: ldc_w 286
    //   128: aload_1
    //   129: iconst_0
    //   130: anewarray 288	java/lang/Object
    //   133: invokestatic 293	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   136: aconst_null
    //   137: areturn
    //   138: astore_1
    //   139: aload_2
    //   140: ifnull +9 -> 149
    //   143: aload_2
    //   144: invokeinterface 272 1 0
    //   149: aload_1
    //   150: athrow
    //   151: new 87	java/lang/String
    //   154: dup
    //   155: ldc_w 280
    //   158: invokespecial 296	java/lang/String:<init>	(Ljava/lang/String;)V
    //   161: astore_1
    //   162: goto -37 -> 125
    //   165: astore_3
    //   166: aload_1
    //   167: astore_2
    //   168: aload_3
    //   169: astore_1
    //   170: goto -31 -> 139
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	173	0	this	cuc
    //   0	173	1	paramContext	Context
    //   1	167	2	localObject1	Object
    //   8	34	3	localBuilder	android.net.Uri.Builder
    //   165	4	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   37	55	138	finally
    //   55	77	165	finally
  }
  
  /* Error */
  protected hus a(Context paramContext)
  {
    // Byte code:
    //   0: new 299	java/util/HashSet
    //   3: dup
    //   4: invokespecial 300	java/util/HashSet:<init>	()V
    //   7: astore 5
    //   9: new 299	java/util/HashSet
    //   12: dup
    //   13: invokespecial 300	java/util/HashSet:<init>	()V
    //   16: astore 6
    //   18: getstatic 302	ctr:e	Landroid/net/Uri;
    //   21: invokevirtual 223	android/net/Uri:buildUpon	()Landroid/net/Uri$Builder;
    //   24: astore 4
    //   26: aload 4
    //   28: ldc -31
    //   30: aload_0
    //   31: getfield 15	cuc:a	I
    //   34: invokestatic 231	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   37: invokevirtual 237	android/net/Uri$Builder:appendQueryParameter	(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   40: pop
    //   41: aload_0
    //   42: getfield 17	cuc:b	Lbdy;
    //   45: invokevirtual 305	bdy:m	()Ljava/lang/String;
    //   48: astore 7
    //   50: aload_1
    //   51: invokevirtual 115	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   54: aload 4
    //   56: invokevirtual 248	android/net/Uri$Builder:build	()Landroid/net/Uri;
    //   59: getstatic 307	ctr:h	[Ljava/lang/String;
    //   62: ldc_w 309
    //   65: iconst_1
    //   66: anewarray 87	java/lang/String
    //   69: dup
    //   70: iconst_0
    //   71: aload 7
    //   73: aastore
    //   74: aconst_null
    //   75: invokevirtual 256	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   78: astore 4
    //   80: aload 4
    //   82: invokeinterface 312 1 0
    //   87: ifeq +90 -> 177
    //   90: aload 4
    //   92: iconst_2
    //   93: invokeinterface 316 2 0
    //   98: ifne +48 -> 146
    //   101: aload 4
    //   103: iconst_4
    //   104: invokeinterface 320 2 0
    //   109: ifne +37 -> 146
    //   112: aload 6
    //   114: aload 4
    //   116: iconst_4
    //   117: invokeinterface 323 2 0
    //   122: invokeinterface 327 2 0
    //   127: pop
    //   128: goto -48 -> 80
    //   131: astore_1
    //   132: aload 4
    //   134: ifnull +10 -> 144
    //   137: aload 4
    //   139: invokeinterface 272 1 0
    //   144: aload_1
    //   145: athrow
    //   146: aload 4
    //   148: iconst_2
    //   149: invokeinterface 316 2 0
    //   154: iconst_1
    //   155: if_icmpne -75 -> 80
    //   158: aload 5
    //   160: aload 4
    //   162: iconst_3
    //   163: invokeinterface 323 2 0
    //   168: invokeinterface 327 2 0
    //   173: pop
    //   174: goto -94 -> 80
    //   177: aload 4
    //   179: ifnull +10 -> 189
    //   182: aload 4
    //   184: invokeinterface 272 1 0
    //   189: aload_0
    //   190: getfield 15	cuc:a	I
    //   193: invokestatic 332	dvd:e	(I)Lbfd;
    //   196: astore 4
    //   198: aload_0
    //   199: getfield 15	cuc:a	I
    //   202: istore_2
    //   203: getstatic 338	dvp:A	Ldml;
    //   206: iload_2
    //   207: invokevirtual 342	dml:b	(I)Z
    //   210: ifeq +146 -> 356
    //   213: aload 6
    //   215: invokeinterface 344 1 0
    //   220: ifne +42 -> 262
    //   223: aload_0
    //   224: getfield 15	cuc:a	I
    //   227: iconst_3
    //   228: aconst_null
    //   229: aload 6
    //   231: invokestatic 349	dng:a	(IILjava/lang/Integer;Ljava/util/Collection;)Ldng;
    //   234: astore 7
    //   236: aload 7
    //   238: invokevirtual 351	dng:m	()Z
    //   241: ifne +21 -> 262
    //   244: aload_0
    //   245: aload_1
    //   246: aload 6
    //   248: aload 7
    //   250: invokevirtual 354	dng:e	()Ldqf;
    //   253: checkcast 356	dyk
    //   256: getfield 359	dyk:g	Ljava/util/Map;
    //   259: invokespecial 361	cuc:a	(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)V
    //   262: aload 5
    //   264: invokeinterface 344 1 0
    //   269: ifne +42 -> 311
    //   272: aload_0
    //   273: getfield 15	cuc:a	I
    //   276: iconst_2
    //   277: aconst_null
    //   278: aload 5
    //   280: invokestatic 349	dng:a	(IILjava/lang/Integer;Ljava/util/Collection;)Ldng;
    //   283: astore 6
    //   285: aload 6
    //   287: invokevirtual 351	dng:m	()Z
    //   290: ifne +21 -> 311
    //   293: aload_0
    //   294: aload_1
    //   295: aload 5
    //   297: aload 6
    //   299: invokevirtual 354	dng:e	()Ldqf;
    //   302: checkcast 356	dyk
    //   305: getfield 359	dyk:g	Ljava/util/Map;
    //   308: invokespecial 361	cuc:a	(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)V
    //   311: aload 4
    //   313: sipush 2513
    //   316: invokestatic 366	aal:a	(Lbfd;I)V
    //   319: aload_0
    //   320: aload_1
    //   321: invokespecial 368	cuc:e	(Landroid/content/Context;)Lbdy;
    //   324: astore_1
    //   325: aload_1
    //   326: ifnull +237 -> 563
    //   329: iconst_1
    //   330: istore_3
    //   331: new 370	hus
    //   334: dup
    //   335: iload_3
    //   336: invokespecial 373	hus:<init>	(Z)V
    //   339: astore 4
    //   341: aload 4
    //   343: invokevirtual 376	hus:d	()Landroid/os/Bundle;
    //   346: ldc_w 378
    //   349: aload_1
    //   350: invokevirtual 384	android/os/Bundle:putSerializable	(Ljava/lang/String;Ljava/io/Serializable;)V
    //   353: aload 4
    //   355: areturn
    //   356: aload 6
    //   358: invokeinterface 344 1 0
    //   363: ifne +95 -> 458
    //   366: new 386	android/os/ConditionVariable
    //   369: dup
    //   370: invokespecial 387	android/os/ConditionVariable:<init>	()V
    //   373: astore 8
    //   375: new 389	cud
    //   378: dup
    //   379: aload_0
    //   380: aload_1
    //   381: aload 8
    //   383: invokespecial 392	cud:<init>	(Lcuc;Landroid/content/Context;Landroid/os/ConditionVariable;)V
    //   386: astore 7
    //   388: aload 7
    //   390: aload 6
    //   392: aload_0
    //   393: getfield 15	cuc:a	I
    //   396: invokevirtual 395	cud:a	(Ljava/util/Collection;I)V
    //   399: aload 8
    //   401: invokevirtual 398	android/os/ConditionVariable:block	()V
    //   404: aload 7
    //   406: getfield 401	cud:a	Ldrb;
    //   409: astore 6
    //   411: aload 6
    //   413: ifnonnull +35 -> 448
    //   416: aload 4
    //   418: sipush 2512
    //   421: invokestatic 366	aal:a	(Lbfd;I)V
    //   424: new 370	hus
    //   427: dup
    //   428: iconst_0
    //   429: aload 7
    //   431: getfield 404	cud:b	Ljava/lang/Exception;
    //   434: aload_1
    //   435: invokevirtual 408	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   438: getstatic 411	aal:nM	I
    //   441: invokevirtual 414	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   444: invokespecial 417	hus:<init>	(ILjava/lang/Exception;Ljava/lang/String;)V
    //   447: areturn
    //   448: aload_0
    //   449: aload_1
    //   450: aload 6
    //   452: invokevirtual 422	drb:k	()Ljava/util/List;
    //   455: invokespecial 424	cuc:a	(Landroid/content/Context;Ljava/util/List;)V
    //   458: aload 5
    //   460: invokeinterface 344 1 0
    //   465: ifne -154 -> 311
    //   468: new 386	android/os/ConditionVariable
    //   471: dup
    //   472: invokespecial 387	android/os/ConditionVariable:<init>	()V
    //   475: astore 7
    //   477: new 389	cud
    //   480: dup
    //   481: aload_0
    //   482: aload_1
    //   483: aload 7
    //   485: invokespecial 392	cud:<init>	(Lcuc;Landroid/content/Context;Landroid/os/ConditionVariable;)V
    //   488: astore 6
    //   490: aload 6
    //   492: aload 5
    //   494: aload_0
    //   495: getfield 15	cuc:a	I
    //   498: invokevirtual 426	cud:b	(Ljava/util/Collection;I)V
    //   501: aload 7
    //   503: invokevirtual 398	android/os/ConditionVariable:block	()V
    //   506: aload 6
    //   508: getfield 401	cud:a	Ldrb;
    //   511: astore 5
    //   513: aload 5
    //   515: ifnonnull +35 -> 550
    //   518: aload 4
    //   520: sipush 2512
    //   523: invokestatic 366	aal:a	(Lbfd;I)V
    //   526: new 370	hus
    //   529: dup
    //   530: iconst_0
    //   531: aload 6
    //   533: getfield 404	cud:b	Ljava/lang/Exception;
    //   536: aload_1
    //   537: invokevirtual 408	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   540: getstatic 411	aal:nM	I
    //   543: invokevirtual 414	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   546: invokespecial 417	hus:<init>	(ILjava/lang/Exception;Ljava/lang/String;)V
    //   549: areturn
    //   550: aload_0
    //   551: aload_1
    //   552: aload 5
    //   554: invokevirtual 422	drb:k	()Ljava/util/List;
    //   557: invokespecial 424	cuc:a	(Landroid/content/Context;Ljava/util/List;)V
    //   560: goto -249 -> 311
    //   563: iconst_0
    //   564: istore_3
    //   565: goto -234 -> 331
    //   568: astore_1
    //   569: aconst_null
    //   570: astore 4
    //   572: goto -440 -> 132
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	575	0	this	cuc
    //   0	575	1	paramContext	Context
    //   202	5	2	i	int
    //   330	235	3	bool	boolean
    //   24	547	4	localObject1	Object
    //   7	546	5	localObject2	Object
    //   16	516	6	localObject3	Object
    //   48	454	7	localObject4	Object
    //   373	27	8	localConditionVariable	android.os.ConditionVariable
    // Exception table:
    //   from	to	target	type
    //   80	128	131	finally
    //   146	174	131	finally
    //   18	80	568	finally
  }
  
  public String b(Context paramContext)
  {
    return paramContext.getString(aal.nN);
  }
}

/* Location:
 * Qualified Name:     cuc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */