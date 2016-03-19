import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.os.ConditionVariable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public final class ctt
{
  static final String[] a = { "lookup", "contact_id", "display_name", "raw_contact_id", "photo_uri", "mimetype", "data1", "data2", "data3", "data4" };
  static final ksm<String, Integer> b = new kso().a("data1", Integer.valueOf(6)).a("data2", Integer.valueOf(7)).a("data3", Integer.valueOf(8)).a("data4", Integer.valueOf(9)).a();
  static final String[] c = { "name", "gaia_id", "profile_photo_url" };
  private static final String e = String.format(" contact_id in default_directory AND %s IN ('%s','%s','%s') AND %s is null", new Object[] { "mimetype", "vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/email_v2", "vnd.android.cursor.item/photo", "data_set" });
  private static final long f = TimeUnit.DAYS.toMillis(1L);
  private static final long g = TimeUnit.SECONDS.toMillis(10L);
  final Context d;
  private final ContentResolver h;
  private final int i;
  private final boolean j;
  private kwt<String, ctw> k;
  private kwt<String, ctz> l;
  private Map<String, ctu> m;
  private Map<String, ctu> n;
  private List<ctu> o;
  private ezj p;
  private int q;
  private int r;
  private int s;
  private int t;
  private int u;
  private int v;
  private int w;
  private int x;
  private boolean y;
  
  public ctt(Context paramContext, ContentResolver paramContentResolver, int paramInt, boolean paramBoolean)
  {
    aal.c(8, "expectedKeys");
    k = new kwv(8).d().a();
    aal.c(8, "expectedKeys");
    l = new kwv(8).d().a();
    m = new hq();
    n = new hq();
    d = paramContext;
    h = paramContentResolver;
    i = paramInt;
    j = paramBoolean;
  }
  
  private static List<String> a(kwt<String, ? extends ctv> paramkwt)
  {
    ArrayList localArrayList = new ArrayList();
    long l2 = System.currentTimeMillis();
    Iterator localIterator = paramkwt.k().iterator();
    while (localIterator.hasNext())
    {
      String str4 = (String)localIterator.next();
      Object localObject1 = paramkwt.b(str4);
      Object localObject2 = ((Collection)localObject1).iterator();
      boolean bool1 = false;
      String str3 = null;
      long l1 = 0L;
      String str1 = null;
      String str2 = null;
      while (((Iterator)localObject2).hasNext())
      {
        ctv localctv = (ctv)((Iterator)localObject2).next();
        if (f) {
          bool1 = true;
        }
        if (!TextUtils.isEmpty(g)) {
          str3 = g;
        }
        if (!TextUtils.isEmpty(h)) {
          str2 = h;
        }
        if (!TextUtils.isEmpty(i)) {
          str1 = i;
        }
        l1 = Math.max(l1, j);
      }
      boolean bool2 = TextUtils.isEmpty(str3);
      if (((Collection)localObject1).size() > 1)
      {
        localObject1 = ((Collection)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (ctv)((Iterator)localObject1).next();
          f = bool1;
          g = str3;
          h = str2;
          i = str1;
          j = l1;
          e = bool2;
        }
      }
      if ((!bool1) && (l2 - l1 > f)) {
        localArrayList.add(str4);
      }
    }
    return localArrayList;
  }
  
  private static void a(bha parambha, Collection<ctu> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      parambha.a("merged_contacts", "contact_lookup_key = ?", new String[] { new String(String.valueOf(nextc)) });
    }
  }
  
  private void b()
  {
    int i1 = 0;
    Object localObject1 = a(k);
    long l1 = System.currentTimeMillis();
    if (!((List)localObject1).isEmpty())
    {
      int i2 = i;
      Object localObject2;
      if (dvp.z.b(i2))
      {
        localObject2 = dng.a(i, 2, null, (Collection)localObject1);
        if (((dng)localObject2).m()) {
          i1 = 0;
        }
      }
      while (i1 != 0)
      {
        localObject1 = ((List)localObject1).iterator();
        for (;;)
        {
          if (((Iterator)localObject1).hasNext())
          {
            localObject2 = (String)((Iterator)localObject1).next();
            localObject2 = k.b(localObject2).iterator();
            while (((Iterator)localObject2).hasNext()) {
              nextj = l1;
            }
            continue;
            localObject2 = eg.entrySet().iterator();
            Object localObject4;
            ctv localctv1;
            while (((Iterator)localObject2).hasNext())
            {
              localObject3 = (Map.Entry)((Iterator)localObject2).next();
              localObject4 = k.b(((Map.Entry)localObject3).getKey());
              localObject3 = (dyl)((Map.Entry)localObject3).getValue();
              localObject4 = ((Collection)localObject4).iterator();
              while (((Iterator)localObject4).hasNext())
              {
                localctv1 = (ctv)((Iterator)localObject4).next();
                h = c;
                g = b;
                i = d;
                f = a;
                e = TextUtils.isEmpty(b);
              }
            }
            i1 = 1;
            break;
            localObject2 = new ConditionVariable();
            Object localObject3 = new ctx(this, (ConditionVariable)localObject2);
            ((ctx)localObject3).a((Collection)localObject1, i);
            ((ConditionVariable)localObject2).block();
            localObject2 = a;
            if (localObject2 == null) {
              break;
            }
            for (;;)
            {
              localObject2 = ((drb)localObject2).k().iterator();
              while (((Iterator)localObject2).hasNext())
              {
                localObject3 = (eyu)((Iterator)localObject2).next();
                localObject4 = (cyx[])b;
                i2 = localObject4.length;
                i1 = 0;
                while (i1 < i2)
                {
                  localctv1 = localObject4[i1];
                  if (localctv1 != null)
                  {
                    Iterator localIterator = k.b(a).c).iterator();
                    while (localIterator.hasNext())
                    {
                      ctv localctv2 = (ctv)localIterator.next();
                      h = h;
                      g = localctv1.b();
                      i = e;
                      f = z;
                      e = TextUtils.isEmpty(localctv1.b());
                    }
                  }
                  i1 += 1;
                }
              }
              i1 = 1;
            }
          }
        }
      }
    }
  }
  
  private void b(bha parambha, Collection<ctu> paramCollection)
  {
    ContentValues localContentValues1 = new ContentValues();
    ContentValues localContentValues2 = new ContentValues();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      ctu localctu = (ctu)paramCollection.next();
      localContentValues1.clear();
      localContentValues1.put("contact_lookup_key", c);
      localContentValues1.put("contact_id", d);
      localContentValues1.put("raw_contact_id", e);
      localContentValues1.put("display_name", ezm.p(f));
      localContentValues1.put("avatar_url", g);
      localContentValues1.put("is_frequent", Boolean.valueOf(h));
      long l1 = parambha.a("merged_contacts", localContentValues1);
      Iterator localIterator = i.values().iterator();
      Object localObject;
      while (localIterator.hasNext())
      {
        localObject = (ctz)localIterator.next();
        localContentValues2.clear();
        localContentValues2.put("lookup_data_type", Integer.valueOf(0));
        localContentValues2.put("lookup_data", a);
        localContentValues2.put("lookup_data_display", ezm.p(a));
        localContentValues2.put("lookup_data_standardized", b);
        localContentValues2.put("lookup_data_search", c);
        localContentValues2.put("lookup_data_label", d);
        localContentValues2.put("is_hangouts_user", Boolean.valueOf(f));
        localContentValues2.put("gaia_id", g);
        localContentValues2.put("needs_gaia_ids_resolved", Boolean.valueOf(e));
        localContentValues2.put("avatar_url", h);
        localContentValues2.put("display_name", i);
        localContentValues2.put("last_checked_ts", Long.valueOf(j));
        localContentValues2.put("merged_contact_id", Long.valueOf(l1));
        parambha.a("merged_contact_details", localContentValues2);
        u += 1;
      }
      localIterator = j.values().iterator();
      while (localIterator.hasNext())
      {
        localObject = (ctw)localIterator.next();
        localContentValues2.clear();
        localContentValues2.put("lookup_data_type", Integer.valueOf(1));
        localContentValues2.put("lookup_data", a);
        localContentValues2.putNull("lookup_data_display");
        localContentValues2.putNull("lookup_data_standardized");
        localContentValues2.putNull("lookup_data_search");
        localContentValues2.put("lookup_data_label", d);
        localContentValues2.put("is_hangouts_user", Boolean.valueOf(f));
        localContentValues2.put("gaia_id", g);
        localContentValues2.put("needs_gaia_ids_resolved", Boolean.valueOf(e));
        localContentValues2.put("avatar_url", h);
        localContentValues2.put("display_name", i);
        localContentValues2.put("last_checked_ts", Long.valueOf(j));
        localContentValues2.put("merged_contact_id", Long.valueOf(l1));
        parambha.a("merged_contact_details", localContentValues2);
        v += 1;
      }
      if (!TextUtils.isEmpty(b))
      {
        localContentValues2.clear();
        localContentValues2.put("merged_contact_id", Long.valueOf(l1));
        localContentValues2.put("lookup_data_type", Integer.valueOf(2));
        localContentValues2.putNull("lookup_data");
        localContentValues2.putNull("lookup_data_standardized");
        localContentValues2.putNull("lookup_data_search");
        localContentValues2.putNull("lookup_data_label");
        localContentValues2.put("is_hangouts_user", Boolean.valueOf(true));
        localContentValues2.put("needs_gaia_ids_resolved", Boolean.valueOf(false));
        localContentValues2.put("gaia_id", b);
        localContentValues2.putNull("avatar_url");
        localContentValues2.putNull("display_name");
        localContentValues2.put("last_checked_ts", Integer.valueOf(0));
        parambha.a("merged_contact_details", localContentValues2);
        w += 1;
      }
    }
  }
  
  private void c()
  {
    long l1 = System.currentTimeMillis();
    Object localObject1 = a(l);
    if (!((List)localObject1).isEmpty())
    {
      int i1 = i;
      if (dvp.z.b(i1))
      {
        Object localObject2 = dng.a(i, 3, Integer.valueOf(2), (Collection)localObject1);
        if (!((dng)localObject2).m())
        {
          localObject2 = eg.entrySet().iterator();
          while (((Iterator)localObject2).hasNext())
          {
            Object localObject3 = (Map.Entry)((Iterator)localObject2).next();
            Object localObject4 = l.b(((Map.Entry)localObject3).getKey());
            localObject3 = (dyl)((Map.Entry)localObject3).getValue();
            localObject4 = ((Collection)localObject4).iterator();
            while (((Iterator)localObject4).hasNext())
            {
              ctv localctv = (ctv)((Iterator)localObject4).next();
              h = c;
              i = d;
              f = a;
            }
          }
          localObject1 = ((List)localObject1).iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (String)((Iterator)localObject1).next();
            localObject2 = l.b(localObject2).iterator();
            while (((Iterator)localObject2).hasNext()) {
              nextj = l1;
            }
          }
        }
      }
    }
  }
  
  /* Error */
  private List<ctu> d()
  {
    // Byte code:
    //   0: new 487	krs
    //   3: dup
    //   4: invokespecial 488	krs:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: getfield 170	ctt:n	Ljava/util/Map;
    //   12: invokeinterface 420 1 0
    //   17: invokeinterface 215 1 0
    //   22: astore_1
    //   23: aload_1
    //   24: invokeinterface 205 1 0
    //   29: ifeq +143 -> 172
    //   32: aload_1
    //   33: invokeinterface 209 1 0
    //   38: checkcast 260	ctu
    //   41: astore_2
    //   42: aload_2
    //   43: getfield 416	ctu:i	Ljava/util/Map;
    //   46: invokeinterface 420 1 0
    //   51: invokeinterface 215 1 0
    //   56: astore 4
    //   58: aload 4
    //   60: invokeinterface 205 1 0
    //   65: ifeq +42 -> 107
    //   68: aload 4
    //   70: invokeinterface 209 1 0
    //   75: checkcast 217	ctv
    //   78: astore 5
    //   80: aload 5
    //   82: getfield 221	ctv:g	Ljava/lang/String;
    //   85: invokestatic 227	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   88: ifne -30 -> 58
    //   91: aload_3
    //   92: aload 5
    //   94: getfield 221	ctv:g	Ljava/lang/String;
    //   97: aload_2
    //   98: invokeinterface 491 3 0
    //   103: pop
    //   104: goto -46 -> 58
    //   107: aload_2
    //   108: getfield 467	ctu:j	Ljava/util/Map;
    //   111: invokeinterface 420 1 0
    //   116: invokeinterface 215 1 0
    //   121: astore 4
    //   123: aload 4
    //   125: invokeinterface 205 1 0
    //   130: ifeq -107 -> 23
    //   133: aload 4
    //   135: invokeinterface 209 1 0
    //   140: checkcast 217	ctv
    //   143: astore 5
    //   145: aload 5
    //   147: getfield 221	ctv:g	Ljava/lang/String;
    //   150: invokestatic 227	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   153: ifne -30 -> 123
    //   156: aload_3
    //   157: aload 5
    //   159: getfield 221	ctv:g	Ljava/lang/String;
    //   162: aload_2
    //   163: invokeinterface 491 3 0
    //   168: pop
    //   169: goto -46 -> 123
    //   172: new 181	java/util/ArrayList
    //   175: dup
    //   176: invokespecial 182	java/util/ArrayList:<init>	()V
    //   179: astore 4
    //   181: getstatic 496	com/google/android/apps/hangouts/content/EsProvider:j	Landroid/net/Uri;
    //   184: aload_0
    //   185: getfield 176	ctt:i	I
    //   188: invokestatic 499	com/google/android/apps/hangouts/content/EsProvider:a	(Landroid/net/Uri;I)Landroid/net/Uri;
    //   191: iconst_1
    //   192: invokestatic 501	com/google/android/apps/hangouts/content/EsProvider:b	(Landroid/net/Uri;I)Landroid/net/Uri;
    //   195: astore_1
    //   196: aload_0
    //   197: getfield 174	ctt:h	Landroid/content/ContentResolver;
    //   200: aload_1
    //   201: getstatic 115	ctt:c	[Ljava/lang/String;
    //   204: ldc_w 503
    //   207: iconst_1
    //   208: anewarray 50	java/lang/String
    //   211: dup
    //   212: iconst_0
    //   213: aload_0
    //   214: getfield 176	ctt:i	I
    //   217: invokestatic 508	dvd:e	(I)Lbfd;
    //   220: invokevirtual 513	bfd:b	()Lczb;
    //   223: getfield 516	czb:b	Ljava/lang/String;
    //   226: aastore
    //   227: aconst_null
    //   228: invokevirtual 522	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   231: astore_1
    //   232: aload_1
    //   233: invokeinterface 527 1 0
    //   238: ifeq +112 -> 350
    //   241: aload_1
    //   242: iconst_1
    //   243: invokeinterface 531 2 0
    //   248: astore_2
    //   249: aload_3
    //   250: aload_2
    //   251: invokeinterface 533 2 0
    //   256: ifne -24 -> 232
    //   259: aload_1
    //   260: iconst_0
    //   261: invokeinterface 531 2 0
    //   266: astore 5
    //   268: aload_1
    //   269: iconst_2
    //   270: invokeinterface 531 2 0
    //   275: astore 6
    //   277: new 260	ctu
    //   280: dup
    //   281: invokespecial 534	ctu:<init>	()V
    //   284: astore 7
    //   286: aload 7
    //   288: aload 6
    //   290: putfield 399	ctu:g	Ljava/lang/String;
    //   293: aload 7
    //   295: aload 5
    //   297: putfield 391	ctu:f	Ljava/lang/String;
    //   300: aload 7
    //   302: aload_2
    //   303: putfield 483	ctu:b	Ljava/lang/String;
    //   306: aload 4
    //   308: aload 7
    //   310: invokeinterface 251 2 0
    //   315: pop
    //   316: aload_3
    //   317: aload 7
    //   319: getfield 483	ctu:b	Ljava/lang/String;
    //   322: aload 7
    //   324: invokeinterface 491 3 0
    //   329: pop
    //   330: goto -98 -> 232
    //   333: astore_3
    //   334: aload_1
    //   335: astore_2
    //   336: aload_3
    //   337: astore_1
    //   338: aload_2
    //   339: ifnull +9 -> 348
    //   342: aload_2
    //   343: invokeinterface 537 1 0
    //   348: aload_1
    //   349: athrow
    //   350: aload_1
    //   351: ifnull +9 -> 360
    //   354: aload_1
    //   355: invokeinterface 537 1 0
    //   360: getstatic 496	com/google/android/apps/hangouts/content/EsProvider:j	Landroid/net/Uri;
    //   363: aload_0
    //   364: getfield 176	ctt:i	I
    //   367: invokestatic 499	com/google/android/apps/hangouts/content/EsProvider:a	(Landroid/net/Uri;I)Landroid/net/Uri;
    //   370: iconst_0
    //   371: invokestatic 501	com/google/android/apps/hangouts/content/EsProvider:b	(Landroid/net/Uri;I)Landroid/net/Uri;
    //   374: astore_2
    //   375: aload_0
    //   376: getfield 174	ctt:h	Landroid/content/ContentResolver;
    //   379: aload_2
    //   380: getstatic 115	ctt:c	[Ljava/lang/String;
    //   383: ldc_w 503
    //   386: iconst_1
    //   387: anewarray 50	java/lang/String
    //   390: dup
    //   391: iconst_0
    //   392: aload_0
    //   393: getfield 176	ctt:i	I
    //   396: invokestatic 508	dvd:e	(I)Lbfd;
    //   399: invokevirtual 513	bfd:b	()Lczb;
    //   402: getfield 516	czb:b	Ljava/lang/String;
    //   405: aastore
    //   406: aconst_null
    //   407: invokevirtual 522	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   410: astore_2
    //   411: aload_2
    //   412: astore_1
    //   413: aload_2
    //   414: invokeinterface 527 1 0
    //   419: ifeq +187 -> 606
    //   422: aload_2
    //   423: astore_1
    //   424: aload_2
    //   425: iconst_1
    //   426: invokeinterface 531 2 0
    //   431: astore 5
    //   433: aload_2
    //   434: astore_1
    //   435: aload_3
    //   436: aload 5
    //   438: invokeinterface 533 2 0
    //   443: ifeq +64 -> 507
    //   446: aload_2
    //   447: astore_1
    //   448: aload_3
    //   449: aload 5
    //   451: invokeinterface 212 2 0
    //   456: invokeinterface 215 1 0
    //   461: astore 5
    //   463: aload_2
    //   464: astore_1
    //   465: aload 5
    //   467: invokeinterface 205 1 0
    //   472: ifeq -61 -> 411
    //   475: aload_2
    //   476: astore_1
    //   477: aload 5
    //   479: invokeinterface 209 1 0
    //   484: checkcast 260	ctu
    //   487: iconst_1
    //   488: putfield 403	ctu:h	Z
    //   491: goto -28 -> 463
    //   494: astore_2
    //   495: aload_1
    //   496: ifnull +9 -> 505
    //   499: aload_1
    //   500: invokeinterface 537 1 0
    //   505: aload_2
    //   506: athrow
    //   507: aload_2
    //   508: astore_1
    //   509: aload_2
    //   510: iconst_0
    //   511: invokeinterface 531 2 0
    //   516: astore 6
    //   518: aload_2
    //   519: astore_1
    //   520: aload_2
    //   521: iconst_2
    //   522: invokeinterface 531 2 0
    //   527: astore 7
    //   529: aload_2
    //   530: astore_1
    //   531: new 260	ctu
    //   534: dup
    //   535: invokespecial 534	ctu:<init>	()V
    //   538: astore 8
    //   540: aload_2
    //   541: astore_1
    //   542: aload 8
    //   544: aload 7
    //   546: putfield 399	ctu:g	Ljava/lang/String;
    //   549: aload_2
    //   550: astore_1
    //   551: aload 8
    //   553: aload 6
    //   555: putfield 391	ctu:f	Ljava/lang/String;
    //   558: aload_2
    //   559: astore_1
    //   560: aload 8
    //   562: aload 5
    //   564: putfield 483	ctu:b	Ljava/lang/String;
    //   567: aload_2
    //   568: astore_1
    //   569: aload 8
    //   571: iconst_1
    //   572: putfield 403	ctu:h	Z
    //   575: aload_2
    //   576: astore_1
    //   577: aload 4
    //   579: aload 8
    //   581: invokeinterface 251 2 0
    //   586: pop
    //   587: aload_2
    //   588: astore_1
    //   589: aload_3
    //   590: aload 8
    //   592: getfield 483	ctu:b	Ljava/lang/String;
    //   595: aload 8
    //   597: invokeinterface 491 3 0
    //   602: pop
    //   603: goto -192 -> 411
    //   606: aload_2
    //   607: ifnull +9 -> 616
    //   610: aload_2
    //   611: invokeinterface 537 1 0
    //   616: aload 4
    //   618: areturn
    //   619: astore_1
    //   620: aconst_null
    //   621: astore_2
    //   622: goto -284 -> 338
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	625	0	this	ctt
    //   22	567	1	localObject1	Object
    //   619	1	1	localObject2	Object
    //   41	435	2	localObject3	Object
    //   494	117	2	localObject4	Object
    //   621	1	2	localObject5	Object
    //   7	310	3	localkrs	krs
    //   333	257	3	localObject6	Object
    //   56	561	4	localObject7	Object
    //   78	485	5	localObject8	Object
    //   275	279	6	str	String
    //   284	261	7	localObject9	Object
    //   538	58	8	localctu	ctu
    // Exception table:
    //   from	to	target	type
    //   232	330	333	finally
    //   375	411	494	finally
    //   413	422	494	finally
    //   424	433	494	finally
    //   435	446	494	finally
    //   448	463	494	finally
    //   465	475	494	finally
    //   477	491	494	finally
    //   509	518	494	finally
    //   520	529	494	finally
    //   531	540	494	finally
    //   542	549	494	finally
    //   551	558	494	finally
    //   560	567	494	finally
    //   569	575	494	finally
    //   577	587	494	finally
    //   589	603	494	finally
    //   196	232	619	finally
  }
  
  private void e()
  {
    Object localObject1 = ((bhg)ilh.a(d, bhg.class)).a(i).b();
    Object localObject4 = new ArrayList();
    Object localObject2 = new ArrayList();
    Object localObject3 = n.values().iterator();
    Object localObject5;
    while (((Iterator)localObject3).hasNext())
    {
      localObject5 = (ctu)((Iterator)localObject3).next();
      if (((ctu)localObject5).a()) {
        x += 1;
      }
      if (m.containsKey(c))
      {
        if (!((ctu)localObject5).equals((ctu)m.remove(c))) {
          ((List)localObject4).add(localObject5);
        } else {
          t += 1;
        }
      }
      else {
        ((List)localObject2).add(localObject5);
      }
    }
    localObject3 = new ArrayList(m.values());
    int i1 = t;
    ezi.c("Babel", 53 + "Leaving " + i1 + " existing mergedContacts unchanged", new Object[0]);
    i1 = 0;
    while (i1 < ((List)localObject4).size())
    {
      localObject5 = ((List)localObject4).subList(i1, Math.min(i1 + 25, ((List)localObject4).size()));
      ((bha)localObject1).a();
      a((bha)localObject1, (Collection)localObject5);
      b((bha)localObject1, (Collection)localObject5);
      ((bha)localObject1).b();
      ((bha)localObject1).c();
      r += ((List)localObject5).size();
      ezj localezj = p;
      i2 = ((List)localObject5).size();
      localezj.a(33 + "updateMergedContacts(" + i2 + ")");
      h.notifyChange(ctr.d, null);
      i1 += 25;
    }
    i1 = r;
    ezi.c("Babel", 43 + "Updated " + i1 + " existing mergedContacts", new Object[0]);
    i1 = 0;
    while (i1 < ((List)localObject2).size())
    {
      localObject4 = ((List)localObject2).subList(i1, Math.min(i1 + 25, ((List)localObject2).size()));
      ((bha)localObject1).a();
      b((bha)localObject1, (Collection)localObject4);
      ((bha)localObject1).b();
      ((bha)localObject1).c();
      q += ((List)localObject4).size();
      localObject5 = p;
      i2 = ((List)localObject4).size();
      ((ezj)localObject5).a(33 + "insertMergedContacts(" + i2 + ")");
      h.notifyChange(ctr.d, null);
      i1 += 25;
    }
    i1 = q;
    ezi.c("Babel", 39 + "Inserted " + i1 + " new mergedContacts", new Object[0]);
    i1 = 0;
    while (i1 < ((List)localObject3).size())
    {
      localObject2 = ((List)localObject3).subList(i1, Math.min(i1 + 25, ((List)localObject3).size()));
      ((bha)localObject1).a();
      a((bha)localObject1, (Collection)localObject2);
      ((bha)localObject1).b();
      ((bha)localObject1).c();
      s += ((List)localObject2).size();
      localObject4 = p;
      i2 = ((List)localObject2).size();
      ((ezj)localObject4).a(33 + "deleteMergedContacts(" + i2 + ")");
      h.notifyChange(ctr.d, null);
      i1 += 25;
    }
    i1 = s;
    ezi.c("Babel", 38 + "Deleted " + i1 + " old mergedContacts", new Object[0]);
    ((bha)localObject1).a();
    ((bha)localObject1).a("merged_contacts", "contact_lookup_key IS NULL OR contact_lookup_key = ''", null);
    p.a("delete old suggested contacts");
    b((bha)localObject1, o);
    x += o.size();
    ((bha)localObject1).b();
    ((bha)localObject1).c();
    p.a("write new suggested contacts");
    h.notifyChange(ctr.d, null);
    i1 = u;
    int i2 = v;
    int i3 = w;
    ezi.c("Babel", 80 + "Persisted " + i1 + " phone numbers, " + i2 + " emails, and " + i3 + " gaiaIds", new Object[0]);
    i2 = i;
    i1 = n.size();
    i1 = o.size() + i1;
    localObject1 = (hba)ilh.a(d, hba.class);
    if (i1 == 0)
    {
      ((hba)localObject1).a(i2).a(2568).a(TimeUnit.DAYS);
      return;
    }
    ((hba)localObject1).a(i2).a(2549).a(Integer.valueOf(i1)).a(TimeUnit.DAYS);
    if (x == 0) {
      if (i1 <= 20) {
        i1 = 2569;
      }
    }
    for (;;)
    {
      ((hba)localObject1).a(i2).a(i1).a(Integer.valueOf(x)).a(TimeUnit.DAYS);
      return;
      if (i1 <= 100)
      {
        i1 = 2743;
      }
      else
      {
        i1 = 2745;
        continue;
        if (i1 <= 20) {
          i1 = 2550;
        } else if (i1 <= 100) {
          i1 = 2742;
        } else {
          i1 = 2744;
        }
      }
    }
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 10
    //   3: ldc_w 694
    //   6: aload_0
    //   7: getfield 696	ctt:y	Z
    //   10: invokestatic 701	hbs:b	(Ljava/lang/String;Z)V
    //   13: aload_0
    //   14: iconst_1
    //   15: putfield 696	ctt:y	Z
    //   18: aload_0
    //   19: getfield 172	ctt:d	Landroid/content/Context;
    //   22: ldc_w 703
    //   25: invokestatic 545	ilh:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   28: checkcast 703	dcj
    //   31: astore 8
    //   33: aload 8
    //   35: ldc_w 705
    //   38: invokeinterface 708 2 0
    //   43: ifne +16 -> 59
    //   46: aload 8
    //   48: ldc_w 710
    //   51: invokeinterface 708 2 0
    //   56: ifeq +2098 -> 2154
    //   59: iconst_1
    //   60: istore_2
    //   61: aload_0
    //   62: getfield 172	ctt:d	Landroid/content/Context;
    //   65: ldc_w 712
    //   68: invokestatic 545	ilh:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   71: checkcast 712	hpz
    //   74: aload_0
    //   75: getfield 176	ctt:i	I
    //   78: invokeinterface 715 2 0
    //   83: astore 12
    //   85: invokestatic 188	java/lang/System:currentTimeMillis	()J
    //   88: lstore 4
    //   90: aload 12
    //   92: ldc_w 717
    //   95: lconst_0
    //   96: invokevirtual 722	hqc:a	(Ljava/lang/String;J)J
    //   99: lstore 6
    //   101: iload_2
    //   102: aload 12
    //   104: ldc_w 724
    //   107: invokevirtual 726	hqc:d	(Ljava/lang/String;)Z
    //   110: if_icmpne +23 -> 133
    //   113: lload 4
    //   115: lload 6
    //   117: lsub
    //   118: getstatic 134	ctt:g	J
    //   121: lcmp
    //   122: ifge +11 -> 133
    //   125: aload_0
    //   126: getfield 178	ctt:j	Z
    //   129: ifne +4 -> 133
    //   132: return
    //   133: aload_0
    //   134: new 625	ezj
    //   137: dup
    //   138: ldc_w 728
    //   141: invokespecial 729	ezj:<init>	(Ljava/lang/String;)V
    //   144: putfield 619	ctt:p	Lezj;
    //   147: new 165	hq
    //   150: dup
    //   151: invokespecial 166	hq:<init>	()V
    //   154: astore 13
    //   156: getstatic 731	ctr:c	Landroid/net/Uri;
    //   159: invokevirtual 737	android/net/Uri:buildUpon	()Landroid/net/Uri$Builder;
    //   162: astore 8
    //   164: aload 8
    //   166: ldc_w 739
    //   169: aload_0
    //   170: getfield 176	ctt:i	I
    //   173: invokestatic 741	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   176: invokevirtual 747	android/net/Uri$Builder:appendQueryParameter	(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   179: pop
    //   180: aload_0
    //   181: getfield 174	ctt:h	Landroid/content/ContentResolver;
    //   184: aload 8
    //   186: invokevirtual 751	android/net/Uri$Builder:build	()Landroid/net/Uri;
    //   189: getstatic 753	ctr:f	[Ljava/lang/String;
    //   192: aconst_null
    //   193: aconst_null
    //   194: aconst_null
    //   195: invokevirtual 522	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   198: astore 8
    //   200: aload 8
    //   202: invokeinterface 527 1 0
    //   207: ifeq +201 -> 408
    //   210: new 260	ctu
    //   213: dup
    //   214: invokespecial 534	ctu:<init>	()V
    //   217: astore 9
    //   219: aload 9
    //   221: aload 8
    //   223: iconst_0
    //   224: invokeinterface 757 2 0
    //   229: putfield 759	ctu:a	J
    //   232: aload 9
    //   234: aload 8
    //   236: iconst_1
    //   237: invokeinterface 531 2 0
    //   242: putfield 262	ctu:c	Ljava/lang/String;
    //   245: aload 9
    //   247: aload 8
    //   249: iconst_2
    //   250: invokeinterface 757 2 0
    //   255: invokestatic 459	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   258: putfield 384	ctu:d	Ljava/lang/Long;
    //   261: aload 9
    //   263: aload 8
    //   265: iconst_3
    //   266: invokeinterface 757 2 0
    //   271: invokestatic 459	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   274: putfield 389	ctu:e	Ljava/lang/Long;
    //   277: aload 9
    //   279: aload 8
    //   281: iconst_4
    //   282: invokeinterface 531 2 0
    //   287: putfield 391	ctu:f	Ljava/lang/String;
    //   290: aload 9
    //   292: aload 8
    //   294: iconst_5
    //   295: invokeinterface 531 2 0
    //   300: putfield 399	ctu:g	Ljava/lang/String;
    //   303: aload 9
    //   305: aload 8
    //   307: bipush 6
    //   309: invokeinterface 763 2 0
    //   314: invokestatic 767	ezc:d	(I)Z
    //   317: putfield 403	ctu:h	Z
    //   320: aload 9
    //   322: getfield 262	ctu:c	Ljava/lang/String;
    //   325: invokestatic 227	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   328: ifne +20 -> 348
    //   331: aload_0
    //   332: getfield 168	ctt:m	Ljava/util/Map;
    //   335: aload 9
    //   337: getfield 262	ctu:c	Ljava/lang/String;
    //   340: aload 9
    //   342: invokeinterface 770 3 0
    //   347: pop
    //   348: aload 13
    //   350: aload 9
    //   352: getfield 759	ctu:a	J
    //   355: invokestatic 459	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   358: aload 9
    //   360: invokeinterface 770 3 0
    //   365: pop
    //   366: goto -166 -> 200
    //   369: astore 10
    //   371: aload 8
    //   373: astore 9
    //   375: aload 10
    //   377: astore 8
    //   379: aload 9
    //   381: ifnull +10 -> 391
    //   384: aload 9
    //   386: invokeinterface 537 1 0
    //   391: aload 8
    //   393: athrow
    //   394: astore 8
    //   396: ldc_w 574
    //   399: ldc_w 772
    //   402: aload 8
    //   404: invokestatic 775	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   407: return
    //   408: aload 8
    //   410: ifnull +10 -> 420
    //   413: aload 8
    //   415: invokeinterface 537 1 0
    //   420: aload 8
    //   422: astore 9
    //   424: getstatic 777	ctr:e	Landroid/net/Uri;
    //   427: invokevirtual 737	android/net/Uri:buildUpon	()Landroid/net/Uri$Builder;
    //   430: astore 11
    //   432: aload 8
    //   434: astore 9
    //   436: aload 11
    //   438: ldc_w 739
    //   441: aload_0
    //   442: getfield 176	ctt:i	I
    //   445: invokestatic 741	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   448: invokevirtual 747	android/net/Uri$Builder:appendQueryParameter	(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   451: pop
    //   452: aload 8
    //   454: astore 9
    //   456: aload_0
    //   457: getfield 174	ctt:h	Landroid/content/ContentResolver;
    //   460: aload 11
    //   462: invokevirtual 751	android/net/Uri$Builder:build	()Landroid/net/Uri;
    //   465: getstatic 779	ctr:h	[Ljava/lang/String;
    //   468: aconst_null
    //   469: aconst_null
    //   470: aconst_null
    //   471: invokevirtual 522	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   474: astore 11
    //   476: aload 11
    //   478: astore 9
    //   480: aload 11
    //   482: invokeinterface 527 1 0
    //   487: ifeq +300 -> 787
    //   490: aload 11
    //   492: astore 9
    //   494: aload 13
    //   496: aload 11
    //   498: iconst_1
    //   499: invokeinterface 757 2 0
    //   504: invokestatic 459	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   507: invokeinterface 782 2 0
    //   512: checkcast 260	ctu
    //   515: astore 8
    //   517: aload 11
    //   519: astore 9
    //   521: aload 11
    //   523: iconst_2
    //   524: invokeinterface 763 2 0
    //   529: istore_1
    //   530: iload_1
    //   531: ifne +164 -> 695
    //   534: aload 11
    //   536: astore 9
    //   538: new 422	ctz
    //   541: dup
    //   542: invokespecial 783	ctz:<init>	()V
    //   545: astore 14
    //   547: aload 11
    //   549: astore 9
    //   551: aload 11
    //   553: aload 14
    //   555: invokestatic 786	ctz:a	(Landroid/database/Cursor;Lctv;)V
    //   558: aload 11
    //   560: astore 9
    //   562: aload 14
    //   564: getfield 436	ctz:b	Ljava/lang/String;
    //   567: invokestatic 227	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   570: ifne +36 -> 606
    //   573: aload 11
    //   575: astore 9
    //   577: aload 14
    //   579: invokevirtual 787	ctz:a	()Z
    //   582: ifne +24 -> 606
    //   585: aload 11
    //   587: astore 9
    //   589: aload_0
    //   590: getfield 163	ctt:l	Lkwt;
    //   593: aload 14
    //   595: getfield 436	ctz:b	Ljava/lang/String;
    //   598: aload 14
    //   600: invokeinterface 491 3 0
    //   605: pop
    //   606: aload 8
    //   608: ifnull -132 -> 476
    //   611: aload 11
    //   613: astore 9
    //   615: aload 8
    //   617: getfield 416	ctu:i	Ljava/util/Map;
    //   620: astore 15
    //   622: aload 11
    //   624: astore 9
    //   626: aload 14
    //   628: getfield 436	ctz:b	Ljava/lang/String;
    //   631: ifnull +50 -> 681
    //   634: aload 11
    //   636: astore 9
    //   638: aload 14
    //   640: getfield 436	ctz:b	Ljava/lang/String;
    //   643: astore 8
    //   645: aload 11
    //   647: astore 9
    //   649: aload 15
    //   651: aload 8
    //   653: aload 14
    //   655: invokeinterface 770 3 0
    //   660: pop
    //   661: goto -185 -> 476
    //   664: astore 8
    //   666: aload 9
    //   668: ifnull +10 -> 678
    //   671: aload 9
    //   673: invokeinterface 537 1 0
    //   678: aload 8
    //   680: athrow
    //   681: aload 11
    //   683: astore 9
    //   685: aload 14
    //   687: getfield 431	ctz:a	Ljava/lang/String;
    //   690: astore 8
    //   692: goto -47 -> 645
    //   695: iload_1
    //   696: iconst_1
    //   697: if_icmpne -221 -> 476
    //   700: aload 11
    //   702: astore 9
    //   704: new 469	ctw
    //   707: dup
    //   708: invokespecial 788	ctw:<init>	()V
    //   711: astore 14
    //   713: aload 11
    //   715: astore 9
    //   717: aload 11
    //   719: aload 14
    //   721: invokestatic 789	ctw:a	(Landroid/database/Cursor;Lctv;)V
    //   724: aload 11
    //   726: astore 9
    //   728: aload 14
    //   730: invokevirtual 790	ctw:a	()Z
    //   733: ifne +24 -> 757
    //   736: aload 11
    //   738: astore 9
    //   740: aload_0
    //   741: getfield 161	ctt:k	Lkwt;
    //   744: aload 14
    //   746: getfield 470	ctw:a	Ljava/lang/String;
    //   749: aload 14
    //   751: invokeinterface 491 3 0
    //   756: pop
    //   757: aload 8
    //   759: ifnull -283 -> 476
    //   762: aload 11
    //   764: astore 9
    //   766: aload 8
    //   768: getfield 467	ctu:j	Ljava/util/Map;
    //   771: aload 14
    //   773: getfield 470	ctw:a	Ljava/lang/String;
    //   776: aload 14
    //   778: invokeinterface 770 3 0
    //   783: pop
    //   784: goto -308 -> 476
    //   787: aload 11
    //   789: ifnull +10 -> 799
    //   792: aload 11
    //   794: invokeinterface 537 1 0
    //   799: aload_0
    //   800: getfield 619	ctt:p	Lezj;
    //   803: ldc_w 792
    //   806: invokevirtual 627	ezj:a	(Ljava/lang/String;)V
    //   809: iload_2
    //   810: ifeq +50 -> 860
    //   813: aload_0
    //   814: getfield 174	ctt:h	Landroid/content/ContentResolver;
    //   817: getstatic 797	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   820: getstatic 72	ctt:a	[Ljava/lang/String;
    //   823: getstatic 107	ctt:e	Ljava/lang/String;
    //   826: aconst_null
    //   827: aconst_null
    //   828: invokevirtual 522	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   831: astore 9
    //   833: aload 9
    //   835: ifnonnull +245 -> 1080
    //   838: aload 9
    //   840: ifnull +10 -> 850
    //   843: aload 9
    //   845: invokeinterface 537 1 0
    //   850: aload_0
    //   851: getfield 619	ctt:p	Lezj;
    //   854: ldc_w 799
    //   857: invokevirtual 627	ezj:a	(Ljava/lang/String;)V
    //   860: aload_0
    //   861: getfield 172	ctt:d	Landroid/content/Context;
    //   864: ldc_w 801
    //   867: invokestatic 545	ilh:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   870: checkcast 801	eot
    //   873: aload_0
    //   874: getfield 176	ctt:i	I
    //   877: invokeinterface 803 2 0
    //   882: ifne +1254 -> 2136
    //   885: aload_0
    //   886: invokespecial 804	ctt:b	()V
    //   889: aload_0
    //   890: getfield 619	ctt:p	Lezj;
    //   893: ldc_w 806
    //   896: invokevirtual 627	ezj:a	(Ljava/lang/String;)V
    //   899: aload_0
    //   900: invokespecial 807	ctt:c	()V
    //   903: aload_0
    //   904: getfield 619	ctt:p	Lezj;
    //   907: ldc_w 809
    //   910: invokevirtual 627	ezj:a	(Ljava/lang/String;)V
    //   913: aload_0
    //   914: aload_0
    //   915: invokespecial 811	ctt:d	()Ljava/util/List;
    //   918: putfield 661	ctt:o	Ljava/util/List;
    //   921: aload_0
    //   922: getfield 619	ctt:p	Lezj;
    //   925: ldc_w 813
    //   928: invokevirtual 627	ezj:a	(Ljava/lang/String;)V
    //   931: aload_0
    //   932: invokespecial 815	ctt:e	()V
    //   935: invokestatic 188	java/lang/System:currentTimeMillis	()J
    //   938: lstore 4
    //   940: aload 12
    //   942: ldc_w 717
    //   945: lload 4
    //   947: invokevirtual 818	hqc:b	(Ljava/lang/String;J)Lhqc;
    //   950: pop
    //   951: aload 12
    //   953: ldc_w 724
    //   956: iload_2
    //   957: invokevirtual 821	hqc:b	(Ljava/lang/String;Z)Lhqc;
    //   960: pop
    //   961: aload 12
    //   963: invokevirtual 823	hqc:d	()I
    //   966: pop
    //   967: ldc_w 717
    //   970: invokestatic 265	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   973: astore 8
    //   975: ldc_w 574
    //   978: new 576	java/lang/StringBuilder
    //   981: dup
    //   982: aload 8
    //   984: invokestatic 265	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   987: invokevirtual 826	java/lang/String:length	()I
    //   990: bipush 46
    //   992: iadd
    //   993: invokespecial 577	java/lang/StringBuilder:<init>	(I)V
    //   996: ldc_w 828
    //   999: invokevirtual 583	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1002: lload 4
    //   1004: invokevirtual 831	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1007: ldc_w 833
    //   1010: invokevirtual 583	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1013: aload 8
    //   1015: invokevirtual 583	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1018: ldc_w 835
    //   1021: invokevirtual 583	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1024: invokevirtual 591	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1027: iconst_0
    //   1028: anewarray 4	java/lang/Object
    //   1031: invokestatic 596	ezi:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   1034: return
    //   1035: aload 9
    //   1037: astore 10
    //   1039: aload 9
    //   1041: iconst_5
    //   1042: invokeinterface 531 2 0
    //   1047: astore 8
    //   1049: aload 9
    //   1051: astore 10
    //   1053: ldc 99
    //   1055: aload 8
    //   1057: invokevirtual 836	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1060: ifeq +175 -> 1235
    //   1063: aload 9
    //   1065: astore 10
    //   1067: aload 11
    //   1069: aload 9
    //   1071: iconst_4
    //   1072: invokeinterface 531 2 0
    //   1077: putfield 399	ctu:g	Ljava/lang/String;
    //   1080: aload 9
    //   1082: astore 10
    //   1084: aload 9
    //   1086: invokeinterface 527 1 0
    //   1091: ifeq +932 -> 2023
    //   1094: aload 9
    //   1096: astore 10
    //   1098: aload 9
    //   1100: iconst_0
    //   1101: invokeinterface 531 2 0
    //   1106: astore 8
    //   1108: aload 9
    //   1110: astore 10
    //   1112: aload_0
    //   1113: getfield 170	ctt:n	Ljava/util/Map;
    //   1116: aload 8
    //   1118: invokeinterface 782 2 0
    //   1123: checkcast 260	ctu
    //   1126: astore 11
    //   1128: aload 11
    //   1130: ifnonnull -95 -> 1035
    //   1133: aload 9
    //   1135: astore 10
    //   1137: new 260	ctu
    //   1140: dup
    //   1141: invokespecial 534	ctu:<init>	()V
    //   1144: astore 11
    //   1146: aload 9
    //   1148: astore 10
    //   1150: aload 11
    //   1152: aload 8
    //   1154: putfield 262	ctu:c	Ljava/lang/String;
    //   1157: aload 9
    //   1159: astore 10
    //   1161: aload_0
    //   1162: getfield 170	ctt:n	Ljava/util/Map;
    //   1165: aload 8
    //   1167: aload 11
    //   1169: invokeinterface 770 3 0
    //   1174: pop
    //   1175: aload 9
    //   1177: astore 10
    //   1179: aload 11
    //   1181: aload 9
    //   1183: iconst_1
    //   1184: invokeinterface 757 2 0
    //   1189: invokestatic 459	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1192: putfield 384	ctu:d	Ljava/lang/Long;
    //   1195: aload 9
    //   1197: astore 10
    //   1199: aload 11
    //   1201: aload 9
    //   1203: iconst_3
    //   1204: invokeinterface 757 2 0
    //   1209: invokestatic 459	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1212: putfield 389	ctu:e	Ljava/lang/Long;
    //   1215: aload 9
    //   1217: astore 10
    //   1219: aload 11
    //   1221: aload 9
    //   1223: iconst_2
    //   1224: invokeinterface 531 2 0
    //   1229: putfield 391	ctu:f	Ljava/lang/String;
    //   1232: goto -197 -> 1035
    //   1235: aload 9
    //   1237: astore 10
    //   1239: ldc 95
    //   1241: aload 8
    //   1243: invokevirtual 836	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1246: ifeq +424 -> 1670
    //   1249: aload 9
    //   1251: astore 10
    //   1253: aload_0
    //   1254: getfield 172	ctt:d	Landroid/content/Context;
    //   1257: astore 8
    //   1259: aload 9
    //   1261: astore 10
    //   1263: aload 9
    //   1265: getstatic 91	ctt:b	Lksm;
    //   1268: ldc 64
    //   1270: invokevirtual 839	ksm:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1273: checkcast 79	java/lang/Integer
    //   1276: iconst_0
    //   1277: invokestatic 842	aal:a	(Ljava/lang/Integer;I)I
    //   1280: invokeinterface 531 2 0
    //   1285: astore 13
    //   1287: aload 9
    //   1289: astore 10
    //   1291: aload 9
    //   1293: getstatic 91	ctt:b	Lksm;
    //   1296: ldc 70
    //   1298: invokevirtual 839	ksm:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1301: checkcast 79	java/lang/Integer
    //   1304: iconst_0
    //   1305: invokestatic 842	aal:a	(Ljava/lang/Integer;I)I
    //   1308: invokeinterface 531 2 0
    //   1313: astore 14
    //   1315: aload 9
    //   1317: astore 10
    //   1319: aload 9
    //   1321: getstatic 91	ctt:b	Lksm;
    //   1324: ldc 66
    //   1326: invokevirtual 839	ksm:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1329: checkcast 79	java/lang/Integer
    //   1332: iconst_0
    //   1333: invokestatic 842	aal:a	(Ljava/lang/Integer;I)I
    //   1336: invokeinterface 763 2 0
    //   1341: istore_1
    //   1342: iload_1
    //   1343: ifne +241 -> 1584
    //   1346: aload 9
    //   1348: astore 10
    //   1350: aload 9
    //   1352: getstatic 91	ctt:b	Lksm;
    //   1355: ldc 68
    //   1357: invokevirtual 839	ksm:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1360: checkcast 79	java/lang/Integer
    //   1363: iconst_0
    //   1364: invokestatic 842	aal:a	(Ljava/lang/Integer;I)I
    //   1367: invokeinterface 531 2 0
    //   1372: astore 8
    //   1374: aload 9
    //   1376: astore 10
    //   1378: aload 13
    //   1380: invokestatic 844	ezm:h	(Ljava/lang/String;)Ljava/lang/String;
    //   1383: astore 16
    //   1385: aload 9
    //   1387: astore 10
    //   1389: new 422	ctz
    //   1392: dup
    //   1393: invokespecial 783	ctz:<init>	()V
    //   1396: astore 15
    //   1398: aload 9
    //   1400: astore 10
    //   1402: aload 15
    //   1404: aload 13
    //   1406: putfield 431	ctz:a	Ljava/lang/String;
    //   1409: aload 9
    //   1411: astore 10
    //   1413: aload 15
    //   1415: aload 14
    //   1417: putfield 436	ctz:b	Ljava/lang/String;
    //   1420: aload 9
    //   1422: astore 10
    //   1424: aload 15
    //   1426: aload 16
    //   1428: putfield 439	ctz:c	Ljava/lang/String;
    //   1431: aload 9
    //   1433: astore 10
    //   1435: aload 15
    //   1437: aload 8
    //   1439: putfield 442	ctz:d	Ljava/lang/String;
    //   1442: aload 9
    //   1444: astore 10
    //   1446: aload 14
    //   1448: invokestatic 227	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1451: ifne +716 -> 2167
    //   1454: iconst_1
    //   1455: istore_3
    //   1456: aload 9
    //   1458: astore 10
    //   1460: aload 15
    //   1462: iload_3
    //   1463: putfield 449	ctz:e	Z
    //   1466: aload 9
    //   1468: astore 10
    //   1470: aload 15
    //   1472: invokevirtual 787	ctz:a	()Z
    //   1475: ifne -395 -> 1080
    //   1478: aload 9
    //   1480: astore 10
    //   1482: aload 11
    //   1484: getfield 416	ctu:i	Ljava/util/Map;
    //   1487: astore 11
    //   1489: aload 9
    //   1491: astore 10
    //   1493: aload 15
    //   1495: getfield 436	ctz:b	Ljava/lang/String;
    //   1498: ifnull +158 -> 1656
    //   1501: aload 9
    //   1503: astore 10
    //   1505: aload 15
    //   1507: getfield 436	ctz:b	Ljava/lang/String;
    //   1510: astore 8
    //   1512: aload 9
    //   1514: astore 10
    //   1516: aload 11
    //   1518: aload 8
    //   1520: aload 15
    //   1522: invokeinterface 770 3 0
    //   1527: pop
    //   1528: aload 9
    //   1530: astore 10
    //   1532: aload 15
    //   1534: getfield 436	ctz:b	Ljava/lang/String;
    //   1537: invokestatic 227	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1540: ifne -460 -> 1080
    //   1543: aload 9
    //   1545: astore 10
    //   1547: aload_0
    //   1548: getfield 163	ctt:l	Lkwt;
    //   1551: aload 15
    //   1553: getfield 436	ctz:b	Ljava/lang/String;
    //   1556: aload 15
    //   1558: invokeinterface 491 3 0
    //   1563: pop
    //   1564: goto -484 -> 1080
    //   1567: astore 8
    //   1569: aload 10
    //   1571: ifnull +10 -> 1581
    //   1574: aload 10
    //   1576: invokeinterface 537 1 0
    //   1581: aload 8
    //   1583: athrow
    //   1584: aload 9
    //   1586: astore 10
    //   1588: ldc 95
    //   1590: ldc 95
    //   1592: invokevirtual 836	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1595: ifeq +25 -> 1620
    //   1598: aload 9
    //   1600: astore 10
    //   1602: aload 8
    //   1604: invokevirtual 850	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   1607: iload_1
    //   1608: aconst_null
    //   1609: invokestatic 856	android/provider/ContactsContract$CommonDataKinds$Phone:getTypeLabel	(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    //   1612: checkcast 50	java/lang/String
    //   1615: astore 8
    //   1617: goto -243 -> 1374
    //   1620: aload 9
    //   1622: astore 10
    //   1624: ldc 95
    //   1626: ldc 97
    //   1628: invokevirtual 836	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1631: ifeq +528 -> 2159
    //   1634: aload 9
    //   1636: astore 10
    //   1638: aload 8
    //   1640: invokevirtual 850	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   1643: iload_1
    //   1644: aconst_null
    //   1645: invokestatic 859	android/provider/ContactsContract$CommonDataKinds$Email:getTypeLabel	(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    //   1648: checkcast 50	java/lang/String
    //   1651: astore 8
    //   1653: goto -279 -> 1374
    //   1656: aload 9
    //   1658: astore 10
    //   1660: aload 15
    //   1662: getfield 431	ctz:a	Ljava/lang/String;
    //   1665: astore 8
    //   1667: goto -155 -> 1512
    //   1670: aload 9
    //   1672: astore 10
    //   1674: ldc 97
    //   1676: aload 8
    //   1678: invokevirtual 836	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1681: ifeq +267 -> 1948
    //   1684: aload 9
    //   1686: astore 10
    //   1688: aload_0
    //   1689: getfield 172	ctt:d	Landroid/content/Context;
    //   1692: astore 8
    //   1694: aload 9
    //   1696: astore 10
    //   1698: new 469	ctw
    //   1701: dup
    //   1702: invokespecial 788	ctw:<init>	()V
    //   1705: astore 13
    //   1707: aload 9
    //   1709: astore 10
    //   1711: aload 13
    //   1713: aload 9
    //   1715: getstatic 91	ctt:b	Lksm;
    //   1718: ldc 64
    //   1720: invokevirtual 839	ksm:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1723: checkcast 79	java/lang/Integer
    //   1726: iconst_0
    //   1727: invokestatic 842	aal:a	(Ljava/lang/Integer;I)I
    //   1730: invokeinterface 531 2 0
    //   1735: putfield 470	ctw:a	Ljava/lang/String;
    //   1738: aload 9
    //   1740: astore 10
    //   1742: aload 9
    //   1744: getstatic 91	ctt:b	Lksm;
    //   1747: ldc 66
    //   1749: invokevirtual 839	ksm:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1752: checkcast 79	java/lang/Integer
    //   1755: iconst_0
    //   1756: invokestatic 842	aal:a	(Ljava/lang/Integer;I)I
    //   1759: invokeinterface 763 2 0
    //   1764: istore_1
    //   1765: iload_1
    //   1766: ifne +110 -> 1876
    //   1769: aload 9
    //   1771: astore 10
    //   1773: aload 9
    //   1775: getstatic 91	ctt:b	Lksm;
    //   1778: ldc 68
    //   1780: invokevirtual 839	ksm:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1783: checkcast 79	java/lang/Integer
    //   1786: iconst_0
    //   1787: invokestatic 842	aal:a	(Ljava/lang/Integer;I)I
    //   1790: invokeinterface 531 2 0
    //   1795: astore 8
    //   1797: aload 9
    //   1799: astore 10
    //   1801: aload 13
    //   1803: aload 8
    //   1805: putfield 474	ctw:d	Ljava/lang/String;
    //   1808: aload 9
    //   1810: astore 10
    //   1812: aload 13
    //   1814: iconst_1
    //   1815: putfield 477	ctw:e	Z
    //   1818: aload 9
    //   1820: astore 10
    //   1822: aload 13
    //   1824: invokevirtual 790	ctw:a	()Z
    //   1827: ifne -747 -> 1080
    //   1830: aload 9
    //   1832: astore 10
    //   1834: aload_0
    //   1835: getfield 161	ctt:k	Lkwt;
    //   1838: aload 13
    //   1840: getfield 470	ctw:a	Ljava/lang/String;
    //   1843: aload 13
    //   1845: invokeinterface 491 3 0
    //   1850: pop
    //   1851: aload 9
    //   1853: astore 10
    //   1855: aload 11
    //   1857: getfield 467	ctu:j	Ljava/util/Map;
    //   1860: aload 13
    //   1862: getfield 470	ctw:a	Ljava/lang/String;
    //   1865: aload 13
    //   1867: invokeinterface 770 3 0
    //   1872: pop
    //   1873: goto -793 -> 1080
    //   1876: aload 9
    //   1878: astore 10
    //   1880: ldc 97
    //   1882: ldc 95
    //   1884: invokevirtual 836	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1887: ifeq +25 -> 1912
    //   1890: aload 9
    //   1892: astore 10
    //   1894: aload 8
    //   1896: invokevirtual 850	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   1899: iload_1
    //   1900: aconst_null
    //   1901: invokestatic 856	android/provider/ContactsContract$CommonDataKinds$Phone:getTypeLabel	(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    //   1904: checkcast 50	java/lang/String
    //   1907: astore 8
    //   1909: goto -112 -> 1797
    //   1912: aload 9
    //   1914: astore 10
    //   1916: ldc 97
    //   1918: ldc 97
    //   1920: invokevirtual 836	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1923: ifeq +249 -> 2172
    //   1926: aload 9
    //   1928: astore 10
    //   1930: aload 8
    //   1932: invokevirtual 850	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   1935: iload_1
    //   1936: aconst_null
    //   1937: invokestatic 859	android/provider/ContactsContract$CommonDataKinds$Email:getTypeLabel	(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    //   1940: checkcast 50	java/lang/String
    //   1943: astore 8
    //   1945: goto -148 -> 1797
    //   1948: aload 9
    //   1950: astore 10
    //   1952: aload 8
    //   1954: invokestatic 265	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1957: astore 8
    //   1959: aload 9
    //   1961: astore 10
    //   1963: aload 8
    //   1965: invokevirtual 826	java/lang/String:length	()I
    //   1968: ifeq +36 -> 2004
    //   1971: aload 9
    //   1973: astore 10
    //   1975: ldc_w 861
    //   1978: aload 8
    //   1980: invokevirtual 864	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   1983: astore 8
    //   1985: aload 9
    //   1987: astore 10
    //   1989: ldc_w 866
    //   1992: aload 8
    //   1994: iconst_0
    //   1995: anewarray 4	java/lang/Object
    //   1998: invokestatic 868	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   2001: goto -921 -> 1080
    //   2004: aload 9
    //   2006: astore 10
    //   2008: new 50	java/lang/String
    //   2011: dup
    //   2012: ldc_w 861
    //   2015: invokespecial 268	java/lang/String:<init>	(Ljava/lang/String;)V
    //   2018: astore 8
    //   2020: goto -35 -> 1985
    //   2023: aload 9
    //   2025: astore 10
    //   2027: aload_0
    //   2028: getfield 170	ctt:n	Ljava/util/Map;
    //   2031: invokeinterface 420 1 0
    //   2036: invokeinterface 215 1 0
    //   2041: astore 8
    //   2043: aload 9
    //   2045: astore 10
    //   2047: aload 8
    //   2049: invokeinterface 205 1 0
    //   2054: ifeq +67 -> 2121
    //   2057: aload 9
    //   2059: astore 10
    //   2061: aload 8
    //   2063: invokeinterface 209 1 0
    //   2068: checkcast 260	ctu
    //   2071: astore 11
    //   2073: aload 9
    //   2075: astore 10
    //   2077: aload 11
    //   2079: getfield 416	ctu:i	Ljava/util/Map;
    //   2082: invokeinterface 869 1 0
    //   2087: ifeq -44 -> 2043
    //   2090: aload 9
    //   2092: astore 10
    //   2094: aload 11
    //   2096: getfield 467	ctu:j	Ljava/util/Map;
    //   2099: invokeinterface 869 1 0
    //   2104: ifeq -61 -> 2043
    //   2107: aload 9
    //   2109: astore 10
    //   2111: aload 8
    //   2113: invokeinterface 871 1 0
    //   2118: goto -75 -> 2043
    //   2121: aload 9
    //   2123: ifnull -1273 -> 850
    //   2126: aload 9
    //   2128: invokeinterface 537 1 0
    //   2133: goto -1283 -> 850
    //   2136: aload_0
    //   2137: getstatic 876	java/util/Collections:EMPTY_LIST	Ljava/util/List;
    //   2140: putfield 661	ctt:o	Ljava/util/List;
    //   2143: goto -1212 -> 931
    //   2146: astore 8
    //   2148: aconst_null
    //   2149: astore 9
    //   2151: goto -1772 -> 379
    //   2154: iconst_0
    //   2155: istore_2
    //   2156: goto -2095 -> 61
    //   2159: ldc_w 878
    //   2162: astore 8
    //   2164: goto -790 -> 1374
    //   2167: iconst_0
    //   2168: istore_3
    //   2169: goto -713 -> 1456
    //   2172: ldc_w 878
    //   2175: astore 8
    //   2177: goto -380 -> 1797
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	2180	0	this	ctt
    //   529	1407	1	i1	int
    //   60	2096	2	bool1	boolean
    //   1455	714	3	bool2	boolean
    //   88	915	4	l1	long
    //   99	17	6	l2	long
    //   31	361	8	localObject1	Object
    //   394	59	8	localbgz	bgz
    //   515	137	8	localObject2	Object
    //   664	15	8	localObject3	Object
    //   690	829	8	localObject4	Object
    //   1567	36	8	localObject5	Object
    //   1615	497	8	localObject6	Object
    //   2146	1	8	localObject7	Object
    //   2162	14	8	str1	String
    //   217	1933	9	localObject8	Object
    //   1	1	10	localObject9	Object
    //   369	7	10	localObject10	Object
    //   1037	1073	10	localObject11	Object
    //   430	1665	11	localObject12	Object
    //   83	879	12	localhqc	hqc
    //   154	1712	13	localObject13	Object
    //   545	902	14	localObject14	Object
    //   620	1041	15	localObject15	Object
    //   1383	44	16	str2	String
    // Exception table:
    //   from	to	target	type
    //   200	348	369	finally
    //   348	366	369	finally
    //   61	132	394	bgz
    //   133	156	394	bgz
    //   384	391	394	bgz
    //   391	394	394	bgz
    //   413	420	394	bgz
    //   671	678	394	bgz
    //   678	681	394	bgz
    //   792	799	394	bgz
    //   799	809	394	bgz
    //   843	850	394	bgz
    //   850	860	394	bgz
    //   860	931	394	bgz
    //   931	1034	394	bgz
    //   1574	1581	394	bgz
    //   1581	1584	394	bgz
    //   2126	2133	394	bgz
    //   2136	2143	394	bgz
    //   424	432	664	finally
    //   436	452	664	finally
    //   456	476	664	finally
    //   480	490	664	finally
    //   494	517	664	finally
    //   521	530	664	finally
    //   538	547	664	finally
    //   551	558	664	finally
    //   562	573	664	finally
    //   577	585	664	finally
    //   589	606	664	finally
    //   615	622	664	finally
    //   626	634	664	finally
    //   638	645	664	finally
    //   649	661	664	finally
    //   685	692	664	finally
    //   704	713	664	finally
    //   717	724	664	finally
    //   728	736	664	finally
    //   740	757	664	finally
    //   766	784	664	finally
    //   813	833	1567	finally
    //   1039	1049	1567	finally
    //   1053	1063	1567	finally
    //   1067	1080	1567	finally
    //   1084	1094	1567	finally
    //   1098	1108	1567	finally
    //   1112	1128	1567	finally
    //   1137	1146	1567	finally
    //   1150	1157	1567	finally
    //   1161	1175	1567	finally
    //   1179	1195	1567	finally
    //   1199	1215	1567	finally
    //   1219	1232	1567	finally
    //   1239	1249	1567	finally
    //   1253	1259	1567	finally
    //   1263	1287	1567	finally
    //   1291	1315	1567	finally
    //   1319	1342	1567	finally
    //   1350	1374	1567	finally
    //   1378	1385	1567	finally
    //   1389	1398	1567	finally
    //   1402	1409	1567	finally
    //   1413	1420	1567	finally
    //   1424	1431	1567	finally
    //   1435	1442	1567	finally
    //   1446	1454	1567	finally
    //   1460	1466	1567	finally
    //   1470	1478	1567	finally
    //   1482	1489	1567	finally
    //   1493	1501	1567	finally
    //   1505	1512	1567	finally
    //   1516	1528	1567	finally
    //   1532	1543	1567	finally
    //   1547	1564	1567	finally
    //   1588	1598	1567	finally
    //   1602	1617	1567	finally
    //   1624	1634	1567	finally
    //   1638	1653	1567	finally
    //   1660	1667	1567	finally
    //   1674	1684	1567	finally
    //   1688	1694	1567	finally
    //   1698	1707	1567	finally
    //   1711	1738	1567	finally
    //   1742	1765	1567	finally
    //   1773	1797	1567	finally
    //   1801	1808	1567	finally
    //   1812	1818	1567	finally
    //   1822	1830	1567	finally
    //   1834	1851	1567	finally
    //   1855	1873	1567	finally
    //   1880	1890	1567	finally
    //   1894	1909	1567	finally
    //   1916	1926	1567	finally
    //   1930	1945	1567	finally
    //   1952	1959	1567	finally
    //   1963	1971	1567	finally
    //   1975	1985	1567	finally
    //   1989	2001	1567	finally
    //   2008	2020	1567	finally
    //   2027	2043	1567	finally
    //   2047	2057	1567	finally
    //   2061	2073	1567	finally
    //   2077	2090	1567	finally
    //   2094	2107	1567	finally
    //   2111	2118	1567	finally
    //   156	200	2146	finally
  }
}

/* Location:
 * Qualified Name:     ctt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */