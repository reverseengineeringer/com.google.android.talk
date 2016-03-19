import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.text.TextUtils.SimpleStringSplitter;
import android.util.Pair;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public final class bfz
{
  private static final String[] A = { "conversation_id", "call_media_type" };
  private static final String B = String.format(Locale.US, "%s in (select %s from %s where %s)", new Object[] { "conversation_id", "conversation_id", "conversations", "sort_timestamp<? AND status=? AND transport_type!=3" });
  private static final String[] C = { "timestamp" };
  private static final String[] D = { "conversation_type" };
  private static final String[] E = { "conversation_id" };
  private static final String[] F = { "conversation_id" };
  static final String[] b;
  private static final boolean c;
  private static final ezv d;
  private static final String[] i;
  private static final String[] j;
  private static final Random k;
  private static final String[] l;
  private static final String[] m;
  private static String o;
  private static String p;
  private static String q;
  private static final String[] r;
  private static final String[] s;
  private static final String[] t;
  private static final String[] u;
  private static final String[] v;
  private static final String[] w;
  private static final String x;
  private static final String[] y;
  private static final String[] z;
  final Context a;
  private final bha e;
  private final bfd f;
  private final int g;
  private int h;
  private final hba n;
  
  static
  {
    imx localimx = ezi.d;
    c = false;
    d = ezv.a("EsConversationsHelper");
    i = new String[] { "gaia_id", "chat_id", "name", "first_name", "profile_photo_url", "packed_circle_ids" };
    j = new String[] { "_id", "gaia_id", "chat_id", "phone_id", "circle_id", "full_name", "first_name", "fallback_name", "profile_photo_url", "batch_gebi_tag", "blocked", "participant_type" };
    k = koc.a;
    l = new String[] { "photo_id", "url", "file_name", "last_used" };
    m = new String[] { "album_id", "cover_photo_id", "title", "last_used" };
    r = new String[] { "conversation_id" };
    b = new String[] { "notification_level", "view" };
    s = new String[] { "latest_message_timestamp", "latest_message_expiration_timestamp", "snippet_type", "snippet_text", "snippet_author_chat_id", "snippet_image_url", "chat_watermark", "hangout_watermark" };
    t = new String[] { "gaia_id", "chat_id", "circle_id", "phone_id" };
    u = new String[] { "message_id", "conversation_id", "author_chat_id", "text", "status", "type", "timestamp", "expiration_timestamp", "local_url", "remote_url", "image_id", "album_id", "stream_id", "attachment_content_type", "attachment_name", "latitude", "longitude", "address", "attachment_target_url", "transport_type", "transport_phone", "sms_type", "width_pixels", "height_pixels", "mms_subject", "image_rotation", "new_conversation_name", "participant_keys", "forwarded_mms_url", "forwarded_mms_count", "attachment_description", "attachment_target_url_description", "attachment_target_url_name", "call_media_type", "last_seen_timestamp", "observed_status" };
    v = new String[] { "local_url" };
    w = new String[] { "conversation_id", "self_watermark" };
    x = String.format(Locale.US, "%s=? AND %s=?", new Object[] { "conversation_id", "participant_type" });
    y = new String[] { "first_peak_scroll_time", "first_peak_scroll_to_message_timestamp", "second_peak_scroll_time", "second_peak_scroll_to_message_timestamp" };
    z = new String[] { "sort_timestamp" };
  }
  
  public bfz(Context paramContext, int paramInt)
  {
    this(paramContext, bgw.a(paramContext, paramInt).b(), paramInt);
  }
  
  public bfz(Context paramContext, bha parambha, int paramInt)
  {
    a = paramContext;
    f = dvd.e(paramInt);
    g = paramInt;
    e = parambha;
    n = ((hba)ilh.a(paramContext, hba.class));
  }
  
  private static String D()
  {
    try
    {
      if (o == null) {
        o = d(" WHERE conversation_id=? ", true);
      }
      String str = o;
      return str;
    }
    finally {}
  }
  
  private static String E()
  {
    try
    {
      if (p == null) {
        p = d(" WHERE conversation_id=? ", false);
      }
      String str = p;
      return str;
    }
    finally {}
  }
  
  private static String F()
  {
    try
    {
      if (q == null) {
        q = d(null, true);
      }
      String str = q;
      return str;
    }
    finally {}
  }
  
  private bgu G()
  {
    Object localObject;
    if (c)
    {
      localObject = String.valueOf("getConversationScrollInfo: account=");
      String str = String.valueOf(f.a());
      if (str.length() == 0) {
        break label117;
      }
      ((String)localObject).concat(str);
    }
    for (;;)
    {
      localObject = new bgu();
      int i1 = g().g();
      a = bff.a(a, i1, "first_peak_scroll_time", 0L);
      b = bff.a(a, i1, "first_peak_scroll_to_conversation_timestamp", 0L);
      c = bff.a(a, i1, "second_peak_scroll_time", 0L);
      d = bff.a(a, i1, "second_peak_scroll_to_conversation_timestamp", 0L);
      return (bgu)localObject;
      label117:
      new String((String)localObject);
    }
  }
  
  /* Error */
  private List<drp> H()
  {
    // Byte code:
    //   0: new 380	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 381	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: aload_0
    //   9: getfield 306	bfz:e	Lbha;
    //   12: ldc_w 383
    //   15: getstatic 115	bfz:l	[Ljava/lang/String;
    //   18: aconst_null
    //   19: aconst_null
    //   20: aconst_null
    //   21: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   24: astore_1
    //   25: aload_1
    //   26: ifnull +93 -> 119
    //   29: aload_1
    //   30: invokeinterface 394 1 0
    //   35: ifeq +84 -> 119
    //   38: new 396	drp
    //   41: dup
    //   42: invokespecial 397	drp:<init>	()V
    //   45: astore_3
    //   46: aload_3
    //   47: aload_1
    //   48: iconst_0
    //   49: invokeinterface 401 2 0
    //   54: putfield 403	drp:a	Ljava/lang/String;
    //   57: aload_3
    //   58: aload_1
    //   59: iconst_1
    //   60: invokeinterface 401 2 0
    //   65: putfield 405	drp:b	Ljava/lang/String;
    //   68: aload_3
    //   69: aload_1
    //   70: iconst_2
    //   71: invokeinterface 401 2 0
    //   76: putfield 407	drp:c	Ljava/lang/String;
    //   79: aload_3
    //   80: aload_1
    //   81: iconst_3
    //   82: invokeinterface 411 2 0
    //   87: i2l
    //   88: putfield 412	drp:d	J
    //   91: aload_2
    //   92: aload_3
    //   93: invokeinterface 418 2 0
    //   98: pop
    //   99: goto -74 -> 25
    //   102: astore_3
    //   103: aload_1
    //   104: astore_2
    //   105: aload_3
    //   106: astore_1
    //   107: aload_2
    //   108: ifnull +9 -> 117
    //   111: aload_2
    //   112: invokeinterface 421 1 0
    //   117: aload_1
    //   118: athrow
    //   119: aload_1
    //   120: ifnull +9 -> 129
    //   123: aload_1
    //   124: invokeinterface 421 1 0
    //   129: aload_2
    //   130: areturn
    //   131: astore_1
    //   132: aconst_null
    //   133: astore_2
    //   134: goto -27 -> 107
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	137	0	this	bfz
    //   24	100	1	localObject1	Object
    //   131	1	1	localObject2	Object
    //   7	127	2	localObject3	Object
    //   45	48	3	localdrp	drp
    //   102	4	3	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   29	99	102	finally
    //   8	25	131	finally
  }
  
  public static int a(bfz parambfz, String paramString)
  {
    int i1 = 0;
    Cursor localCursor = parambfz.ah(paramString);
    if (localCursor != null) {
      i1 = 0;
    }
    for (;;)
    {
      int i2;
      try
      {
        if (localCursor.moveToNext())
        {
          bgd localbgd = a(localCursor);
          String str = parambfz.a(localbgd);
          if ((!TextUtils.isEmpty(t)) && (TextUtils.equals(str, t)))
          {
            i2 = 0;
          }
          else if (bhw.d.b(t))
          {
            i2 = 0;
          }
          else
          {
            ContentValues localContentValues = new ContentValues();
            localContentValues.put("merge_key", str);
            localContentValues.put("conversation_id", s);
            parambfz.e().a("merge_keys", localContentValues);
            RealTimeChatService.a(s, str);
            i2 = 1;
          }
        }
        else
        {
          localCursor.close();
          if (i1 > 0) {
            parambfz.al(paramString);
          }
          return i1;
        }
      }
      finally
      {
        localCursor.close();
      }
      i1 += i2;
    }
  }
  
  private static int a(bfz parambfz, String paramString, eie parameie)
  {
    Object localObject1 = null;
    bha localbha = parambfz.e();
    if (TextUtils.isEmpty(paramString)) {
      paramString = localbha.a("participants", bgt.a, bgt.b, null, null);
    }
    while (paramString != null)
    {
      int i1;
      try
      {
        ContentValues localContentValues = new ContentValues();
        String[] arrayOfString = new String[1];
        i1 = 0;
        while (paramString.moveToNext())
        {
          long l1 = paramString.getLong(0);
          Object localObject3 = paramString.getString(1);
          Object localObject2 = paramString.getString(2);
          String str = paramString.getString(3);
          localObject3 = parambfz.a(parameie, (String)localObject3, (String)localObject2, str);
          if ((!TextUtils.equals(a, (CharSequence)localObject2)) || (!TextUtils.equals(b, str)))
          {
            localContentValues.clear();
            localContentValues.put("full_name", a);
            localContentValues.put("profile_photo_url", b);
            arrayOfString[0] = String.valueOf(l1);
            i1 += localbha.a("participants", localContentValues, "_id=?", arrayOfString);
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new HashSet();
            }
            ((HashSet)localObject2).add(Long.valueOf(l1));
            localObject1 = localObject2;
          }
        }
      }
      finally
      {
        paramString.close();
      }
      tmp254_251[0] = paramString;
      paramString = localbha.a("conversation_participants_view", bgt.a, bgt.c, tmp254_251, null);
      continue;
      int i2;
      if (localObject1 != null)
      {
        parameie = localbha.a("SELECT DISTINCT conversations.conversation_id  FROM conversations JOIN conversation_participants  WHERE conversation_participants.conversation_id=conversations.conversation_id  AND conversation_participants.participant_row_id IN (?); ", new String[] { TextUtils.join(",", (Iterable)localObject1) });
        i2 = i1;
        if (parameie != null) {
          i2 = i1;
        }
      }
      for (;;)
      {
        try
        {
          if (parameie.moveToFirst())
          {
            i2 = i1 + parameie.getCount();
            bft.b(parambfz, parameie.getString(0));
            boolean bool = parameie.moveToNext();
            if (bool) {
              continue;
            }
          }
          i1 = i2;
          if (parameie != null)
          {
            parameie.close();
            i1 = i2;
          }
          paramString.close();
          return i1;
        }
        finally
        {
          if (parameie != null) {
            parameie.close();
          }
        }
      }
    }
    return 0;
  }
  
  private int a(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    int i1;
    if ((c) && (!TextUtils.isEmpty(paramString1)))
    {
      i1 = 1;
      hbs.b("Expected condition to be false", TextUtils.isEmpty(paramString3));
      if (TextUtils.isEmpty(paramString2)) {
        break label216;
      }
    }
    try
    {
      localCursor = e.a("conversations", new String[] { paramString3 }, "conversation_id=?", new String[] { paramString2 }, null);
      if (localCursor == null) {}
    }
    finally
    {
      try
      {
        int i2;
        if ((localCursor.moveToFirst()) && (!localCursor.isNull(0)))
        {
          paramInt = localCursor.getInt(0);
          if (i1 != 0) {
            new StringBuilder(String.valueOf(paramString1).length() + 45 + String.valueOf(paramString2).length() + String.valueOf(paramString3).length()).append(paramString1).append(", conversationId ").append(paramString2).append(", query ").append(paramString3).append(" returns ").append(paramInt);
          }
          i2 = paramInt;
          if (localCursor != null)
          {
            localCursor.close();
            i2 = paramInt;
          }
        }
        label216:
        do
        {
          return i2;
          i1 = 0;
          break;
          if (localCursor != null) {
            localCursor.close();
          }
          i2 = paramInt;
        } while (i1 == 0);
        new StringBuilder(String.valueOf(paramString1).length() + 39 + String.valueOf(paramString2).length() + String.valueOf(paramString3).length()).append(paramString1).append(", conversationId ").append(paramString2).append(", query ").append(paramString3).append(" has no result");
        return paramInt;
      }
      finally
      {
        Cursor localCursor;
        for (;;) {}
      }
      paramString1 = finally;
      localCursor = null;
    }
    if (localCursor != null) {
      localCursor.close();
    }
    throw paramString1;
  }
  
  /* Error */
  private int a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_2
    //   2: aload_3
    //   3: aload 4
    //   5: aload 5
    //   7: aload 6
    //   9: iconst_1
    //   10: invokespecial 583	bfz:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    //   13: istore 8
    //   15: iload 8
    //   17: iflt +225 -> 242
    //   20: getstatic 588	czd:a	Lczd;
    //   23: astore_3
    //   24: iload 8
    //   26: invokestatic 593	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   29: astore_2
    //   30: aload_0
    //   31: getfield 306	bfz:e	Lbha;
    //   34: ldc_w 595
    //   37: iconst_1
    //   38: anewarray 66	java/lang/String
    //   41: dup
    //   42: iconst_0
    //   43: ldc 82
    //   45: aastore
    //   46: ldc_w 597
    //   49: iconst_2
    //   50: anewarray 66	java/lang/String
    //   53: dup
    //   54: iconst_0
    //   55: aload_2
    //   56: aastore
    //   57: dup
    //   58: iconst_1
    //   59: aload_1
    //   60: aastore
    //   61: aconst_null
    //   62: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   65: astore_2
    //   66: aload_2
    //   67: invokeinterface 537 1 0
    //   72: istore 9
    //   74: iload 9
    //   76: ifeq +213 -> 289
    //   79: iconst_1
    //   80: istore 7
    //   82: aload_2
    //   83: ifnull +9 -> 92
    //   86: aload_2
    //   87: invokeinterface 421 1 0
    //   92: iload 7
    //   94: ifne +148 -> 242
    //   97: aload_0
    //   98: getfield 306	bfz:e	Lbha;
    //   101: ldc_w 595
    //   104: iconst_1
    //   105: anewarray 66	java/lang/String
    //   108: dup
    //   109: iconst_0
    //   110: ldc_w 599
    //   113: aastore
    //   114: ldc_w 555
    //   117: iconst_1
    //   118: anewarray 66	java/lang/String
    //   121: dup
    //   122: iconst_0
    //   123: aload_1
    //   124: aastore
    //   125: aconst_null
    //   126: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   129: astore_2
    //   130: aload_2
    //   131: invokeinterface 537 1 0
    //   136: ifeq +147 -> 283
    //   139: aload_2
    //   140: iconst_0
    //   141: invokeinterface 411 2 0
    //   146: istore 7
    //   148: aload_2
    //   149: ifnull +9 -> 158
    //   152: aload_2
    //   153: invokeinterface 421 1 0
    //   158: new 458	android/content/ContentValues
    //   161: dup
    //   162: invokespecial 459	android/content/ContentValues:<init>	()V
    //   165: astore_2
    //   166: aload_2
    //   167: ldc 125
    //   169: aload_1
    //   170: invokevirtual 465	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   173: aload_3
    //   174: getstatic 588	czd:a	Lczd;
    //   177: if_acmpeq +16 -> 193
    //   180: aload_2
    //   181: ldc 96
    //   183: aload_3
    //   184: invokevirtual 602	czd:ordinal	()I
    //   187: invokestatic 605	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   190: invokevirtual 608	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   193: aload_2
    //   194: ldc_w 610
    //   197: iload 8
    //   199: invokestatic 605	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   202: invokevirtual 608	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   205: aload_2
    //   206: ldc_w 612
    //   209: iload 7
    //   211: iconst_1
    //   212: iadd
    //   213: invokestatic 605	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   216: invokevirtual 608	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   219: aload_2
    //   220: ldc_w 614
    //   223: iconst_0
    //   224: invokestatic 605	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   227: invokevirtual 608	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   230: aload_0
    //   231: getfield 306	bfz:e	Lbha;
    //   234: ldc_w 595
    //   237: aload_2
    //   238: invokevirtual 474	bha:a	(Ljava/lang/String;Landroid/content/ContentValues;)J
    //   241: pop2
    //   242: iload 8
    //   244: ireturn
    //   245: astore_1
    //   246: aconst_null
    //   247: astore_2
    //   248: aload_2
    //   249: ifnull +9 -> 258
    //   252: aload_2
    //   253: invokeinterface 421 1 0
    //   258: aload_1
    //   259: athrow
    //   260: astore_1
    //   261: aconst_null
    //   262: astore_2
    //   263: aload_2
    //   264: ifnull +9 -> 273
    //   267: aload_2
    //   268: invokeinterface 421 1 0
    //   273: aload_1
    //   274: athrow
    //   275: astore_1
    //   276: goto -13 -> 263
    //   279: astore_1
    //   280: goto -32 -> 248
    //   283: iconst_0
    //   284: istore 7
    //   286: goto -138 -> 148
    //   289: iconst_0
    //   290: istore 7
    //   292: goto -210 -> 82
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	295	0	this	bfz
    //   0	295	1	paramString1	String
    //   0	295	2	paramString2	String
    //   0	295	3	paramString3	String
    //   0	295	4	paramString4	String
    //   0	295	5	paramString5	String
    //   0	295	6	paramString6	String
    //   80	211	7	i1	int
    //   13	230	8	i2	int
    //   72	3	9	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   24	66	245	finally
    //   97	130	260	finally
    //   130	148	275	finally
    //   66	74	279	finally
  }
  
  /* Error */
  private int a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_m1
    //   1: istore 8
    //   3: aload_0
    //   4: aload_1
    //   5: aload_2
    //   6: invokespecial 616	bfz:m	(Ljava/lang/String;Ljava/lang/String;)V
    //   9: aload_1
    //   10: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   13: ifne +243 -> 256
    //   16: aload_2
    //   17: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   20: ifne +11 -> 31
    //   23: aload_2
    //   24: aload_1
    //   25: invokestatic 448	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   28: ifeq +228 -> 256
    //   31: ldc_w 618
    //   34: astore 9
    //   36: iconst_1
    //   37: anewarray 66	java/lang/String
    //   40: astore 10
    //   42: aload 10
    //   44: iconst_0
    //   45: aload_1
    //   46: aastore
    //   47: aload_0
    //   48: getfield 306	bfz:e	Lbha;
    //   51: ldc_w 620
    //   54: getstatic 98	bfz:j	[Ljava/lang/String;
    //   57: aload 9
    //   59: aload 10
    //   61: aconst_null
    //   62: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   65: astore 9
    //   67: iload 8
    //   69: istore 7
    //   71: aload 9
    //   73: ifnull +36 -> 109
    //   76: iload 8
    //   78: istore 7
    //   80: aload 9
    //   82: invokeinterface 537 1 0
    //   87: ifeq +22 -> 109
    //   90: aload 9
    //   92: iconst_0
    //   93: invokeinterface 411 2 0
    //   98: istore 7
    //   100: aload_0
    //   101: aload 9
    //   103: aload 5
    //   105: invokespecial 623	bfz:a	(Landroid/database/Cursor;Ljava/lang/String;)Lcyx;
    //   108: pop
    //   109: iload 7
    //   111: istore 8
    //   113: aload 9
    //   115: ifnull +10 -> 125
    //   118: aload 9
    //   120: invokeinterface 421 1 0
    //   125: iload 8
    //   127: istore 7
    //   129: iload 6
    //   131: ifeq +122 -> 253
    //   134: iload 8
    //   136: istore 7
    //   138: iload 8
    //   140: ifge +113 -> 253
    //   143: new 458	android/content/ContentValues
    //   146: dup
    //   147: invokespecial 459	android/content/ContentValues:<init>	()V
    //   150: astore 9
    //   152: aload 9
    //   154: ldc 92
    //   156: ldc_w 625
    //   159: invokevirtual 465	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   162: aload 4
    //   164: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   167: ifne +189 -> 356
    //   170: aload 9
    //   172: ldc 86
    //   174: aload 4
    //   176: invokevirtual 465	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   179: aload 9
    //   181: ldc 96
    //   183: getstatic 627	czd:c	Lczd;
    //   186: invokevirtual 602	czd:ordinal	()I
    //   189: invokestatic 605	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   192: invokevirtual 608	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   195: aload 5
    //   197: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   200: ifne +12 -> 212
    //   203: aload 9
    //   205: ldc 90
    //   207: aload 5
    //   209: invokevirtual 465	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   212: aload_0
    //   213: getfield 306	bfz:e	Lbha;
    //   216: ldc_w 484
    //   219: aload 9
    //   221: invokevirtual 474	bha:a	(Ljava/lang/String;Landroid/content/ContentValues;)J
    //   224: l2i
    //   225: istore 8
    //   227: iload 8
    //   229: istore 7
    //   231: iload 8
    //   233: ifge +20 -> 253
    //   236: ldc_w 629
    //   239: ldc_w 631
    //   242: iconst_0
    //   243: anewarray 4	java/lang/Object
    //   246: invokestatic 634	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   249: iload 8
    //   251: istore 7
    //   253: iload 7
    //   255: ireturn
    //   256: aload_2
    //   257: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   260: ifne +22 -> 282
    //   263: ldc_w 636
    //   266: astore 9
    //   268: iconst_1
    //   269: anewarray 66	java/lang/String
    //   272: astore 10
    //   274: aload 10
    //   276: iconst_0
    //   277: aload_2
    //   278: aastore
    //   279: goto -232 -> 47
    //   282: aload 4
    //   284: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   287: ifne +23 -> 310
    //   290: ldc_w 638
    //   293: astore 9
    //   295: iconst_1
    //   296: anewarray 66	java/lang/String
    //   299: astore 10
    //   301: aload 10
    //   303: iconst_0
    //   304: aload 4
    //   306: aastore
    //   307: goto -260 -> 47
    //   310: aload_3
    //   311: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   314: ifne +22 -> 336
    //   317: ldc_w 640
    //   320: astore 9
    //   322: iconst_1
    //   323: anewarray 66	java/lang/String
    //   326: astore 10
    //   328: aload 10
    //   330: iconst_0
    //   331: aload_3
    //   332: aastore
    //   333: goto -286 -> 47
    //   336: iconst_m1
    //   337: ireturn
    //   338: astore_1
    //   339: aconst_null
    //   340: astore 9
    //   342: aload 9
    //   344: ifnull +10 -> 354
    //   347: aload 9
    //   349: invokeinterface 421 1 0
    //   354: aload_1
    //   355: athrow
    //   356: aload_1
    //   357: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   360: ifne +11 -> 371
    //   363: aload 9
    //   365: ldc 68
    //   367: aload_1
    //   368: invokevirtual 465	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   371: aload_2
    //   372: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   375: ifne +11 -> 386
    //   378: aload 9
    //   380: ldc 70
    //   382: aload_2
    //   383: invokevirtual 465	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   386: aload_3
    //   387: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   390: ifne +30 -> 420
    //   393: aload 9
    //   395: ldc 84
    //   397: aload_3
    //   398: invokevirtual 465	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   401: aload 9
    //   403: ldc 96
    //   405: getstatic 642	czd:d	Lczd;
    //   408: invokevirtual 602	czd:ordinal	()I
    //   411: invokestatic 605	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   414: invokevirtual 608	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   417: goto -222 -> 195
    //   420: aload 9
    //   422: ldc 96
    //   424: getstatic 644	czd:b	Lczd;
    //   427: invokevirtual 602	czd:ordinal	()I
    //   430: invokestatic 605	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   433: invokevirtual 608	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   436: goto -241 -> 195
    //   439: astore_1
    //   440: goto -98 -> 342
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	443	0	this	bfz
    //   0	443	1	paramString1	String
    //   0	443	2	paramString2	String
    //   0	443	3	paramString3	String
    //   0	443	4	paramString4	String
    //   0	443	5	paramString5	String
    //   0	443	6	paramBoolean	boolean
    //   69	185	7	i1	int
    //   1	249	8	i2	int
    //   34	387	9	localObject	Object
    //   40	289	10	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   47	67	338	finally
    //   80	109	439	finally
  }
  
  private static long a(bgu parambgu)
  {
    long l2;
    if (parambgu == null) {
      l2 = 0L;
    }
    long l1;
    do
    {
      long l3;
      long l4;
      do
      {
        return l2;
        l3 = ehb.c().e();
        l1 = Long.MAX_VALUE;
        l4 = System.currentTimeMillis();
        if (l4 < a + 2L * l3) {
          l1 = b;
        }
        l2 = l1;
      } while (l4 >= l3 * 2L + c);
      l2 = l1;
    } while (l1 <= d);
    return d;
  }
  
  private long a(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    int i1;
    if ((c) && (!TextUtils.isEmpty(paramString1)))
    {
      i1 = 1;
      hbs.b("Expected condition to be false", TextUtils.isEmpty(paramString3));
      if (TextUtils.isEmpty(paramString2)) {
        break label216;
      }
    }
    try
    {
      localCursor = e.a("conversations", new String[] { paramString3 }, "conversation_id=?", new String[] { paramString2 }, null);
      if (localCursor == null) {}
    }
    finally
    {
      try
      {
        long l1;
        if ((localCursor.moveToFirst()) && (!localCursor.isNull(0)))
        {
          paramLong = localCursor.getLong(0);
          if (i1 != 0) {
            new StringBuilder(String.valueOf(paramString1).length() + 54 + String.valueOf(paramString2).length() + String.valueOf(paramString3).length()).append(paramString1).append(", conversationId ").append(paramString2).append(", query ").append(paramString3).append(" returns ").append(paramLong);
          }
          l1 = paramLong;
          if (localCursor != null)
          {
            localCursor.close();
            l1 = paramLong;
          }
        }
        label216:
        do
        {
          return l1;
          i1 = 0;
          break;
          if (localCursor != null) {
            localCursor.close();
          }
          l1 = paramLong;
        } while (i1 == 0);
        new StringBuilder(String.valueOf(paramString1).length() + 39 + String.valueOf(paramString2).length() + String.valueOf(paramString3).length()).append(paramString1).append(", conversationId ").append(paramString2).append(", query ").append(paramString3).append(" has no result");
        return paramLong;
      }
      finally
      {
        Cursor localCursor;
        for (;;) {}
      }
      paramString1 = finally;
      localCursor = null;
    }
    if (localCursor != null) {
      localCursor.close();
    }
    throw paramString1;
  }
  
  private Cursor a(String paramString, String[] paramArrayOfString, int paramInt)
  {
    Object localObject = String.valueOf("SELECT conversation_id FROM conversation_participants_view WHERE active=1 GROUP BY conversation_id HAVING SUM(CASE WHEN ");
    int i1 = paramArrayOfString.length;
    int i2 = paramArrayOfString.length;
    localObject = String.valueOf(localObject).length() + 60 + String.valueOf(paramString).length() + (String)localObject + paramString + " THEN 1 ELSE 0 END) = " + i1 + " AND count(*) = " + i2;
    if (paramInt != 2)
    {
      paramString = (String)localObject;
      if (paramInt != 3) {}
    }
    else
    {
      paramString = String.valueOf("SELECT conversation_id FROM conversations WHERE conversation_id IN (");
      String str1 = String.valueOf("transport_type");
      String str2 = String.valueOf(String.valueOf(paramInt));
      paramString = String.valueOf(paramString).length() + 9 + String.valueOf(localObject).length() + String.valueOf(str1).length() + String.valueOf(str2).length() + paramString + (String)localObject + ") AND " + str1 + " = " + str2;
    }
    localObject = e.a(paramString, paramArrayOfString);
    if (c)
    {
      paramInt = paramArrayOfString.length;
      paramArrayOfString = String.valueOf(paramArrayOfString[0]);
      i1 = ((Cursor)localObject).getCount();
      new StringBuilder(String.valueOf(paramString).length() + 53 + String.valueOf(paramArrayOfString).length()).append("queryMultiple ").append(paramInt).append("; selection ").append(paramString).append(paramArrayOfString).append(" ==> ").append(i1);
    }
    return (Cursor)localObject;
  }
  
  private static bgd a(Cursor paramCursor)
  {
    boolean bool2 = true;
    bgd localbgd = new bgd();
    s = paramCursor.getString(20);
    String str;
    if (paramCursor.getInt(0) != 0)
    {
      bool1 = true;
      a = bool1;
      b = paramCursor.getInt(1);
      k = paramCursor.getInt(9);
      q = paramCursor.getLong(16);
      t = paramCursor.getString(17);
      u = paramCursor.getLong(18);
      r = paramCursor.getInt(19);
      str = paramCursor.getString(2);
      if (!TextUtils.isEmpty(str)) {
        break label313;
      }
      d = null;
      label132:
      o = paramCursor.getString(13);
      if (paramCursor.getInt(3) == 0) {
        break label322;
      }
      bool1 = true;
      label156:
      e = bool1;
      if (!paramCursor.isNull(4)) {
        f = paramCursor.getBlob(4);
      }
      g = paramCursor.getLong(5);
      i = paramCursor.getInt(6);
      j = new czb(paramCursor.getString(7), paramCursor.getString(8));
      n = paramCursor.getLong(10);
      if (paramCursor.getInt(14) == 0) {
        break label327;
      }
    }
    label313:
    label322:
    label327:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      p = bool1;
      c = paramCursor.getInt(15);
      l = paramCursor.getInt(11);
      m = paramCursor.getInt(12);
      h = b(paramCursor);
      return localbgd;
      bool1 = false;
      break;
      d = str;
      break label132;
      bool1 = false;
      break label156;
    }
  }
  
  private bgi a(bgi parambgi1, bgi parambgi2)
  {
    boolean bool = false;
    Object localObject;
    if ((a.startsWith("client_generated:")) || (d))
    {
      localObject = parambgi2;
      parambgi2 = parambgi1;
      parambgi1 = (bgi)localObject;
    }
    for (;;)
    {
      if (c)
      {
        localObject = a;
        String str = a;
        new StringBuilder(String.valueOf(localObject).length() + 60 + String.valueOf(str).length()).append("moveMessagesFromClientGeneratedId: moving messages from ").append((String)localObject).append(" to ").append(str);
      }
      a();
      try
      {
        localObject = new ContentValues();
        ((ContentValues)localObject).put("conversation_id", a);
        int i1 = e.a("messages", (ContentValues)localObject, "conversation_id=? AND status IN (?, ?, ?)", new String[] { a, Integer.toString(emc.b.ordinal()), Integer.toString(emc.d.ordinal()), Integer.toString(emc.e.ordinal()) });
        if (c) {
          new StringBuilder(58).append("moveMessagesFromClientGeneratedId updated ").append(i1).append(" rows");
        }
        RealTimeChatService.g(f, a, a);
        A(a);
        b();
        c();
        bft.d(this);
        return parambgi1;
      }
      finally
      {
        c();
      }
      if ((a.startsWith("client_generated:")) || (d)) {
        bool = true;
      }
      hbs.a("Expected condition to be true", bool);
    }
  }
  
  private bgr a(eie parameie, String paramString1, String paramString2, String paramString3)
  {
    Object localObject = null;
    if (paramString1 != null) {
      localObject = ezm.g(paramString1);
    }
    if (TextUtils.isEmpty((CharSequence)localObject)) {}
    for (;;)
    {
      localObject = new bgr(this);
      a = paramString2;
      b = paramString3;
      parameie = a(paramString1, parameie);
      if (parameie != null)
      {
        if (!TextUtils.isEmpty(parameie.c())) {
          a = parameie.c();
        }
        if (!TextUtils.isEmpty(parameie.d())) {
          b = parameie.d();
        }
      }
      return (bgr)localObject;
      paramString1 = (String)localObject;
    }
  }
  
  private static bgu a(bgu parambgu, long paramLong1, long paramLong2)
  {
    long l1 = ehb.c().e();
    bgu localbgu = new bgu();
    if (paramLong1 < l1 + c)
    {
      if (paramLong2 > d) {
        return parambgu;
      }
      a = a;
      b = b;
      c = paramLong1;
    }
    for (d = paramLong2;; d = paramLong2)
    {
      return localbgu;
      a = c;
      b = d;
      c = paramLong1;
    }
  }
  
  public static bzq a(String paramString, eie parameie)
  {
    Object localObject = parameie.c(paramString);
    if (localObject != null) {
      return bzq.a((gpr)localObject);
    }
    paramString = parameie.b(paramString);
    int i1;
    long l1;
    gpr localgpr;
    if (paramString != null)
    {
      Iterator localIterator = paramString.iterator();
      i1 = 0;
      l1 = -1L;
      parameie = null;
      paramString = null;
      for (;;)
      {
        if (localIterator.hasNext())
        {
          localgpr = (gpr)localIterator.next();
          if (!TextUtils.isEmpty(localgpr.a())) {
            if (paramString == null)
            {
              paramString = localgpr.a();
              label91:
              localObject = parameie;
              if (parameie == null)
              {
                localObject = parameie;
                if (!TextUtils.isEmpty(localgpr.h())) {
                  localObject = localgpr.h();
                }
              }
              if (l1 != -1L) {
                break label330;
              }
              parameie = localgpr.b().iterator();
              if (!parameie.hasNext()) {
                break label330;
              }
              l1 = aal.a((Long)parameie.next(), 0L);
            }
          }
        }
      }
    }
    label330:
    for (;;)
    {
      parameie = (eie)localObject;
      break;
      if (!paramString.equalsIgnoreCase(localgpr.a()))
      {
        paramString = String.valueOf(paramString);
        localObject = String.valueOf(", ");
        String str = String.valueOf(localgpr.a());
        paramString = String.valueOf(paramString).length() + 0 + String.valueOf(localObject).length() + String.valueOf(str).length() + paramString + (String)localObject + str;
        i1 = 1;
        break label91;
        if ((TextUtils.isEmpty(parameie)) && (l1 != -1L)) {
          parameie = eia.a(Long.valueOf(l1));
        }
        for (;;)
        {
          if (i1 != 0) {
            parameie = null;
          }
          for (;;)
          {
            if (!TextUtils.isEmpty(paramString)) {
              return new bzq(paramString, null, parameie, null, null, null);
            }
            return null;
          }
        }
      }
      break label91;
    }
  }
  
  private cyx a(Cursor paramCursor, String paramString)
  {
    String str1 = paramCursor.getString(0);
    String str2 = paramCursor.getString(1);
    String str3 = paramCursor.getString(2);
    String str4 = paramCursor.getString(3);
    String str5 = paramCursor.getString(4);
    String str6 = paramCursor.getString(5);
    String str7 = paramCursor.getString(6);
    if (TextUtils.isEmpty(paramString)) {
      paramString = paramCursor.getString(7);
    }
    for (;;)
    {
      String str8 = paramCursor.getString(8);
      String str9 = paramCursor.getString(9);
      Boolean localBoolean = null;
      if (paramCursor.getInt(10) != 0) {
        localBoolean = Boolean.TRUE;
      }
      paramCursor = aal.a(czd.values()[paramCursor.getInt(11)], str2, str3, str5, str4, str6, str7, paramString, str8, str9, localBoolean, 0);
      ((bil)ilh.a(a, bil.class)).a(f).a(paramCursor, str1);
      return paramCursor;
    }
  }
  
  private static drp a(List<drp> paramList, String paramString)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      drp localdrp = (drp)paramList.next();
      if (a.equals(paramString)) {
        return localdrp;
      }
    }
    return null;
  }
  
  public static String a(long paramLong)
  {
    String str = String.valueOf("client_generated:");
    return String.valueOf(str).length() + 20 + str + paramLong;
  }
  
  public static void a(Context paramContext)
  {
    awo localawo = (awo)ilh.a(paramContext, awo.class);
    Iterator localIterator = dvd.r().iterator();
    for (;;)
    {
      Object localObject;
      if (localIterator.hasNext()) {
        localObject = (bfd)localIterator.next();
      }
      try
      {
        int i1 = ((bfd)localObject).g();
        if (!localawo.d(i1)) {
          continue;
        }
        bfz localbfz = new bfz(paramContext, i1);
        a(paramContext, (bfd)localObject, true);
        a(localbfz, null);
        bft.a(i1);
      }
      catch (hqd localhqd)
      {
        localObject = String.valueOf(ezi.b(((bfd)localObject).a()));
        if (((String)localObject).length() != 0) {}
        for (localObject = "Account removed: ".concat((String)localObject);; localObject = new String("Account removed: "))
        {
          ezi.c("Babel_ConvHelper", (String)localObject, localhqd);
          break;
        }
        return;
      }
      catch (bgz localbgz)
      {
        for (;;) {}
      }
    }
  }
  
  private static void a(Context paramContext, bfd parambfd, boolean paramBoolean)
  {
    parambfd = new bfz(paramContext, parambfd.g());
    Locale localLocale = Locale.US;
    if (paramBoolean) {}
    for (paramContext = "";; paramContext = df)
    {
      paramContext = String.format(localLocale, "update merge_keys set merge_key=\"%s\"||conversation_id;", new Object[] { paramContext });
      parambfd.e().a(paramContext);
      return;
    }
  }
  
  private void a(String paramString, long paramLong, boolean paramBoolean)
  {
    long l1 = T(paramString);
    if (paramBoolean) {}
    for (paramLong = l1 | paramLong;; paramLong = l1 & (0xFFFFFFFFFFFFFFFF ^ paramLong))
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("is_pending_leave", Long.valueOf(paramLong));
      e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString });
      return;
    }
  }
  
  /* Error */
  private void a(String paramString, czb paramczb, czd paramczd, boolean paramBoolean)
  {
    // Byte code:
    //   0: new 458	android/content/ContentValues
    //   3: dup
    //   4: invokespecial 459	android/content/ContentValues:<init>	()V
    //   7: astore 10
    //   9: aload 10
    //   11: ldc 125
    //   13: aload_1
    //   14: invokevirtual 465	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   17: aload_3
    //   18: getstatic 588	czd:a	Lczd;
    //   21: if_acmpeq +17 -> 38
    //   24: aload 10
    //   26: ldc 96
    //   28: aload_3
    //   29: invokevirtual 602	czd:ordinal	()I
    //   32: invokestatic 605	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   35: invokevirtual 608	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   38: iconst_0
    //   39: istore 6
    //   41: aload_0
    //   42: aload_2
    //   43: getfield 938	czb:a	Ljava/lang/String;
    //   46: aload_2
    //   47: getfield 939	czb:b	Ljava/lang/String;
    //   50: aconst_null
    //   51: aconst_null
    //   52: aconst_null
    //   53: iconst_0
    //   54: invokespecial 583	bfz:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    //   57: i2l
    //   58: lstore 7
    //   60: lload 7
    //   62: ldc2_w 824
    //   65: lcmp
    //   66: ifne +4 -> 70
    //   69: return
    //   70: aload_2
    //   71: getfield 938	czb:a	Ljava/lang/String;
    //   74: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   77: ifne +212 -> 289
    //   80: ldc_w 941
    //   83: astore 9
    //   85: iconst_2
    //   86: anewarray 66	java/lang/String
    //   89: astore_3
    //   90: aload_3
    //   91: iconst_0
    //   92: aload_2
    //   93: getfield 938	czb:a	Ljava/lang/String;
    //   96: aastore
    //   97: aload_3
    //   98: iconst_1
    //   99: aload_1
    //   100: aastore
    //   101: aload 9
    //   103: astore_2
    //   104: aload_0
    //   105: getfield 306	bfz:e	Lbha;
    //   108: ldc_w 522
    //   111: iconst_1
    //   112: anewarray 66	java/lang/String
    //   115: dup
    //   116: iconst_0
    //   117: ldc 82
    //   119: aastore
    //   120: aload_2
    //   121: aload_3
    //   122: aconst_null
    //   123: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   126: astore_3
    //   127: aload_3
    //   128: astore_2
    //   129: aload_3
    //   130: invokeinterface 537 1 0
    //   135: ifeq +6 -> 141
    //   138: iconst_1
    //   139: istore 6
    //   141: aload_3
    //   142: astore_2
    //   143: aload_3
    //   144: invokeinterface 421 1 0
    //   149: iload 6
    //   151: ifne +272 -> 423
    //   154: aload_0
    //   155: getfield 306	bfz:e	Lbha;
    //   158: ldc_w 595
    //   161: iconst_1
    //   162: anewarray 66	java/lang/String
    //   165: dup
    //   166: iconst_0
    //   167: ldc_w 599
    //   170: aastore
    //   171: ldc_w 555
    //   174: iconst_1
    //   175: anewarray 66	java/lang/String
    //   178: dup
    //   179: iconst_0
    //   180: aload_1
    //   181: aastore
    //   182: aconst_null
    //   183: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   186: astore_3
    //   187: aload_3
    //   188: astore_2
    //   189: aload_3
    //   190: invokeinterface 537 1 0
    //   195: ifeq +222 -> 417
    //   198: aload_3
    //   199: astore_2
    //   200: aload_3
    //   201: iconst_0
    //   202: invokeinterface 411 2 0
    //   207: istore 5
    //   209: aload_3
    //   210: astore_2
    //   211: aload 10
    //   213: ldc_w 612
    //   216: iload 5
    //   218: iconst_1
    //   219: iadd
    //   220: invokestatic 605	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   223: invokevirtual 608	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   226: aload_3
    //   227: ifnull +9 -> 236
    //   230: aload_3
    //   231: invokeinterface 421 1 0
    //   236: aload 10
    //   238: ldc_w 610
    //   241: lload 7
    //   243: invokestatic 519	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   246: invokevirtual 936	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   249: iload 6
    //   251: ifne +123 -> 374
    //   254: iload 4
    //   256: ifeq +112 -> 368
    //   259: iconst_1
    //   260: istore 5
    //   262: aload 10
    //   264: ldc_w 614
    //   267: iload 5
    //   269: invokestatic 605	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   272: invokevirtual 608	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   275: aload_0
    //   276: getfield 306	bfz:e	Lbha;
    //   279: ldc_w 595
    //   282: aload 10
    //   284: invokevirtual 474	bha:a	(Ljava/lang/String;Landroid/content/ContentValues;)J
    //   287: pop2
    //   288: return
    //   289: aload_2
    //   290: getfield 939	czb:b	Ljava/lang/String;
    //   293: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   296: ifne +45 -> 341
    //   299: ldc_w 943
    //   302: astore 9
    //   304: iconst_2
    //   305: anewarray 66	java/lang/String
    //   308: astore_3
    //   309: aload_3
    //   310: iconst_0
    //   311: aload_2
    //   312: getfield 939	czb:b	Ljava/lang/String;
    //   315: aastore
    //   316: aload_3
    //   317: iconst_1
    //   318: aload_1
    //   319: aastore
    //   320: aload 9
    //   322: astore_2
    //   323: goto -219 -> 104
    //   326: astore_1
    //   327: aconst_null
    //   328: astore_2
    //   329: aload_2
    //   330: ifnull +9 -> 339
    //   333: aload_2
    //   334: invokeinterface 421 1 0
    //   339: aload_1
    //   340: athrow
    //   341: aconst_null
    //   342: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   345: ifne +86 -> 431
    //   348: ldc_w 945
    //   351: astore_2
    //   352: iconst_2
    //   353: anewarray 66	java/lang/String
    //   356: astore_3
    //   357: aload_3
    //   358: iconst_0
    //   359: aconst_null
    //   360: aastore
    //   361: aload_3
    //   362: iconst_1
    //   363: aload_1
    //   364: aastore
    //   365: goto -261 -> 104
    //   368: iconst_0
    //   369: istore 5
    //   371: goto -109 -> 262
    //   374: aload_0
    //   375: getfield 306	bfz:e	Lbha;
    //   378: ldc_w 595
    //   381: aload 10
    //   383: ldc_w 597
    //   386: iconst_2
    //   387: anewarray 66	java/lang/String
    //   390: dup
    //   391: iconst_0
    //   392: lload 7
    //   394: invokestatic 506	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   397: aastore
    //   398: dup
    //   399: iconst_1
    //   400: aload_1
    //   401: aastore
    //   402: invokevirtual 511	bha:a	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   405: pop
    //   406: return
    //   407: astore_1
    //   408: goto -79 -> 329
    //   411: astore_1
    //   412: aconst_null
    //   413: astore_2
    //   414: goto -85 -> 329
    //   417: iconst_0
    //   418: istore 5
    //   420: goto -211 -> 209
    //   423: iconst_0
    //   424: istore 5
    //   426: aconst_null
    //   427: astore_3
    //   428: goto -219 -> 209
    //   431: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	432	0	this	bfz
    //   0	432	1	paramString	String
    //   0	432	2	paramczb	czb
    //   0	432	3	paramczd	czd
    //   0	432	4	paramBoolean	boolean
    //   207	218	5	i1	int
    //   39	211	6	i2	int
    //   58	335	7	l1	long
    //   83	238	9	str	String
    //   7	375	10	localContentValues	ContentValues
    // Exception table:
    //   from	to	target	type
    //   41	60	326	finally
    //   70	80	326	finally
    //   85	97	326	finally
    //   104	127	326	finally
    //   289	299	326	finally
    //   304	316	326	finally
    //   341	348	326	finally
    //   352	357	326	finally
    //   129	138	407	finally
    //   143	149	407	finally
    //   189	198	407	finally
    //   200	209	407	finally
    //   211	226	407	finally
    //   154	187	411	finally
  }
  
  private void a(String paramString1, String paramString2, long paramLong1, long paramLong2, String paramString3)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString2).append(" conversationid: ").append(paramString1);
    localStringBuilder.append(" old ").append(paramString3).append(": ").append(Long.toString(paramLong1));
    localStringBuilder.append(" new ").append(paramString3).append(": ").append(Long.toString(paramLong2));
    aal.a(f.g(), 2697, localStringBuilder.toString());
  }
  
  private void a(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    int i1 = 0;
    if (!paramString1.equals(paramString2)) {
      paramContentValues.put("conversation_id", paramString2);
    }
    e.a("conversations", paramContentValues, "conversation_id=?", new String[] { paramString1 });
    paramString1 = new ContentValues();
    Object localObject = b;
    int i2 = localObject.length;
    while (i1 < i2)
    {
      String str = localObject[i1];
      if (paramContentValues.containsKey(str)) {
        paramString1.put(str, paramContentValues.getAsInteger(str));
      }
      i1 += 1;
    }
    if (paramString1.size() != 0)
    {
      paramString2 = ae(paramString2);
      if (paramString2.size() > 0)
      {
        e.a();
        try
        {
          paramContentValues = paramString2.iterator();
          while (paramContentValues.hasNext())
          {
            localObject = (String)paramContentValues.next();
            e.a("conversations", paramString1, "conversation_id=?", new String[] { localObject });
          }
          return;
        }
        finally
        {
          e.c();
          paramString2 = paramString2.iterator();
          while (paramString2.hasNext())
          {
            paramString2.next();
            bft.a(f);
          }
          e.b();
          e.c();
          paramString1 = paramString2.iterator();
          while (paramString1.hasNext())
          {
            paramString1.next();
            bft.a(f);
          }
        }
      }
    }
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(paramString2, paramString4);
    localContentValues.put(paramString3, paramString5);
    e.a(paramString1, localContentValues, String.valueOf(paramString2).length() + 8 + String.valueOf(paramString3).length() + paramString2 + "=? OR " + paramString3 + "=?", new String[] { paramString4, paramString5 });
  }
  
  public static boolean a(dza paramdza)
  {
    return paramdza == dza.e;
  }
  
  public static boolean a(String paramString)
  {
    return paramString.startsWith("client_generated:");
  }
  
  private boolean a(String paramString1, long paramLong1, long paramLong2, int paramInt1, czb paramczb, String paramString2, String paramString3, long paramLong3, emc paramemc, String paramString4, String paramString5, int paramInt2, int paramInt3)
  {
    bgk localbgk = ai(paramString1);
    if (a <= paramLong1)
    {
      String str1 = paramString2;
      if (paramString2 != null)
      {
        str1 = paramString2;
        if (paramString2.length() > 500) {
          str1 = paramString2.substring(0, 500);
        }
      }
      if (c)
      {
        paramString2 = String.valueOf("updateLatestEvent with conversationId=");
        String str2 = String.valueOf(paramczb);
        new StringBuilder(String.valueOf(paramString2).length() + 164 + String.valueOf(paramString1).length() + String.valueOf(str2).length() + String.valueOf(str1).length() + String.valueOf(paramString3).length()).append(paramString2).append(paramString1).append(" timestamp=").append(paramLong1).append(" expirationTimestamp").append(paramLong2).append(" type=").append(paramInt1).append(" authorId=").append(str2).append(" text=").append(str1).append(" imageUrl=").append(paramString3).append(" smsType=").append(paramInt2).append(" voicemailDuration=").append(paramInt3);
      }
      if (paramczb != null)
      {
        paramczb = b;
        paramString2 = new ContentValues();
        paramString2.put("latest_message_timestamp", Long.valueOf(paramLong1));
        if ((paramInt1 != 1) && (paramInt1 != 8) && (paramInt1 != 10) && (paramInt1 != 11) && (paramLong1 > g)) {
          paramString2.put("has_chat_notifications", Integer.valueOf(1));
        }
        if (paramLong2 <= 0L) {
          break label487;
        }
        paramString2.put("latest_message_expiration_timestamp", Long.valueOf(paramLong2));
        label324:
        paramString2.put("snippet_type", Integer.valueOf(paramInt1));
        paramString2.put("snippet_message_row_id", Long.valueOf(paramLong3));
        paramString2.put("snippet_status", Integer.valueOf(paramemc.ordinal()));
        paramString2.put("snippet_sms_type", Integer.valueOf(paramInt2));
        switch (paramInt1)
        {
        }
      }
      for (;;)
      {
        e.a("conversations", paramString2, "conversation_id=?", new String[] { String.valueOf(paramString1) });
        bft.d(this);
        return true;
        paramczb = null;
        break;
        label487:
        paramString2.putNull("latest_message_expiration_timestamp");
        break label324;
        paramString2.put("snippet_author_chat_id", paramczb);
        paramString2.put("snippet_image_url", paramString3);
        paramString2.putNull("snippet_text");
        paramString2.putNull("snippet_new_conversation_name");
        paramString2.putNull("snippet_participant_keys");
        paramString2.putNull("snippet_voicemail_duration");
        continue;
        paramString2.put("snippet_author_chat_id", paramczb);
        paramString2.put("snippet_text", str1);
        paramString2.putNull("snippet_image_url");
        paramString2.putNull("snippet_new_conversation_name");
        paramString2.putNull("snippet_participant_keys");
        paramString2.putNull("snippet_voicemail_duration");
        continue;
        paramString2.put("snippet_author_chat_id", paramczb);
        paramString2.put("snippet_text", str1);
        paramString2.put("snippet_image_url", paramString3);
        paramString2.putNull("snippet_new_conversation_name");
        paramString2.putNull("snippet_participant_keys");
        paramString2.putNull("snippet_voicemail_duration");
        continue;
        paramString2.put("snippet_author_chat_id", paramczb);
        paramString2.putNull("snippet_text");
        paramString2.putNull("snippet_image_url");
        paramString2.putNull("snippet_new_conversation_name");
        paramString2.putNull("snippet_participant_keys");
        paramString2.putNull("snippet_voicemail_duration");
        continue;
        paramString2.putNull("snippet_author_chat_id");
        paramString2.putNull("snippet_text");
        paramString2.putNull("snippet_image_url");
        paramString2.putNull("snippet_new_conversation_name");
        paramString2.putNull("snippet_participant_keys");
        paramString2.putNull("snippet_voicemail_duration");
        continue;
        paramString2.put("snippet_author_chat_id", paramczb);
        paramString2.putNull("snippet_text");
        paramString2.putNull("snippet_image_url");
        paramString2.putNull("snippet_new_conversation_name");
        paramString2.put("snippet_participant_keys", paramString5);
        paramString2.putNull("snippet_voicemail_duration");
        continue;
        paramString2.put("snippet_author_chat_id", paramczb);
        paramString2.put("snippet_new_conversation_name", paramString4);
        paramString2.putNull("snippet_text");
        paramString2.putNull("snippet_image_url");
        paramString2.putNull("snippet_participant_keys");
        paramString2.putNull("snippet_voicemail_duration");
        continue;
        paramString2.put("previous_latest_timestamp", Long.valueOf(a));
        paramString2.putNull("snippet_image_url");
        paramString2.putNull("snippet_author_chat_id");
        paramString2.putNull("snippet_new_conversation_name");
        paramString2.putNull("snippet_participant_keys");
        paramString2.putNull("snippet_voicemail_duration");
        continue;
        paramString2.put("snippet_author_chat_id", paramczb);
        paramString2.put("snippet_text", str1);
        paramString2.putNull("snippet_image_url");
        paramString2.putNull("snippet_new_conversation_name");
        paramString2.putNull("snippet_participant_keys");
        paramString2.put("snippet_voicemail_duration", Integer.valueOf(paramInt3));
      }
    }
    if (c)
    {
      paramString1 = String.valueOf("updateLatestMessage skipped. currentLatestMessageTimestamp=");
      paramLong2 = a;
      new StringBuilder(String.valueOf(paramString1).length() + 61).append(paramString1).append(paramLong2).append(" passed in timestamp=").append(paramLong1);
    }
    return false;
  }
  
  private static boolean a(List<czb> paramList, czb paramczb)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      czb localczb = (czb)paramList.next();
      if ((!TextUtils.isEmpty(a)) && (!TextUtils.isEmpty(a)) && (a.equals(a))) {
        return true;
      }
    }
    return false;
  }
  
  private boolean ag(String paramString)
  {
    try
    {
      paramString = e.a("conversations", new String[] { "conversation_id" }, "conversation_id=?", new String[] { paramString }, null);
      boolean bool;
      if ((paramString == null) || (paramString != null)) {
        paramString.close();
      }
    }
    finally
    {
      try
      {
        bool = paramString.moveToFirst();
        if (bool)
        {
          if (paramString != null) {
            paramString.close();
          }
          return true;
        }
        if (paramString != null) {
          paramString.close();
        }
        return false;
      }
      finally {}
      localObject1 = finally;
      paramString = null;
    }
    throw ((Throwable)localObject1);
  }
  
  private Cursor ah(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      Cursor localCursor2 = e.a(D(), new String[] { paramString });
      Cursor localCursor1;
      if (localCursor2 != null)
      {
        localCursor1 = localCursor2;
        if (localCursor2.getCount() != 0) {}
      }
      else
      {
        if (localCursor2 != null) {
          localCursor2.close();
        }
        localCursor1 = e.a(E(), new String[] { paramString });
      }
      return localCursor1;
    }
    return e.a(F(), null);
  }
  
  /* Error */
  private bgk ai(String paramString)
  {
    // Byte code:
    //   0: getstatic 55	bfz:c	Z
    //   3: ifeq +23 -> 26
    //   6: aload_1
    //   7: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   10: astore_2
    //   11: aload_2
    //   12: invokevirtual 343	java/lang/String:length	()I
    //   15: ifeq +159 -> 174
    //   18: ldc_w 1061
    //   21: aload_2
    //   22: invokevirtual 347	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   25: pop
    //   26: new 1003	bgk
    //   29: dup
    //   30: invokespecial 1062	bgk:<init>	()V
    //   33: astore_2
    //   34: aload_0
    //   35: getfield 306	bfz:e	Lbha;
    //   38: ldc_w 263
    //   41: getstatic 151	bfz:s	[Ljava/lang/String;
    //   44: ldc_w 555
    //   47: iconst_1
    //   48: anewarray 66	java/lang/String
    //   51: dup
    //   52: iconst_0
    //   53: aload_1
    //   54: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   57: aastore
    //   58: aconst_null
    //   59: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   62: astore_1
    //   63: aload_1
    //   64: invokeinterface 537 1 0
    //   69: ifeq +93 -> 162
    //   72: aload_2
    //   73: aload_1
    //   74: iconst_0
    //   75: invokeinterface 493 2 0
    //   80: putfield 1004	bgk:a	J
    //   83: aload_2
    //   84: aload_1
    //   85: iconst_1
    //   86: invokeinterface 493 2 0
    //   91: putfield 1063	bgk:b	J
    //   94: aload_2
    //   95: aload_1
    //   96: iconst_2
    //   97: invokeinterface 411 2 0
    //   102: putfield 1064	bgk:c	I
    //   105: aload_2
    //   106: aload_1
    //   107: iconst_3
    //   108: invokeinterface 401 2 0
    //   113: putfield 1066	bgk:e	Ljava/lang/String;
    //   116: aload_2
    //   117: aload_1
    //   118: iconst_4
    //   119: invokeinterface 401 2 0
    //   124: putfield 1067	bgk:d	Ljava/lang/String;
    //   127: aload_2
    //   128: aload_1
    //   129: iconst_5
    //   130: invokeinterface 401 2 0
    //   135: putfield 1068	bgk:f	Ljava/lang/String;
    //   138: aload_2
    //   139: aload_1
    //   140: bipush 6
    //   142: invokeinterface 493 2 0
    //   147: putfield 1027	bgk:g	J
    //   150: aload_2
    //   151: aload_1
    //   152: bipush 7
    //   154: invokeinterface 493 2 0
    //   159: putfield 1070	bgk:h	J
    //   162: aload_1
    //   163: ifnull +9 -> 172
    //   166: aload_1
    //   167: invokeinterface 421 1 0
    //   172: aload_2
    //   173: areturn
    //   174: new 66	java/lang/String
    //   177: dup
    //   178: ldc_w 1061
    //   181: invokespecial 376	java/lang/String:<init>	(Ljava/lang/String;)V
    //   184: pop
    //   185: goto -159 -> 26
    //   188: astore_2
    //   189: aconst_null
    //   190: astore_1
    //   191: aload_1
    //   192: ifnull +9 -> 201
    //   195: aload_1
    //   196: invokeinterface 421 1 0
    //   201: aload_2
    //   202: athrow
    //   203: astore_2
    //   204: goto -13 -> 191
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	207	0	this	bfz
    //   0	207	1	paramString	String
    //   10	163	2	localObject1	Object
    //   188	14	2	localObject2	Object
    //   203	1	2	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   34	63	188	finally
    //   63	162	203	finally
  }
  
  private static String aj(String paramString)
  {
    if ((paramString == null) || ("_sms_only_account".equals(paramString))) {}
    while (paramString.length() < 6) {
      return paramString;
    }
    return paramString.substring(paramString.length() - 6);
  }
  
  /* Error */
  private bgu ak(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: getstatic 55	bfz:c	Z
    //   5: ifeq +76 -> 81
    //   8: ldc_w 1079
    //   11: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   14: astore_3
    //   15: aload_0
    //   16: getfield 302	bfz:f	Lbfd;
    //   19: invokevirtual 339	bfd:a	()Ljava/lang/String;
    //   22: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   25: astore 4
    //   27: new 561	java/lang/StringBuilder
    //   30: dup
    //   31: aload_3
    //   32: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   35: invokevirtual 343	java/lang/String:length	()I
    //   38: bipush 9
    //   40: iadd
    //   41: aload_1
    //   42: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   45: invokevirtual 343	java/lang/String:length	()I
    //   48: iadd
    //   49: aload 4
    //   51: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   54: invokevirtual 343	java/lang/String:length	()I
    //   57: iadd
    //   58: invokespecial 564	java/lang/StringBuilder:<init>	(I)V
    //   61: aload_3
    //   62: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: aload_1
    //   66: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: ldc_w 1081
    //   72: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: aload 4
    //   77: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: pop
    //   81: aload_0
    //   82: getfield 306	bfz:e	Lbha;
    //   85: ldc_w 263
    //   88: getstatic 253	bfz:y	[Ljava/lang/String;
    //   91: ldc_w 555
    //   94: iconst_1
    //   95: anewarray 66	java/lang/String
    //   98: dup
    //   99: iconst_0
    //   100: aload_1
    //   101: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   104: aastore
    //   105: aconst_null
    //   106: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   109: astore_3
    //   110: aload_3
    //   111: invokeinterface 537 1 0
    //   116: ifeq +67 -> 183
    //   119: new 349	bgu
    //   122: dup
    //   123: invokespecial 350	bgu:<init>	()V
    //   126: astore_1
    //   127: aload_1
    //   128: aload_3
    //   129: iconst_0
    //   130: invokeinterface 493 2 0
    //   135: putfield 363	bgu:a	J
    //   138: aload_1
    //   139: aload_3
    //   140: iconst_1
    //   141: invokeinterface 493 2 0
    //   146: putfield 367	bgu:b	J
    //   149: aload_1
    //   150: aload_3
    //   151: iconst_2
    //   152: invokeinterface 493 2 0
    //   157: putfield 369	bgu:c	J
    //   160: aload_1
    //   161: aload_3
    //   162: iconst_3
    //   163: invokeinterface 493 2 0
    //   168: putfield 373	bgu:d	J
    //   171: aload_3
    //   172: ifnull +9 -> 181
    //   175: aload_3
    //   176: invokeinterface 421 1 0
    //   181: aload_1
    //   182: areturn
    //   183: aload_3
    //   184: ifnull +9 -> 193
    //   187: aload_3
    //   188: invokeinterface 421 1 0
    //   193: ldc_w 1083
    //   196: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   199: astore_2
    //   200: aload_1
    //   201: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   204: astore_1
    //   205: aload_1
    //   206: invokevirtual 343	java/lang/String:length	()I
    //   209: ifeq +35 -> 244
    //   212: aload_2
    //   213: aload_1
    //   214: invokevirtual 347	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   217: astore_1
    //   218: ldc_w 629
    //   221: aload_1
    //   222: iconst_0
    //   223: anewarray 4	java/lang/Object
    //   226: invokestatic 1085	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   229: aconst_null
    //   230: areturn
    //   231: astore_1
    //   232: aload_2
    //   233: ifnull +9 -> 242
    //   236: aload_2
    //   237: invokeinterface 421 1 0
    //   242: aload_1
    //   243: athrow
    //   244: new 66	java/lang/String
    //   247: dup
    //   248: aload_2
    //   249: invokespecial 376	java/lang/String:<init>	(Ljava/lang/String;)V
    //   252: astore_1
    //   253: goto -35 -> 218
    //   256: astore_1
    //   257: aload_3
    //   258: astore_2
    //   259: goto -27 -> 232
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	262	0	this	bfz
    //   0	262	1	paramString	String
    //   1	258	2	localObject1	Object
    //   14	244	3	localObject2	Object
    //   25	51	4	str	String
    // Exception table:
    //   from	to	target	type
    //   81	110	231	finally
    //   110	171	256	finally
  }
  
  private void al(String paramString)
  {
    e.a();
    for (;;)
    {
      try
      {
        if (!TextUtils.isEmpty(paramString)) {
          continue;
        }
        paramString = e.a("conversations JOIN merge_keys ON (conversations.conversation_id=merge_keys.conversation_id)", bgm.a, "conversation_type=1", null, null);
        if (paramString == null) {
          continue;
        }
        localObject1 = null;
        try
        {
          if (!paramString.moveToNext()) {
            continue;
          }
          String str1 = paramString.getString(0);
          String str2 = paramString.getString(1);
          String str3 = paramString.getString(2);
          if ((str2 == null) && (str3 == null)) {
            continue;
          }
          if (localObject1 != null) {
            continue;
          }
          ContentValues localContentValues = new ContentValues();
          if (str2 != null) {
            localContentValues.put("chat_ringtone_uri", str2);
          }
          if (str3 != null) {
            localContentValues.put("hangout_ringtone_uri", str3);
          }
          localObject1 = localContentValues;
          if (localContentValues.size() <= 0) {
            continue;
          }
          e.a("conversations", localContentValues, "conversation_id IN (SELECT conversation_id FROM merge_keys WHERE merge_key=?)", new String[] { str1 });
          localObject1 = localContentValues;
          continue;
          if (localObject1 == null) {
            continue;
          }
        }
        finally
        {
          localObject1 = paramString;
          paramString = (String)localObject2;
        }
      }
      finally
      {
        Object localObject3;
        Object localObject1 = null;
        continue;
      }
      ((Cursor)localObject1).close();
      e.c();
      throw paramString;
      paramString = e.a("conversations JOIN merge_keys ON (conversations.conversation_id=merge_keys.conversation_id)", bgm.a, "conversation_type=1 AND conversations.conversation_id=?", new String[] { paramString }, null);
      continue;
      ((ContentValues)localObject1).clear();
      localObject3 = localObject1;
    }
    e.b();
    if (paramString != null) {
      paramString.close();
    }
    e.c();
  }
  
  private boolean am(String paramString)
  {
    e.a();
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("last_used", Long.valueOf(System.currentTimeMillis()));
      int i1 = e.a("sticker_photos", localContentValues, "photo_id=?", new String[] { paramString });
      paramString = e.a("sticker_photos", new String[] { "album_id" }, "photo_id=?", new String[] { paramString }, null);
      if ((paramString == null) || (paramString != null)) {
        paramString.close();
      }
    }
    finally
    {
      try
      {
        if ((paramString.moveToFirst()) && (paramString.getString(0) != null))
        {
          localContentValues.clear();
          localContentValues.put("last_used", Long.valueOf(System.currentTimeMillis()));
          e.a("sticker_albums", localContentValues, "album_id=?", new String[] { paramString.getString(0) });
        }
        e.b();
        if (paramString != null) {
          paramString.close();
        }
        e.c();
        if (i1 != 1) {
          break label203;
        }
        return true;
      }
      finally
      {
        for (;;) {}
      }
      localObject1 = finally;
      paramString = null;
    }
    e.c();
    throw ((Throwable)localObject1);
    label203:
    return false;
  }
  
  public static int b(bfz parambfz, String paramString)
  {
    eie localeie = eie.a();
    try
    {
      int i1 = a(parambfz, paramString, localeie);
      return i1;
    }
    finally
    {
      localeie.c();
    }
  }
  
  public static long b(long paramLong, int paramInt)
  {
    long l2 = System.currentTimeMillis() * 1000L;
    long l1 = l2;
    if (l2 <= paramLong)
    {
      l1 = paramLong % paramInt;
      if (l1 != 0L) {
        break label39;
      }
    }
    label39:
    for (l1 = paramInt;; l1 = paramInt - l1)
    {
      l1 += paramLong;
      return l1;
    }
  }
  
  private static ContentValues b(ega paramega)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(paramega.r()));
    localContentValues.put("notification_level", Integer.valueOf(paramega.q()));
    localContentValues.put("conversation_type", Integer.valueOf(paramega.d()));
    if (paramega.z()) {
      localContentValues.put("sort_timestamp", Long.valueOf(paramega.w()));
    }
    if (!TextUtils.isEmpty(paramega.e()))
    {
      localContentValues.put("name", paramega.e());
      localContentValues.put("metadata_present", Integer.valueOf(1));
      localContentValues.put("is_draft", Integer.valueOf(0));
      localContentValues.put("conversation_hash", paramega.x());
      localContentValues.put("otr_status", Integer.valueOf(paramega.t()));
      localContentValues.put("otr_toggle", Integer.valueOf(paramega.u()));
      localContentValues.put("is_temporary", Boolean.valueOf(paramega.y()));
      localContentValues.put("inviter_affinity", Integer.valueOf(paramega.o()));
      if ((paramega.s() == null) || (paramega.s().length <= 0)) {
        break label249;
      }
      localContentValues.put("view", Integer.valueOf(paramega.s()[0]));
    }
    for (;;)
    {
      paramega = paramega.p();
      if (paramega != null)
      {
        localContentValues.put("inviter_gaia_id", a);
        localContentValues.put("inviter_chat_id", b);
      }
      return localContentValues;
      localContentValues.putNull("name");
      break;
      label249:
      localContentValues.putNull("view");
    }
  }
  
  private Cursor b(String paramString, czb paramczb)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return null;
      m(a, b);
      String str;
      if (!TextUtils.isEmpty(a))
      {
        str = a;
        paramczb = "gaia_id";
      }
      while (!TextUtils.isEmpty(paramczb))
      {
        bha localbha = e;
        paramczb = String.valueOf(paramczb).concat("=?");
        return localbha.a("participants_view", new String[] { paramString }, paramczb, new String[] { str }, null);
        if (!TextUtils.isEmpty(b))
        {
          str = b;
          paramczb = "chat_id";
        }
        else
        {
          str = null;
          paramczb = null;
        }
      }
    }
  }
  
  private String b(String paramString1, String paramString2, String paramString3)
  {
    String str = null;
    int i1;
    if ((c) && (!TextUtils.isEmpty(paramString1)))
    {
      i1 = 1;
      label19:
      hbs.b("Expected condition to be false", TextUtils.isEmpty(paramString3));
      if (TextUtils.isEmpty(paramString2)) {
        break label209;
      }
    }
    try
    {
      localCursor = e.a("conversations", new String[] { paramString3 }, "conversation_id=?", new String[] { paramString2 }, null);
      if (localCursor == null) {}
    }
    finally
    {
      try
      {
        if (localCursor.moveToFirst())
        {
          str = localCursor.getString(0);
          if (i1 != 0) {
            new StringBuilder(String.valueOf(paramString1).length() + 34 + String.valueOf(paramString2).length() + String.valueOf(paramString3).length() + String.valueOf(str).length()).append(paramString1).append(", conversationId ").append(paramString2).append(", query ").append(paramString3).append(" returns ").append(str);
          }
          if (localCursor != null) {
            localCursor.close();
          }
          return str;
          i1 = 0;
          break label19;
        }
        if (localCursor != null) {
          localCursor.close();
        }
        label209:
        if (i1 != 0) {
          new StringBuilder(String.valueOf(paramString1).length() + 49 + String.valueOf(paramString2).length() + String.valueOf(paramString3).length()).append(paramString1).append(", conversationId ").append(paramString2).append(", query ").append(paramString3).append(" returns null (no match)");
        }
        return null;
      }
      finally
      {
        for (;;)
        {
          Cursor localCursor;
          paramString2 = localCursor;
        }
      }
      paramString1 = finally;
      paramString2 = str;
    }
    if (paramString2 != null) {
      paramString2.close();
    }
    throw paramString1;
  }
  
  private static List<cyx> b(Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramCursor.getColumnCount() == 21) {
      return localArrayList;
    }
    List localList1 = EsProvider.c(paramCursor.getString(21));
    List localList2 = EsProvider.c(paramCursor.getString(22));
    List localList3 = EsProvider.c(paramCursor.getString(23));
    List localList4 = EsProvider.c(paramCursor.getString(24));
    List localList5 = EsProvider.c(paramCursor.getString(26));
    List localList6 = EsProvider.c(paramCursor.getString(25));
    List localList7 = EsProvider.c(paramCursor.getString(27));
    List localList8 = EsProvider.c(paramCursor.getString(28));
    List localList9 = EsProvider.c(paramCursor.getString(29));
    List localList10 = EsProvider.c(paramCursor.getString(30));
    paramCursor = EsProvider.c(paramCursor.getString(31));
    int i1 = 0;
    for (;;)
    {
      if ((i1 >= localList1.size()) || (Integer.parseInt((String)localList8.get(i1)) == 1)) {}
      try
      {
        czd localczd = czd.values()[Integer.parseInt((String)localList7.get(i1))];
        localArrayList.add(aal.a(localczd, (String)localList1.get(i1), (String)localList2.get(i1), (String)localList4.get(i1), (String)localList3.get(i1), (String)localList5.get(i1), (String)localList9.get(i1), (String)localList6.get(i1), (String)localList10.get(i1), (String)paramCursor.get(i1), Boolean.valueOf(false), 0));
      }
      catch (NumberFormatException localNumberFormatException)
      {
        for (;;) {}
      }
      i1 += 1;
    }
    return localArrayList;
  }
  
  public static void b(Context paramContext)
  {
    awo localawo = (awo)ilh.a(paramContext, awo.class);
    Iterator localIterator = dvd.r().iterator();
    for (;;)
    {
      Object localObject;
      if (localIterator.hasNext()) {
        localObject = (bfd)localIterator.next();
      }
      try
      {
        int i1 = ((bfd)localObject).g();
        if (!localawo.d(i1)) {
          continue;
        }
        a(paramContext, (bfd)localObject, false);
        bft.a(i1);
      }
      catch (hqd localhqd)
      {
        localObject = String.valueOf(ezi.b(((bfd)localObject).a()));
        if (((String)localObject).length() != 0) {}
        for (localObject = "Account removed: ".concat((String)localObject);; localObject = new String("Account removed: "))
        {
          ezi.c("Babel_ConvHelper", (String)localObject, localhqd);
          break;
        }
        return;
      }
      catch (bgz localbgz)
      {
        for (;;) {}
      }
    }
  }
  
  private boolean b(czb paramczb, String paramString)
  {
    String str2 = null;
    for (;;)
    {
      Object localObject;
      String str1;
      int i1;
      int i2;
      try
      {
        if (!TextUtils.isEmpty(a)) {
          if (!TextUtils.equals(a, b))
          {
            localObject = e;
            str1 = a;
            String str3 = b;
            localObject = ((bha)localObject).a("participants_view", new String[] { "_id", "batch_gebi_tag", "chat_id", "gaia_id", "phone_id" }, "gaia_id=? OR chat_id=?", new String[] { str1, str3 }, null);
            if (localObject == null) {
              break label479;
            }
          }
        }
      }
      finally
      {
        try
        {
          if (!((Cursor)localObject).moveToFirst()) {
            break label479;
          }
          str2 = ((Cursor)localObject).getString(0);
          if (((Cursor)localObject).getString(1) == null)
          {
            i1 = 1;
            str1 = ((Cursor)localObject).getString(2);
            i2 = 1;
            if (localObject != null) {
              ((Cursor)localObject).close();
            }
            if (i1 != 0) {
              break label473;
            }
            localObject = new ContentValues();
            ((ContentValues)localObject).put("batch_gebi_tag", paramString);
            if ((!TextUtils.isEmpty(b)) && (TextUtils.isEmpty(str1))) {
              ((ContentValues)localObject).put("chat_id", b);
            }
            if (!TextUtils.isEmpty(a)) {
              ((ContentValues)localObject).put("gaia_id", a);
            }
            if (i2 != 0) {
              break label430;
            }
            if (e.a("participants", (ContentValues)localObject) < 1L) {
              ezi.e("Babel_ConvHelper", "insert failed", new Object[0]);
            }
            return true;
            localObject = e;
            str1 = a;
            localObject = ((bha)localObject).a("participants_view", new String[] { "_id", "batch_gebi_tag", "chat_id", "gaia_id", "phone_id" }, "gaia_id=?", new String[] { str1 }, null);
            continue;
            if (TextUtils.isEmpty(b)) {
              break label490;
            }
            localObject = e;
            str1 = b;
            localObject = ((bha)localObject).a("participants_view", new String[] { "_id", "batch_gebi_tag", "chat_id" }, "chat_id=?", new String[] { str1 }, null);
            continue;
          }
          i1 = 0;
          continue;
          paramczb = finally;
          localObject = null;
        }
        finally
        {
          continue;
        }
        if (localObject != null) {
          ((Cursor)localObject).close();
        }
      }
      label430:
      if (e.a("participants", (ContentValues)localObject, "_id=?", new String[] { str2 }) <= 0)
      {
        ezi.e("Babel_ConvHelper", "update failed on rowid lookup", new Object[0]);
        continue;
        label473:
        return false;
        label479:
        str1 = null;
        i1 = 0;
        i2 = 0;
        continue;
        label490:
        localObject = null;
      }
    }
  }
  
  public static boolean b(String paramString)
  {
    return paramString.startsWith("client_generated:sms:");
  }
  
  private static bgi c(Cursor paramCursor)
  {
    boolean bool = true;
    String str = paramCursor.getString(0);
    byte[] arrayOfByte;
    int i1;
    if (paramCursor.isNull(1))
    {
      arrayOfByte = null;
      i1 = paramCursor.getInt(2);
      if (paramCursor.getInt(3) != 1) {
        break label66;
      }
    }
    for (;;)
    {
      return new bgi(str, arrayOfByte, i1, bool);
      arrayOfByte = paramCursor.getBlob(1);
      break;
      label66:
      bool = false;
    }
  }
  
  public static Long c(String paramString)
  {
    String str = paramString.replace("client_generated:", "");
    Object localObject = str;
    if (str.startsWith("sms:")) {
      localObject = str.replace("sms:", "");
    }
    try
    {
      localObject = Long.valueOf((String)localObject);
      return (Long)localObject;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() == 0) {}
    }
    for (paramString = "Malformed client-generated-id: ".concat(paramString);; paramString = new String("Malformed client-generated-id: "))
    {
      ezi.e("Babel_ConvHelper", paramString, new Object[0]);
      hbs.a("Malformed client-generated-id");
      return null;
    }
  }
  
  public static String c(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int[] arrayOfInt = dvd.w();
    int i2 = arrayOfInt.length;
    int i1 = 0;
    while (i1 < i2)
    {
      localStringBuilder.append(arrayOfInt[i1]).append("|");
      i1 += 1;
    }
    localStringBuilder.append(((fak)ilh.a(paramContext, fak.class)).c());
    return localStringBuilder.toString();
  }
  
  private void c(int paramInt)
  {
    String str = EsProvider.a(paramInt);
    bff.b(a, g().g(), str);
  }
  
  public static long d(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return 0L;
    }
    return aal.a(c(paramString), 0L);
  }
  
  private bgo d(Cursor paramCursor)
  {
    emd localemd = emd.values()[paramCursor.getInt(5)];
    emc localemc = emc.values()[paramCursor.getInt(4)];
    String str = paramCursor.getString(3);
    switch (bgb.a[localemd.ordinal()])
    {
    default: 
      str = aal.a(localemd, f, localemc, null, paramCursor.getString(2), paramCursor.getString(26), paramCursor.getString(27), paramCursor.getInt(33), true);
    }
    return new bgo(paramCursor.getString(0), paramCursor.getString(1), paramCursor.getString(2), paramCursor.getString(3), str, localemc, localemd, paramCursor.getLong(6), paramCursor.getLong(7), paramCursor.getString(8), paramCursor.getString(9), paramCursor.getString(10), paramCursor.getString(11), paramCursor.getString(12), paramCursor.getString(13), paramCursor.getString(14), paramCursor.getDouble(15), paramCursor.getDouble(16), paramCursor.getString(17), paramCursor.getString(18), paramCursor.getInt(19), paramCursor.getString(20), paramCursor.getInt(21), paramCursor.getInt(22), paramCursor.getInt(23), paramCursor.getString(24), paramCursor.getInt(25), paramCursor.getString(26), paramCursor.getString(27), paramCursor.getString(28), paramCursor.getInt(29), paramCursor.getString(32), paramCursor.getString(31), paramCursor.getString(30), paramCursor.getLong(34), paramCursor.getInt(35));
  }
  
  /* Error */
  private String d(czb paramczb)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: getstatic 55	bfz:c	Z
    //   5: ifeq +36 -> 41
    //   8: aload_1
    //   9: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   12: astore_2
    //   13: new 561	java/lang/StringBuilder
    //   16: dup
    //   17: aload_2
    //   18: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   21: invokevirtual 343	java/lang/String:length	()I
    //   24: bipush 41
    //   26: iadd
    //   27: invokespecial 564	java/lang/StringBuilder:<init>	(I)V
    //   30: ldc_w 1270
    //   33: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: aload_2
    //   37: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: pop
    //   41: aload_0
    //   42: ldc 74
    //   44: aload_1
    //   45: invokespecial 1272	bfz:b	(Ljava/lang/String;Lczb;)Landroid/database/Cursor;
    //   48: astore_1
    //   49: aload_1
    //   50: ifnull +36 -> 86
    //   53: aload_1
    //   54: invokeinterface 537 1 0
    //   59: ifeq +27 -> 86
    //   62: aload_1
    //   63: iconst_0
    //   64: invokeinterface 401 2 0
    //   69: astore_2
    //   70: aload_2
    //   71: astore_3
    //   72: aload_1
    //   73: ifnull +11 -> 84
    //   76: aload_1
    //   77: invokeinterface 421 1 0
    //   82: aload_2
    //   83: astore_3
    //   84: aload_3
    //   85: areturn
    //   86: aload_1
    //   87: ifnull -3 -> 84
    //   90: aload_1
    //   91: invokeinterface 421 1 0
    //   96: aconst_null
    //   97: areturn
    //   98: astore_1
    //   99: aconst_null
    //   100: astore_3
    //   101: aload_1
    //   102: astore_2
    //   103: aload_3
    //   104: ifnull +9 -> 113
    //   107: aload_3
    //   108: invokeinterface 421 1 0
    //   113: aload_2
    //   114: athrow
    //   115: astore_2
    //   116: aload_1
    //   117: astore_3
    //   118: goto -15 -> 103
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	121	0	this	bfz
    //   0	121	1	paramczb	czb
    //   12	102	2	localObject1	Object
    //   115	1	2	localObject2	Object
    //   1	117	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   41	49	98	finally
    //   53	70	115	finally
  }
  
  private static String d(String paramString, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SELECT ");
    int i1 = 0;
    while ((i1 < bge.a.length) && ((paramBoolean) || (i1 != 21)))
    {
      if (i1 > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(bge.a[i1]);
      i1 += 1;
    }
    localStringBuilder.append(" FROM ");
    localStringBuilder.append("conversations");
    localStringBuilder.append(' ');
    if (paramBoolean) {
      localStringBuilder.append(" join conversation_participants_view using (conversation_id) ");
    }
    if (!TextUtils.isEmpty(paramString)) {
      localStringBuilder.append(paramString);
    }
    localStringBuilder.append(" GROUP BY conversation_id ");
    localStringBuilder.append(";");
    return localStringBuilder.toString();
  }
  
  private List<cyx> d(List<cyx> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    if (localIterator.hasNext())
    {
      cyx localcyx = (cyx)localIterator.next();
      if (!TextUtils.isEmpty(d))
      {
        str = String.valueOf(d);
        if (str.length() == 0) {
          break label120;
        }
      }
      label120:
      for (String str = "participant.circleId not empty. Value = ".concat(str);; str = new String("participant.circleId not empty. Value = "))
      {
        ezi.e("Babel", str, new Object[0]);
        hbs.a("participant.circleId not empty.");
        if (f.b().a(b)) {
          break;
        }
        localArrayList.add(localcyx);
        break;
      }
    }
    hbs.a(Integer.valueOf(paramList.size() - 1), Integer.valueOf(localArrayList.size()));
    return localArrayList;
  }
  
  public static void d(Context paramContext)
  {
    int[] arrayOfInt = dvd.f();
    int i2 = arrayOfInt.length;
    int i1 = 0;
    if (i1 < i2)
    {
      int i3 = arrayOfInt[i1];
      bfz localbfz;
      Object localObject;
      if (dvd.e(i3) != null)
      {
        localbfz = new bfz(paramContext, i3);
        localObject = eie.a();
      }
      for (;;)
      {
        try
        {
          hbs.a("Expected condition to be true", ((eie)localObject).f());
          ((eie)localObject).c();
          long l1 = System.currentTimeMillis();
          i3 = b(localbfz, null);
          long l2 = System.currentTimeMillis();
          int i4 = a(localbfz, null);
          long l3 = System.currentTimeMillis();
          new StringBuilder(77).append("refreshContactsDerivedData timing ").append(l2 - l1).append(" & ").append(l3 - l2);
          if (i3 + 0 + i4 > 0) {
            bft.d(localbfz);
          }
          i1 += 1;
        }
        finally
        {
          ((eie)localObject).c();
        }
        ezi.d("Babel", String.valueOf(localObject).length() + 11 + (String)localObject + i3, new Object[0]);
      }
    }
  }
  
  private static void e(List<drp> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (drp)paramList.next();
      if (c != null)
      {
        localObject = new File(c);
        if (((File)localObject).exists()) {
          ((File)localObject).delete();
        }
      }
    }
  }
  
  private void f(String paramString, int paramInt)
  {
    if (c) {
      new StringBuilder(String.valueOf(paramString).length() + 74).append("setConversationInviteDisposition, conversationId=").append(paramString).append(", disposition=").append(paramInt);
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("disposition", Integer.valueOf(paramInt));
    e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString });
    bft.d(this);
  }
  
  public static String i()
  {
    String str = String.valueOf("client_generated:");
    long l1 = Math.abs(k.nextLong());
    return String.valueOf(str).length() + 20 + str + l1;
  }
  
  public static String j()
  {
    String str = String.valueOf("client_generated:sms:");
    long l1 = Math.abs(k.nextLong());
    return String.valueOf(str).length() + 20 + str + l1;
  }
  
  /* Error */
  private List<bgo> l(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 380	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 381	java/util/ArrayList:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: getfield 306	bfz:e	Lbha;
    //   12: ldc_w 1353
    //   15: getstatic 223	bfz:u	[Ljava/lang/String;
    //   18: aload_1
    //   19: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   22: ldc_w 1355
    //   25: invokevirtual 347	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   28: iconst_1
    //   29: anewarray 66	java/lang/String
    //   32: dup
    //   33: iconst_0
    //   34: aload_2
    //   35: aastore
    //   36: aconst_null
    //   37: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   40: astore_1
    //   41: aload_1
    //   42: invokeinterface 394 1 0
    //   47: ifeq +33 -> 80
    //   50: aload_3
    //   51: aload_0
    //   52: aload_1
    //   53: invokespecial 1357	bfz:d	(Landroid/database/Cursor;)Lbgo;
    //   56: invokevirtual 1199	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   59: pop
    //   60: goto -19 -> 41
    //   63: astore_3
    //   64: aload_1
    //   65: astore_2
    //   66: aload_3
    //   67: astore_1
    //   68: aload_2
    //   69: ifnull +9 -> 78
    //   72: aload_2
    //   73: invokeinterface 421 1 0
    //   78: aload_1
    //   79: athrow
    //   80: aload_1
    //   81: ifnull +9 -> 90
    //   84: aload_1
    //   85: invokeinterface 421 1 0
    //   90: aload_3
    //   91: areturn
    //   92: astore_1
    //   93: aconst_null
    //   94: astore_2
    //   95: goto -27 -> 68
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	bfz
    //   0	98	1	paramString1	String
    //   0	98	2	paramString2	String
    //   7	44	3	localArrayList	ArrayList
    //   63	28	3	localList	List<bgo>
    // Exception table:
    //   from	to	target	type
    //   41	60	63	finally
    //   8	41	92	finally
  }
  
  /* Error */
  private void m(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 10
    //   3: aconst_null
    //   4: astore 11
    //   6: iconst_0
    //   7: istore 5
    //   9: aload_1
    //   10: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   13: ifne +18 -> 31
    //   16: aload_2
    //   17: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   20: ifne +11 -> 31
    //   23: aload_1
    //   24: aload_2
    //   25: invokestatic 448	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   28: ifeq +4 -> 32
    //   31: return
    //   32: aload_0
    //   33: getfield 306	bfz:e	Lbha;
    //   36: ldc_w 484
    //   39: getstatic 98	bfz:j	[Ljava/lang/String;
    //   42: ldc_w 618
    //   45: iconst_1
    //   46: anewarray 66	java/lang/String
    //   49: dup
    //   50: iconst_0
    //   51: aload_1
    //   52: aastore
    //   53: aconst_null
    //   54: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   57: astore 9
    //   59: aload_0
    //   60: getfield 306	bfz:e	Lbha;
    //   63: ldc_w 484
    //   66: getstatic 98	bfz:j	[Ljava/lang/String;
    //   69: ldc_w 636
    //   72: iconst_1
    //   73: anewarray 66	java/lang/String
    //   76: dup
    //   77: iconst_0
    //   78: aload_2
    //   79: aastore
    //   80: aconst_null
    //   81: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   84: astore 12
    //   86: aload 9
    //   88: invokeinterface 537 1 0
    //   93: istore 6
    //   95: aload 12
    //   97: invokeinterface 537 1 0
    //   102: istore 7
    //   104: iload 6
    //   106: ifne +8 -> 114
    //   109: iload 7
    //   111: ifeq +39 -> 150
    //   114: iload 6
    //   116: ifeq +65 -> 181
    //   119: iload 7
    //   121: ifeq +60 -> 181
    //   124: aload 9
    //   126: iconst_0
    //   127: invokeinterface 401 2 0
    //   132: aload 12
    //   134: iconst_0
    //   135: invokeinterface 401 2 0
    //   140: invokestatic 448	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   143: istore 8
    //   145: iload 8
    //   147: ifeq +34 -> 181
    //   150: iconst_1
    //   151: istore_3
    //   152: iload_3
    //   153: ifeq +33 -> 186
    //   156: aload 9
    //   158: ifnull +10 -> 168
    //   161: aload 9
    //   163: invokeinterface 421 1 0
    //   168: aload 12
    //   170: ifnull -139 -> 31
    //   173: aload 12
    //   175: invokeinterface 421 1 0
    //   180: return
    //   181: iconst_0
    //   182: istore_3
    //   183: goto -31 -> 152
    //   186: aload_0
    //   187: ldc_w 263
    //   190: ldc_w 1360
    //   193: ldc -113
    //   195: aload_1
    //   196: aload_2
    //   197: invokespecial 1362	bfz:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   200: aload_0
    //   201: ldc_w 263
    //   204: ldc_w 1173
    //   207: ldc_w 1175
    //   210: aload_1
    //   211: aload_2
    //   212: invokespecial 1362	bfz:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   215: aload_0
    //   216: ldc_w 1364
    //   219: ldc 68
    //   221: ldc 70
    //   223: aload_1
    //   224: aload_2
    //   225: invokespecial 1362	bfz:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   228: aload_0
    //   229: ldc_w 760
    //   232: ldc_w 1366
    //   235: ldc -99
    //   237: aload_1
    //   238: aload_2
    //   239: invokespecial 1362	bfz:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   242: aload_0
    //   243: ldc_w 1368
    //   246: ldc 68
    //   248: ldc 70
    //   250: aload_1
    //   251: aload_2
    //   252: invokespecial 1362	bfz:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   255: iload 6
    //   257: ifeq +296 -> 553
    //   260: iload 7
    //   262: ifne +291 -> 553
    //   265: iconst_1
    //   266: istore_3
    //   267: aload 11
    //   269: astore 10
    //   271: iload 6
    //   273: ifeq +22 -> 295
    //   276: aload 11
    //   278: astore 10
    //   280: iload 7
    //   282: ifeq +13 -> 295
    //   285: aload 9
    //   287: iconst_0
    //   288: invokeinterface 401 2 0
    //   293: astore 10
    //   295: iload_3
    //   296: ifeq +262 -> 558
    //   299: aload 9
    //   301: iconst_0
    //   302: invokeinterface 401 2 0
    //   307: astore 11
    //   309: new 458	android/content/ContentValues
    //   312: dup
    //   313: invokespecial 459	android/content/ContentValues:<init>	()V
    //   316: astore 13
    //   318: aload 10
    //   320: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   323: ifne +303 -> 626
    //   326: aload 13
    //   328: ldc_w 610
    //   331: aload 11
    //   333: invokevirtual 465	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   336: aload_0
    //   337: getfield 306	bfz:e	Lbha;
    //   340: ldc_w 595
    //   343: aload 13
    //   345: ldc_w 1370
    //   348: iconst_1
    //   349: anewarray 66	java/lang/String
    //   352: dup
    //   353: iconst_0
    //   354: aload 10
    //   356: aastore
    //   357: invokevirtual 511	bha:a	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   360: istore 5
    //   362: aload 13
    //   364: invokevirtual 503	android/content/ContentValues:clear	()V
    //   367: aload 13
    //   369: ldc 68
    //   371: invokevirtual 1038	android/content/ContentValues:putNull	(Ljava/lang/String;)V
    //   374: aload 13
    //   376: ldc 70
    //   378: invokevirtual 1038	android/content/ContentValues:putNull	(Ljava/lang/String;)V
    //   381: aload_0
    //   382: getfield 306	bfz:e	Lbha;
    //   385: ldc_w 484
    //   388: aload 13
    //   390: ldc_w 508
    //   393: iconst_1
    //   394: anewarray 66	java/lang/String
    //   397: dup
    //   398: iconst_0
    //   399: aload 10
    //   401: aastore
    //   402: invokevirtual 511	bha:a	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   405: istore 4
    //   407: aload 13
    //   409: invokevirtual 503	android/content/ContentValues:clear	()V
    //   412: iload_3
    //   413: ifeq +158 -> 571
    //   416: aload 13
    //   418: ldc 70
    //   420: aload_2
    //   421: invokevirtual 465	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   424: aload 13
    //   426: ldc 96
    //   428: getstatic 642	czd:d	Lczd;
    //   431: invokevirtual 602	czd:ordinal	()I
    //   434: invokestatic 605	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   437: invokevirtual 608	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   440: aload 13
    //   442: ldc 84
    //   444: aload_2
    //   445: invokevirtual 465	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   448: aload_0
    //   449: getfield 306	bfz:e	Lbha;
    //   452: ldc_w 484
    //   455: aload 13
    //   457: ldc_w 508
    //   460: iconst_1
    //   461: anewarray 66	java/lang/String
    //   464: dup
    //   465: iconst_0
    //   466: aload 11
    //   468: aastore
    //   469: invokevirtual 511	bha:a	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   472: istore_3
    //   473: getstatic 55	bfz:c	Z
    //   476: ifeq +52 -> 528
    //   479: new 561	java/lang/StringBuilder
    //   482: dup
    //   483: sipush 134
    //   486: invokespecial 564	java/lang/StringBuilder:<init>	(I)V
    //   489: ldc_w 1372
    //   492: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   495: iload 5
    //   497: invokevirtual 577	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   500: ldc_w 1374
    //   503: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   506: iload 4
    //   508: invokevirtual 577	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   511: ldc_w 1376
    //   514: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   517: iload_3
    //   518: invokevirtual 577	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   521: ldc_w 1378
    //   524: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   527: pop
    //   528: aload 9
    //   530: ifnull +10 -> 540
    //   533: aload 9
    //   535: invokeinterface 421 1 0
    //   540: aload 12
    //   542: ifnull -511 -> 31
    //   545: aload 12
    //   547: invokeinterface 421 1 0
    //   552: return
    //   553: iconst_0
    //   554: istore_3
    //   555: goto -288 -> 267
    //   558: aload 12
    //   560: iconst_0
    //   561: invokeinterface 401 2 0
    //   566: astore 11
    //   568: goto -259 -> 309
    //   571: aload 13
    //   573: ldc 68
    //   575: aload_1
    //   576: invokevirtual 465	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   579: goto -131 -> 448
    //   582: astore_1
    //   583: aload 12
    //   585: astore_2
    //   586: aload 9
    //   588: ifnull +10 -> 598
    //   591: aload 9
    //   593: invokeinterface 421 1 0
    //   598: aload_2
    //   599: ifnull +9 -> 608
    //   602: aload_2
    //   603: invokeinterface 421 1 0
    //   608: aload_1
    //   609: athrow
    //   610: astore_1
    //   611: aconst_null
    //   612: astore_2
    //   613: aload 10
    //   615: astore 9
    //   617: goto -31 -> 586
    //   620: astore_1
    //   621: aconst_null
    //   622: astore_2
    //   623: goto -37 -> 586
    //   626: iconst_0
    //   627: istore 4
    //   629: goto -217 -> 412
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	632	0	this	bfz
    //   0	632	1	paramString1	String
    //   0	632	2	paramString2	String
    //   151	404	3	i1	int
    //   405	223	4	i2	int
    //   7	489	5	i3	int
    //   93	179	6	bool1	boolean
    //   102	179	7	bool2	boolean
    //   143	3	8	bool3	boolean
    //   57	559	9	localObject1	Object
    //   1	613	10	localObject2	Object
    //   4	563	11	str	String
    //   84	500	12	localCursor	Cursor
    //   316	256	13	localContentValues	ContentValues
    // Exception table:
    //   from	to	target	type
    //   86	104	582	finally
    //   124	145	582	finally
    //   186	255	582	finally
    //   285	295	582	finally
    //   299	309	582	finally
    //   309	412	582	finally
    //   416	448	582	finally
    //   448	528	582	finally
    //   558	568	582	finally
    //   571	579	582	finally
    //   32	59	610	finally
    //   59	86	620	finally
  }
  
  private emc n(String paramString1, String paramString2)
  {
    Object localObject = null;
    try
    {
      paramString1 = e.a("messages", new String[] { "status" }, "conversation_id=? AND message_id=?", new String[] { paramString1, paramString2 }, null);
      paramString2 = (String)localObject;
      if (paramString1 == null) {
        break label86;
      }
    }
    finally
    {
      try
      {
        if (paramString1.moveToFirst()) {
          paramString2 = emc.values()[paramString1.getInt(0)];
        }
        if (paramString1 != null) {
          paramString1.close();
        }
        return paramString2;
      }
      finally {}
      paramString2 = finally;
      paramString1 = null;
    }
    paramString1.close();
    label86:
    throw paramString2;
  }
  
  private emc o(long paramLong)
  {
    emc localemc = null;
    Cursor localCursor;
    try
    {
      localCursor = e.a("messages", new String[] { "status" }, "_id=?", new String[] { String.valueOf(paramLong) }, null);
      if (localCursor == null) {
        break label87;
      }
    }
    finally
    {
      try
      {
        if (localCursor.moveToFirst()) {
          localemc = emc.values()[localCursor.getInt(0)];
        }
        if (localCursor != null) {
          localCursor.close();
        }
        return localemc;
      }
      finally {}
      localObject1 = finally;
      localCursor = null;
    }
    localCursor.close();
    label87:
    throw ((Throwable)localObject1);
  }
  
  public void A()
  {
    a();
    try
    {
      a(1, TimeUnit.MILLISECONDS.toMicros(((hvq)ilh.a(a, hvq.class)).a()));
      c(3);
      b();
      return;
    }
    finally
    {
      c();
    }
  }
  
  public void A(String paramString)
  {
    Object localObject;
    if (c)
    {
      localObject = String.valueOf(paramString);
      if (((String)localObject).length() == 0) {
        break label70;
      }
      "deleteConversation:".concat((String)localObject);
    }
    for (;;)
    {
      e.a("conversations", "conversation_id=?", new String[] { paramString });
      localObject = g();
      RealTimeChatService.i.post(new dzk((bfd)localObject, paramString));
      return;
      label70:
      new String("deleteConversation:");
    }
  }
  
  /* Error */
  public List<drp> B()
  {
    // Byte code:
    //   0: new 380	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 381	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: aload_0
    //   9: getfield 306	bfz:e	Lbha;
    //   12: ldc_w 383
    //   15: getstatic 115	bfz:l	[Ljava/lang/String;
    //   18: ldc_w 1421
    //   21: aconst_null
    //   22: aconst_null
    //   23: aconst_null
    //   24: ldc_w 1423
    //   27: ldc_w 1425
    //   30: invokevirtual 1428	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   33: astore_1
    //   34: aload_1
    //   35: ifnull +81 -> 116
    //   38: aload_1
    //   39: invokeinterface 394 1 0
    //   44: ifeq +72 -> 116
    //   47: new 396	drp
    //   50: dup
    //   51: invokespecial 397	drp:<init>	()V
    //   54: astore_3
    //   55: aload_3
    //   56: aload_1
    //   57: iconst_0
    //   58: invokeinterface 401 2 0
    //   63: putfield 403	drp:a	Ljava/lang/String;
    //   66: aload_3
    //   67: aload_1
    //   68: iconst_1
    //   69: invokeinterface 401 2 0
    //   74: putfield 405	drp:b	Ljava/lang/String;
    //   77: aload_3
    //   78: aload_1
    //   79: iconst_2
    //   80: invokeinterface 401 2 0
    //   85: putfield 407	drp:c	Ljava/lang/String;
    //   88: aload_2
    //   89: aload_3
    //   90: invokeinterface 418 2 0
    //   95: pop
    //   96: goto -62 -> 34
    //   99: astore_3
    //   100: aload_1
    //   101: astore_2
    //   102: aload_3
    //   103: astore_1
    //   104: aload_2
    //   105: ifnull +9 -> 114
    //   108: aload_2
    //   109: invokeinterface 421 1 0
    //   114: aload_1
    //   115: athrow
    //   116: aload_1
    //   117: ifnull +9 -> 126
    //   120: aload_1
    //   121: invokeinterface 421 1 0
    //   126: aload_2
    //   127: areturn
    //   128: astore_1
    //   129: aconst_null
    //   130: astore_2
    //   131: goto -27 -> 104
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	this	bfz
    //   33	88	1	localObject1	Object
    //   128	1	1	localObject2	Object
    //   7	124	2	localObject3	Object
    //   54	36	3	localdrp	drp
    //   99	4	3	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   38	96	99	finally
    //   8	34	128	finally
  }
  
  public void B(String paramString)
  {
    if (c)
    {
      String str = String.valueOf(paramString);
      if (str.length() == 0) {
        break label49;
      }
      "deleteMessagesFromConversation, conversationId=".concat(str);
    }
    for (;;)
    {
      e.a("messages", "conversation_id=?", new String[] { paramString });
      return;
      label49:
      new String("deleteMessagesFromConversation, conversationId=");
    }
  }
  
  public void C()
  {
    new Handler(Looper.getMainLooper()).post(new bga(this));
    n.a(g).a(2939).d();
  }
  
  public void C(String paramString)
  {
    Object localObject;
    if (c)
    {
      localObject = String.valueOf(paramString);
      if (((String)localObject).length() == 0) {
        break label58;
      }
      "ensureLocalParticipantExists, conversationId=".concat((String)localObject);
    }
    for (;;)
    {
      localObject = g();
      a(paramString, aal.a(((bfd)localObject).b(), ((bfd)localObject).c(), ((bfd)localObject).c(), null, ((bfd)localObject).q(), null));
      return;
      label58:
      new String("ensureLocalParticipantExists, conversationId=");
    }
  }
  
  public boolean D(String paramString)
  {
    for (;;)
    {
      boolean bool;
      try
      {
        if (!TextUtils.isEmpty(null))
        {
          paramString = e.a("blocked_people", new String[] { "_id" }, "gaia_id=?", new String[] { null }, null);
          if (paramString == null) {
            break label129;
          }
        }
      }
      finally
      {
        paramString = null;
        if (paramString != null) {
          paramString.close();
        }
      }
      try
      {
        bool = paramString.moveToFirst();
        if (!bool) {
          break label129;
        }
        bool = true;
        if (paramString != null) {
          paramString.close();
        }
        return bool;
      }
      finally {}
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = e.a("blocked_people", new String[] { "_id" }, "chat_id=?", new String[] { paramString }, null);
        continue;
        label129:
        bool = false;
      }
      else
      {
        paramString = null;
      }
    }
  }
  
  public void E(String paramString)
  {
    e.a("dismissed_contacts", "gaia_id=?", new String[] { paramString });
    a.getContentResolver().notifyChange(EsProvider.m, null);
  }
  
  /* Error */
  public cyx F(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: getstatic 55	bfz:c	Z
    //   5: ifeq +23 -> 28
    //   8: aload_1
    //   9: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   12: astore_2
    //   13: aload_2
    //   14: invokevirtual 343	java/lang/String:length	()I
    //   17: ifeq +73 -> 90
    //   20: ldc_w 1485
    //   23: aload_2
    //   24: invokevirtual 347	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   27: pop
    //   28: aload_0
    //   29: getfield 306	bfz:e	Lbha;
    //   32: ldc_w 620
    //   35: getstatic 98	bfz:j	[Ljava/lang/String;
    //   38: ldc_w 508
    //   41: iconst_1
    //   42: anewarray 66	java/lang/String
    //   45: dup
    //   46: iconst_0
    //   47: aload_1
    //   48: aastore
    //   49: aconst_null
    //   50: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   53: astore_1
    //   54: aload_3
    //   55: astore_2
    //   56: aload_1
    //   57: ifnull +21 -> 78
    //   60: aload_3
    //   61: astore_2
    //   62: aload_1
    //   63: invokeinterface 394 1 0
    //   68: ifeq +10 -> 78
    //   71: aload_0
    //   72: aload_1
    //   73: aconst_null
    //   74: invokespecial 623	bfz:a	(Landroid/database/Cursor;Ljava/lang/String;)Lcyx;
    //   77: astore_2
    //   78: aload_1
    //   79: ifnull +9 -> 88
    //   82: aload_1
    //   83: invokeinterface 421 1 0
    //   88: aload_2
    //   89: areturn
    //   90: new 66	java/lang/String
    //   93: dup
    //   94: ldc_w 1485
    //   97: invokespecial 376	java/lang/String:<init>	(Ljava/lang/String;)V
    //   100: pop
    //   101: goto -73 -> 28
    //   104: astore_2
    //   105: aconst_null
    //   106: astore_1
    //   107: aload_1
    //   108: ifnull +9 -> 117
    //   111: aload_1
    //   112: invokeinterface 421 1 0
    //   117: aload_2
    //   118: athrow
    //   119: astore_2
    //   120: goto -13 -> 107
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	123	0	this	bfz
    //   0	123	1	paramString	String
    //   12	77	2	localObject1	Object
    //   104	14	2	localObject2	Object
    //   119	1	2	localObject3	Object
    //   1	60	3	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   28	54	104	finally
    //   62	78	119	finally
  }
  
  public void G(String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("active", Integer.valueOf(0));
    e.a("conversation_participants", localContentValues, x, new String[] { paramString, String.valueOf(czd.c.ordinal()) });
  }
  
  public List<cyx> H(String paramString)
  {
    ArrayList localArrayList;
    if (c)
    {
      localObject1 = String.valueOf(paramString);
      if (((String)localObject1).length() != 0) {
        "queryParticipantIdFirstNames ConversationId: ".concat((String)localObject1);
      }
    }
    else
    {
      localArrayList = new ArrayList();
    }
    for (;;)
    {
      try
      {
        localObject1 = e;
        paramString = String.valueOf(paramString);
        localObject1 = ((bha)localObject1).a("conversation_participants_view", new String[] { "gaia_id", "chat_id", "circle_id", "first_name", "full_name", "fallback_name", "profile_photo_url", "participant_type", "phone_id", "in_users_domain" }, "conversation_id=? AND active=1", new String[] { paramString }, "sequence ASC");
        try
        {
          if (!((Cursor)localObject1).moveToNext()) {
            continue;
          }
          str2 = ((Cursor)localObject1).getString(3);
          paramString = ((Cursor)localObject1).getString(6);
          localObject2 = czd.values()[localObject1.getInt(7)];
          str1 = ((Cursor)localObject1).getString(4);
          if (localObject2 != czd.b) {
            continue;
          }
          localObject2 = new czb(((Cursor)localObject1).getString(0), ((Cursor)localObject1).getString(1));
          String str3 = ((Cursor)localObject1).getString(5);
          if (((Cursor)localObject1).getInt(9) == 0) {
            continue;
          }
          bool = true;
          paramString = aal.a((czb)localObject2, str1, str2, str3, paramString, null);
          y = bool;
          localArrayList.add(paramString);
          continue;
          if (localObject1 == null) {
            continue;
          }
        }
        finally {}
      }
      finally
      {
        String str2;
        Object localObject2;
        String str1;
        boolean bool;
        localObject1 = null;
        continue;
      }
      ((Cursor)localObject1).close();
      throw paramString;
      new String("queryParticipantIdFirstNames ConversationId: ");
      break;
      bool = false;
      continue;
      if (localObject2 == czd.c)
      {
        localArrayList.add(aal.a(((Cursor)localObject1).getString(2), str1));
      }
      else if (localObject2 == czd.d)
      {
        str2 = ((Cursor)localObject1).getString(8);
        localArrayList.add(aal.a(a, str2, str1, paramString));
      }
    }
    if (localObject1 != null) {
      ((Cursor)localObject1).close();
    }
    return localArrayList;
  }
  
  public List<dtw> I(String paramString)
  {
    Object localObject;
    if (c)
    {
      localObject = String.valueOf(paramString);
      if (((String)localObject).length() == 0) {
        break label89;
      }
      "queryInvitees: ".concat((String)localObject);
    }
    for (;;)
    {
      localObject = new ArrayList();
      TextUtils.SimpleStringSplitter localSimpleStringSplitter = new TextUtils.SimpleStringSplitter('|');
      localSimpleStringSplitter.setString(paramString);
      paramString = localSimpleStringSplitter.iterator();
      while (paramString.hasNext()) {
        ((List)localObject).add(dtw.a(F((String)paramString.next())));
      }
      label89:
      new String("queryInvitees: ");
    }
    return (List<dtw>)localObject;
  }
  
  /* Error */
  public eyq J(String paramString)
  {
    // Byte code:
    //   0: getstatic 55	bfz:c	Z
    //   3: ifeq +23 -> 26
    //   6: aload_1
    //   7: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   10: astore_2
    //   11: aload_2
    //   12: invokevirtual 343	java/lang/String:length	()I
    //   15: ifeq +122 -> 137
    //   18: ldc_w 1524
    //   21: aload_2
    //   22: invokevirtual 347	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   25: pop
    //   26: new 1526	eyq
    //   29: dup
    //   30: invokespecial 1527	eyq:<init>	()V
    //   33: astore_2
    //   34: aload_0
    //   35: getfield 306	bfz:e	Lbha;
    //   38: ldc_w 522
    //   41: iconst_3
    //   42: anewarray 66	java/lang/String
    //   45: dup
    //   46: iconst_0
    //   47: ldc 68
    //   49: aastore
    //   50: dup
    //   51: iconst_1
    //   52: ldc 70
    //   54: aastore
    //   55: dup
    //   56: iconst_2
    //   57: ldc 84
    //   59: aastore
    //   60: ldc_w 1529
    //   63: iconst_2
    //   64: anewarray 66	java/lang/String
    //   67: dup
    //   68: iconst_0
    //   69: aload_1
    //   70: aastore
    //   71: dup
    //   72: iconst_1
    //   73: ldc_w 1531
    //   76: aastore
    //   77: aconst_null
    //   78: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   81: astore_1
    //   82: aload_1
    //   83: invokeinterface 394 1 0
    //   88: ifeq +63 -> 151
    //   91: aload_2
    //   92: new 720	czb
    //   95: dup
    //   96: aload_1
    //   97: iconst_0
    //   98: invokeinterface 401 2 0
    //   103: aload_1
    //   104: iconst_1
    //   105: invokeinterface 401 2 0
    //   110: invokespecial 722	czb:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   113: invokevirtual 1532	eyq:add	(Ljava/lang/Object;)Z
    //   116: pop
    //   117: goto -35 -> 82
    //   120: astore_3
    //   121: aload_1
    //   122: astore_2
    //   123: aload_3
    //   124: astore_1
    //   125: aload_2
    //   126: ifnull +9 -> 135
    //   129: aload_2
    //   130: invokeinterface 421 1 0
    //   135: aload_1
    //   136: athrow
    //   137: new 66	java/lang/String
    //   140: dup
    //   141: ldc_w 1524
    //   144: invokespecial 376	java/lang/String:<init>	(Ljava/lang/String;)V
    //   147: pop
    //   148: goto -122 -> 26
    //   151: aload_1
    //   152: ifnull +9 -> 161
    //   155: aload_1
    //   156: invokeinterface 421 1 0
    //   161: aload_2
    //   162: areturn
    //   163: astore_1
    //   164: aconst_null
    //   165: astore_2
    //   166: goto -41 -> 125
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	169	0	this	bfz
    //   0	169	1	paramString	String
    //   10	156	2	localObject1	Object
    //   120	4	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   82	117	120	finally
    //   34	82	163	finally
  }
  
  public void K(String paramString)
  {
    cyx localcyx = L(paramString);
    e.a("suggested_contacts", "gaia_id=?", new String[] { paramString });
    if (localcyx != null) {
      a(paramString, e, h);
    }
    ((ctm)ilh.a(a, ctm.class)).a(g().g());
    a.getContentResolver().notifyChange(EsProvider.j, null);
  }
  
  public cyx L(String paramString)
  {
    Object localObject = null;
    Cursor localCursor;
    try
    {
      localCursor = e.a("suggested_contacts", i, "gaia_id=?", new String[] { paramString }, null);
      paramString = (String)localObject;
      if (localCursor != null) {
        paramString = (String)localObject;
      }
      if (localCursor == null) {
        break label124;
      }
    }
    finally
    {
      try
      {
        if (localCursor.moveToNext()) {
          paramString = aal.a(new czb(localCursor.getString(0), localCursor.getString(1)), localCursor.getString(2), localCursor.getString(3), null, localCursor.getString(4), localCursor.getString(5));
        }
        if (localCursor != null) {
          localCursor.close();
        }
        return paramString;
      }
      finally {}
      paramString = finally;
      localCursor = null;
    }
    localCursor.close();
    label124:
    throw paramString;
  }
  
  public long M(String paramString)
  {
    return b(paramString, 1);
  }
  
  /* Error */
  public bgg N(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: getstatic 55	bfz:c	Z
    //   5: ifeq +23 -> 28
    //   8: aload_1
    //   9: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   12: astore_3
    //   13: aload_3
    //   14: invokevirtual 343	java/lang/String:length	()I
    //   17: ifeq +98 -> 115
    //   20: ldc_w 1555
    //   23: aload_3
    //   24: invokevirtual 347	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   27: pop
    //   28: aload_0
    //   29: getfield 306	bfz:e	Lbha;
    //   32: astore_3
    //   33: aload_1
    //   34: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   37: astore_1
    //   38: aload_3
    //   39: ldc_w 263
    //   42: iconst_2
    //   43: anewarray 66	java/lang/String
    //   46: dup
    //   47: iconst_0
    //   48: ldc -1
    //   50: aastore
    //   51: dup
    //   52: iconst_1
    //   53: ldc -29
    //   55: aastore
    //   56: ldc_w 555
    //   59: iconst_1
    //   60: anewarray 66	java/lang/String
    //   63: dup
    //   64: iconst_0
    //   65: aload_1
    //   66: aastore
    //   67: aconst_null
    //   68: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   71: astore_1
    //   72: aload_1
    //   73: invokeinterface 537 1 0
    //   78: ifeq +25 -> 103
    //   81: new 1557	bgg
    //   84: dup
    //   85: aload_1
    //   86: iconst_0
    //   87: invokeinterface 493 2 0
    //   92: aload_1
    //   93: iconst_1
    //   94: invokeinterface 493 2 0
    //   99: invokespecial 1560	bgg:<init>	(JJ)V
    //   102: astore_2
    //   103: aload_1
    //   104: ifnull +9 -> 113
    //   107: aload_1
    //   108: invokeinterface 421 1 0
    //   113: aload_2
    //   114: areturn
    //   115: new 66	java/lang/String
    //   118: dup
    //   119: ldc_w 1555
    //   122: invokespecial 376	java/lang/String:<init>	(Ljava/lang/String;)V
    //   125: pop
    //   126: goto -98 -> 28
    //   129: astore_2
    //   130: aconst_null
    //   131: astore_1
    //   132: aload_1
    //   133: ifnull +9 -> 142
    //   136: aload_1
    //   137: invokeinterface 421 1 0
    //   142: aload_2
    //   143: athrow
    //   144: astore_2
    //   145: goto -13 -> 132
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	148	0	this	bfz
    //   0	148	1	paramString	String
    //   1	113	2	localbgg	bgg
    //   129	14	2	localObject1	Object
    //   144	1	2	localObject2	Object
    //   12	27	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   28	72	129	finally
    //   72	103	144	finally
  }
  
  public long O(String paramString)
  {
    return a("getSortTimestamp", paramString, "sort_timestamp", 0L);
  }
  
  public long P(String paramString)
  {
    return a(ak(paramString));
  }
  
  public int Q(String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("notified_for_failure", Integer.valueOf(1));
    if (TextUtils.isEmpty(paramString)) {
      return e.a("messages", localContentValues, "notified_for_failure=?", new String[] { "0" });
    }
    return e.a("messages", localContentValues, "notified_for_failure=? AND conversation_id=?", new String[] { "0", paramString });
  }
  
  public void R(String paramString)
  {
    Object localObject;
    if (c)
    {
      localObject = String.valueOf(paramString);
      if (((String)localObject).length() == 0) {
        break label112;
      }
      "confirmConversationInvite, conversationId=".concat((String)localObject);
    }
    for (;;)
    {
      a();
      try
      {
        localObject = new ContentValues();
        ((ContentValues)localObject).put("status", Integer.valueOf(2));
        ((ContentValues)localObject).put("disposition", Integer.valueOf(0));
        ((ContentValues)localObject).put("notification_level", Integer.valueOf(30));
        e.a("conversations", (ContentValues)localObject, "conversation_id=?", new String[] { paramString });
        bft.a(g().g());
        b();
        return;
      }
      finally
      {
        label112:
        c();
      }
      new String("confirmConversationInvite, conversationId=");
    }
  }
  
  public String S(String paramString)
  {
    String str = null;
    Cursor localCursor = e().a("conversations", D, "conversation_id=?", new String[] { paramString }, null);
    if (localCursor != null) {}
    try
    {
      if ((localCursor.moveToFirst()) && (localCursor.getInt(0) == 1))
      {
        Object localObject = H(paramString);
        paramString = g().b();
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          czb localczb = nextb;
          if (!paramString.equals(localczb))
          {
            str = a;
            paramString = str;
            if (localCursor != null)
            {
              localCursor.close();
              paramString = str;
            }
            return paramString;
          }
        }
      }
      paramString = str;
      return null;
    }
    finally
    {
      if (localCursor != null) {
        localCursor.close();
      }
    }
  }
  
  public long T(String paramString)
  {
    return a("getConversationPendingStatus", paramString, "is_pending_leave", 0L);
  }
  
  public boolean U(String paramString)
  {
    try
    {
      paramString = e.a("conversations", new String[] { "is_pending_leave" }, "conversation_id=?", new String[] { paramString }, null);
      long l1;
      boolean bool;
      if ((paramString == null) || (paramString != null)) {
        paramString.close();
      }
    }
    finally
    {
      try
      {
        if (paramString.moveToFirst())
        {
          l1 = paramString.getLong(0);
          if ((l1 & 0x3) != 0L) {}
          for (bool = true;; bool = false)
          {
            if (paramString != null) {
              paramString.close();
            }
            return bool;
          }
        }
        if (paramString != null) {
          paramString.close();
        }
        return false;
      }
      finally {}
      localObject1 = finally;
      paramString = null;
    }
    throw ((Throwable)localObject1);
  }
  
  public String V(String paramString)
  {
    return b("getSmsServiceCenter", paramString, "sms_service_center");
  }
  
  public long W(String paramString)
  {
    return a("getSmsThreadId", paramString, "sms_thread_id", -1L);
  }
  
  public boolean X(String paramString)
  {
    return a("getConversationIsTemporary", paramString, "is_temporary", 0) == 1;
  }
  
  public String Y(String paramString)
  {
    Object localObject;
    if (c)
    {
      localObject = String.valueOf(paramString);
      if (((String)localObject).length() == 0) {
        break label158;
      }
      "getStreamUrlForPhotoId, photoId =".concat((String)localObject);
    }
    try
    {
      localCursor = e.a("messages", new String[] { "stream_url", "stream_expiration" }, "image_id=?", new String[] { paramString }, null);
    }
    finally
    {
      try
      {
        long l1 = System.currentTimeMillis();
        localObject = null;
        for (;;)
        {
          if (localCursor.moveToNext())
          {
            String str = localCursor.getString(0);
            long l2 = localCursor.getLong(1);
            localObject = str;
            if (!TextUtils.isEmpty(str))
            {
              localObject = str;
              if (l1 < l2)
              {
                a(paramString, str, l2);
                paramString = str;
                if (localCursor != null)
                {
                  localCursor.close();
                  paramString = str;
                }
              }
            }
          }
        }
        label158:
        do
        {
          return paramString;
          new String("getStreamUrlForPhotoId, photoId =");
          break;
          paramString = (String)localObject;
        } while (localCursor == null);
        localCursor.close();
        return (String)localObject;
      }
      finally
      {
        Cursor localCursor;
        for (;;) {}
      }
      paramString = finally;
      localCursor = null;
    }
    if (localCursor != null) {
      localCursor.close();
    }
    throw paramString;
  }
  
  /* Error */
  public String Z(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: getstatic 55	bfz:c	Z
    //   5: ifeq +23 -> 28
    //   8: aload_1
    //   9: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   12: astore_3
    //   13: aload_3
    //   14: invokevirtual 343	java/lang/String:length	()I
    //   17: ifeq +72 -> 89
    //   20: ldc_w 1622
    //   23: aload_3
    //   24: invokevirtual 347	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   27: pop
    //   28: aload_0
    //   29: getfield 306	bfz:e	Lbha;
    //   32: ldc_w 760
    //   35: iconst_1
    //   36: anewarray 66	java/lang/String
    //   39: dup
    //   40: iconst_0
    //   41: ldc 125
    //   43: aastore
    //   44: ldc_w 1617
    //   47: iconst_1
    //   48: anewarray 66	java/lang/String
    //   51: dup
    //   52: iconst_0
    //   53: aload_1
    //   54: aastore
    //   55: aconst_null
    //   56: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   59: astore_1
    //   60: aload_1
    //   61: invokeinterface 394 1 0
    //   66: ifeq +11 -> 77
    //   69: aload_1
    //   70: iconst_0
    //   71: invokeinterface 401 2 0
    //   76: astore_2
    //   77: aload_1
    //   78: ifnull +9 -> 87
    //   81: aload_1
    //   82: invokeinterface 421 1 0
    //   87: aload_2
    //   88: areturn
    //   89: new 66	java/lang/String
    //   92: dup
    //   93: ldc_w 1622
    //   96: invokespecial 376	java/lang/String:<init>	(Ljava/lang/String;)V
    //   99: pop
    //   100: goto -72 -> 28
    //   103: astore_2
    //   104: aconst_null
    //   105: astore_1
    //   106: aload_1
    //   107: ifnull +9 -> 116
    //   110: aload_1
    //   111: invokeinterface 421 1 0
    //   116: aload_2
    //   117: athrow
    //   118: astore_2
    //   119: goto -13 -> 106
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	122	0	this	bfz
    //   0	122	1	paramString	String
    //   1	87	2	str1	String
    //   103	14	2	localObject1	Object
    //   118	1	2	localObject2	Object
    //   12	12	3	str2	String
    // Exception table:
    //   from	to	target	type
    //   28	60	103	finally
    //   60	77	118	finally
  }
  
  public int a(String paramString, emd paramemd)
  {
    if (c)
    {
      String str = String.valueOf(paramemd);
      new StringBuilder(String.valueOf(paramString).length() + 53 + String.valueOf(str).length()).append("deleteMessagesFromConversation, conversationId=").append(paramString).append(" type=").append(str);
    }
    return e.a("messages", "conversation_id=? AND type=?", new String[] { paramString, String.valueOf(paramemd.ordinal()) });
  }
  
  public long a(int paramInt)
  {
    Object localObject5 = "conversation_id NOT LIKE 'client_generated:%' AND sort_timestamp> 0 AND transport_type!=3";
    Object localObject1 = localObject5;
    switch (paramInt)
    {
    }
    for (;;)
    {
      try
      {
        localObject5 = e.a("conversations", new String[] { "MIN(sort_timestamp)" }, (String)localObject1, null, null);
      }
      finally
      {
        try
        {
          if (((Cursor)localObject5).moveToFirst())
          {
            long l1 = ((Cursor)localObject5).getLong(0);
            long l2 = l1;
            if (l1 == 0L) {
              l2 = -1L;
            }
            if (localObject5 != null) {
              ((Cursor)localObject5).close();
            }
            return l2;
            localObject1 = "conversation_id NOT LIKE 'client_generated:%' AND sort_timestamp> 0 AND transport_type!=3 AND view=2";
            continue;
            localObject1 = "conversation_id NOT LIKE 'client_generated:%' AND sort_timestamp> 0 AND transport_type!=3 AND view=1 AND status=1 AND inviter_affinity=2";
            continue;
          }
          if (localObject5 != null) {
            ((Cursor)localObject5).close();
          }
          return -1L;
        }
        finally
        {
          continue;
        }
        localObject2 = finally;
        localObject5 = null;
        if (localObject5 != null) {
          ((Cursor)localObject5).close();
        }
      }
      continue;
      Object localObject4 = "conversation_id NOT LIKE 'client_generated:%' AND sort_timestamp> 0 AND transport_type!=3 AND view=1 AND status=1 AND inviter_affinity=1";
    }
  }
  
  public long a(ContentValues paramContentValues)
  {
    e.a();
    try
    {
      long l1 = e.a("mms_notification_inds", paramContentValues);
      e.b();
      return l1;
    }
    finally
    {
      e.c();
    }
  }
  
  public long a(bgh parambgh)
  {
    int i1 = f;
    long l1 = d;
    ezi.a("Babel", 69 + "Creating suggestion type: " + i1 + " timestamp: " + l1, new Object[0]);
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("conversation_id", a);
    localContentValues.put("event_id", b);
    localContentValues.put("suggestion_id", c);
    localContentValues.put("timestamp", Long.valueOf(d));
    localContentValues.put("expiration_time_usec", Long.valueOf(e));
    localContentValues.put("type", Integer.valueOf(f));
    localContentValues.put("gem_asset_url", g);
    localContentValues.put("gem_horizontal_alignment", Integer.valueOf(h));
    localContentValues.put("matched_message_substring", i);
    l1 = e.a("event_suggestions", localContentValues);
    if (l1 > -1L) {
      bft.e(this, a);
    }
    return l1;
  }
  
  public long a(bgn parambgn)
  {
    if (c)
    {
      localObject1 = c;
      localObject2 = String.valueOf(f);
      localObject3 = a;
      new StringBuilder(String.valueOf(localObject1).length() + 68 + String.valueOf(localObject2).length() + String.valueOf(localObject3).length()).append("createMessage, conversationId ").append((String)localObject1).append(", senderId=").append((String)localObject2).append(", messageClientGeneratedId=").append((String)localObject3);
    }
    Object localObject2 = h(c, a);
    Object localObject1 = g(c, a);
    int i2;
    if (localObject2 != null)
    {
      i2 = 1;
      if ((localObject1 == null) || (aal.a((Long)localObject1, 0L) <= 0L)) {
        break label343;
      }
    }
    Object localObject4;
    label343:
    for (int i1 = 1;; i1 = 0)
    {
      if ((i2 == 0) || (i1 == 0)) {
        break label348;
      }
      if (c)
      {
        localObject1 = String.valueOf("createMessage called for a message already in the database. message id: ");
        localObject3 = a;
        localObject4 = c;
        i1 = y;
        new StringBuilder(String.valueOf(localObject1).length() + 52 + String.valueOf(localObject3).length() + String.valueOf(localObject4).length()).append((String)localObject1).append((String)localObject3).append(" conversationId: ").append((String)localObject4).append(" new notification level ").append(i1);
      }
      if (y > 10)
      {
        localObject1 = new ContentValues();
        ((ContentValues)localObject1).put("notification_level", Integer.valueOf(y));
        ((ContentValues)localObject1).put("observed_status", Integer.valueOf(S));
        e.a("messages", (ContentValues)localObject1, "_id=?", new String[] { ((Long)localObject2).toString() });
      }
      return aal.a((Long)localObject2, 0L);
      i2 = 0;
      break;
    }
    label348:
    localObject1 = c;
    if (!ag((String)localObject1))
    {
      if (!((String)localObject1).startsWith("client_generated:")) {
        break label591;
      }
      localObject1 = RealTimeChatService.a((String)localObject1);
      if ((localObject1 == null) || (!ag((String)localObject1)))
      {
        localObject1 = c;
        localObject3 = a;
        ezi.e("Babel_ConvHelper", String.valueOf(localObject1).length() + 70 + String.valueOf(localObject3).length() + "Messaging: skip message because conversation doesn't exist:" + (String)localObject1 + " messageId:" + (String)localObject3, new Object[0]);
        hbs.a("Messaging: skip message because conversation doesn't exist isClientGeneratedId=true");
        i1 = 1;
        if (i1 == 0) {
          break label690;
        }
        return -1L;
      }
      if (c)
      {
        localObject3 = c;
        new StringBuilder(String.valueOf(localObject3).length() + 43 + String.valueOf(localObject1).length()).append("Messaging: conversationId changed from ").append((String)localObject3).append(" to ").append((String)localObject1);
      }
    }
    if ((c) && (b != null))
    {
      localObject1 = String.valueOf(a);
      if (((String)localObject1).length() == 0) {
        break label676;
      }
      "Messaging: saving message:".concat((String)localObject1);
    }
    for (;;)
    {
      i1 = 0;
      break;
      label591:
      localObject1 = c;
      localObject3 = a;
      ezi.e("Babel_ConvHelper", String.valueOf(localObject1).length() + 70 + String.valueOf(localObject3).length() + "Messaging: skip message because conversation doesn't exist:" + (String)localObject1 + " messageId:" + (String)localObject3, new Object[0]);
      hbs.a("Messaging: skip message because conversation doesn't exist isClientGeneratedId=false");
      i1 = 1;
      break;
      label676:
      new String("Messaging: saving message:");
    }
    label690:
    localObject1 = c;
    Object localObject3 = new ContentValues();
    ((ContentValues)localObject3).put("message_id", a);
    ((ContentValues)localObject3).put("conversation_id", (String)localObject1);
    if (f != null)
    {
      ((ContentValues)localObject3).put("author_chat_id", f.b);
      ((ContentValues)localObject3).put("author_gaia_id", f.a);
    }
    ((ContentValues)localObject3).put("text", g);
    ((ContentValues)localObject3).put("status", Integer.valueOf(h));
    ((ContentValues)localObject3).put("notification_level", Integer.valueOf(y));
    if (x)
    {
      i1 = emd.b.ordinal();
      ((ContentValues)localObject3).put("type", Integer.valueOf(i1));
      ((ContentValues)localObject3).put("transport_type", Integer.valueOf(d));
      ((ContentValues)localObject3).put("transport_phone", e);
      ((ContentValues)localObject3).put("timestamp", Long.valueOf(i));
      ((ContentValues)localObject3).put("width_pixels", Integer.valueOf(B));
      ((ContentValues)localObject3).put("height_pixels", Integer.valueOf(C));
      ((ContentValues)localObject3).put("image_id", j);
      ((ContentValues)localObject3).put("album_id", l);
      ((ContentValues)localObject3).put("image_rotation", Integer.valueOf(m));
      if (!TextUtils.isEmpty(j))
      {
        localObject1 = af(j);
        if (localObject1 == null) {
          break label1762;
        }
        if (c == null) {
          break label1708;
        }
        localObject1 = String.valueOf(c);
        if (((String)localObject1).length() == 0) {
          break label1693;
        }
        localObject1 = "file://".concat((String)localObject1);
        label989:
        ((ContentValues)localObject3).put("local_url", (String)localObject1);
      }
      label998:
      if (n != null)
      {
        if (!n.startsWith("content://")) {
          break label1849;
        }
        ((ContentValues)localObject3).put("local_url", n);
      }
    }
    for (;;)
    {
      ((ContentValues)localObject3).put("attachment_name", o);
      ((ContentValues)localObject3).put("attachment_description", p);
      ((ContentValues)localObject3).put("attachment_target_url", t);
      ((ContentValues)localObject3).put("attachment_target_url_name", u);
      ((ContentValues)localObject3).put("attachment_target_url_description", v);
      ((ContentValues)localObject3).put("attachment_blob_data", w);
      ((ContentValues)localObject3).put("attachment_content_type", D);
      ((ContentValues)localObject3).put("latitude", Double.valueOf(q));
      ((ContentValues)localObject3).put("longitude", Double.valueOf(r));
      ((ContentValues)localObject3).put("address", s);
      if (z > 0L) {
        ((ContentValues)localObject3).put("expiration_timestamp", Long.valueOf(z));
      }
      ((ContentValues)localObject3).put("off_the_record", Boolean.valueOf(A));
      if (E != null) {
        ((ContentValues)localObject3).put("external_ids", E);
      }
      ((ContentValues)localObject3).put("sms_timestamp_sent", Long.valueOf(F));
      ((ContentValues)localObject3).put("sms_priority", Integer.valueOf(G));
      ((ContentValues)localObject3).put("sms_message_size", Long.valueOf(H));
      ((ContentValues)localObject3).put("mms_subject", I);
      if (J != null) {
        ((ContentValues)localObject3).put("sms_raw_sender", J);
      }
      if (K != null) {
        ((ContentValues)localObject3).put("sms_raw_recipients", K);
      }
      ((ContentValues)localObject3).put("persisted", Boolean.valueOf(L));
      ((ContentValues)localObject3).put("sms_message_status", Integer.valueOf(M));
      ((ContentValues)localObject3).put("sms_type", Integer.valueOf(N));
      ((ContentValues)localObject3).put("forwarded_mms_url", O);
      ((ContentValues)localObject3).put("forwarded_mms_count", Integer.valueOf(P));
      ((ContentValues)localObject3).put("sending_error", Integer.valueOf(Q));
      ((ContentValues)localObject3).put("voicemail_length", Integer.valueOf(R));
      ((ContentValues)localObject3).put("observed_status", Integer.valueOf(S));
      ((ContentValues)localObject3).put("receive_type", Integer.valueOf(T));
      ((ContentValues)localObject3).put("init_timestamp", Long.valueOf(U));
      ((ContentValues)localObject3).put("in_app_msg_latency", Long.valueOf(V));
      localObject1 = null;
      if (b != null)
      {
        localObject1 = h(c, b);
        if (localObject1 != null)
        {
          if ((c) || (ezi.a("Babel", 3)))
          {
            localObject4 = c;
            String str = a;
            ezi.b("Babel", String.valueOf(localObject4).length() + 75 + String.valueOf(str).length() + "createMessage found clientGeneratedId " + (String)localObject4 + ", messageId " + str + " -- fixing up the message", new Object[0]);
          }
          localObject4 = g(c, b);
          if (localObject4 != null) {
            a(c, i, aal.a((Long)localObject4, 0L));
          }
          parambgn = o(aal.a((Long)localObject1, 0L));
          if ((parambgn != null) && (parambgn == emc.f)) {
            C();
          }
        }
      }
      if (localObject1 == null) {
        break label1863;
      }
      e.a("messages", (ContentValues)localObject3, "_id=?", new String[] { ((Long)localObject1).toString() });
      return aal.a((Long)localObject1, 0L);
      i1 = emd.c.ordinal();
      break;
      label1693:
      localObject1 = new String("file://");
      break label989;
      label1708:
      localObject1 = String.valueOf(j);
      if (((String)localObject1).length() != 0) {}
      for (localObject1 = "sticker://".concat((String)localObject1);; localObject1 = new String("sticker://"))
      {
        ((ContentValues)localObject3).put("local_url", (String)localObject1);
        break;
      }
      label1762:
      if ((TextUtils.isEmpty(k)) || (!k.equals(aal.a(a, "babel_stickers_account_id", "108618507921641169817")))) {
        break label998;
      }
      localObject1 = String.valueOf(j);
      if (((String)localObject1).length() != 0) {}
      for (localObject1 = "sticker://".concat((String)localObject1);; localObject1 = new String("sticker://"))
      {
        ((ContentValues)localObject3).put("local_url", (String)localObject1);
        break;
      }
      label1849:
      ((ContentValues)localObject3).put("remote_url", n);
    }
    label1863:
    if (i2 != 0)
    {
      e.a("messages", (ContentValues)localObject3, "_id=?", new String[] { ((Long)localObject2).toString() });
      return aal.a((Long)localObject2, 0L);
    }
    return e.a("messages", (ContentValues)localObject3);
  }
  
  public long a(bgp parambgp)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("conversation_id", a);
    localContentValues.put("message_id", b);
    localContentValues.put("url", c);
    localContentValues.put("content_type", d);
    localContentValues.put("width", Integer.valueOf(e));
    localContentValues.put("height", Integer.valueOf(f));
    return e.a("multipart_attachments", localContentValues);
  }
  
  public long a(String paramString1, String paramString2, emc paramemc, czb paramczb, emd paramemd, long paramLong1, long paramLong2, int paramInt, String paramString3, String paramString4)
  {
    return a(paramString1, paramString2, paramemc, paramczb, paramemd, paramLong1, paramLong2, 0L, paramInt, paramString3, paramString4, 0, null);
  }
  
  public long a(String paramString1, String paramString2, emc paramemc, czb paramczb, emd paramemd, long paramLong1, long paramLong2, long paramLong3, int paramInt1, String paramString3, String paramString4, int paramInt2, String paramString5)
  {
    if (c)
    {
      localObject = String.valueOf(paramemd);
      new StringBuilder(String.valueOf(paramString1).length() + 68 + String.valueOf(localObject).length()).append("insertSystemMessage: conversationId=").append(paramString1).append("; type ").append((String)localObject).append("; ts ").append(paramLong1);
    }
    Long localLong = h(paramString1, paramString2);
    Object localObject = localLong;
    if (localLong == null)
    {
      localObject = new ContentValues();
      ((ContentValues)localObject).put("message_id", paramString2);
      ((ContentValues)localObject).put("conversation_id", paramString1);
      ((ContentValues)localObject).put("author_chat_id", b);
      ((ContentValues)localObject).put("author_gaia_id", a);
      ((ContentValues)localObject).put("status", Integer.valueOf(paramemc.ordinal()));
      ((ContentValues)localObject).put("type", Integer.valueOf(paramemd.ordinal()));
      ((ContentValues)localObject).put("timestamp", Long.valueOf(paramLong1));
      if (paramLong2 > 0L) {
        ((ContentValues)localObject).put("expiration_timestamp", Long.valueOf(paramLong2));
      }
      if (paramLong3 > 0L) {
        ((ContentValues)localObject).put("delete_after_read_timetamp", Long.valueOf(paramLong3));
      }
      ((ContentValues)localObject).put("notification_level", Integer.valueOf(paramInt1));
      if (paramString3 != null) {
        ((ContentValues)localObject).put("new_conversation_name", paramString3);
      }
      if (paramString4 != null) {
        ((ContentValues)localObject).put("participant_keys", paramString4);
      }
      ((ContentValues)localObject).put("call_media_type", Integer.valueOf(paramInt2));
      if (!TextUtils.isEmpty(paramString5)) {
        ((ContentValues)localObject).put("text", paramString5);
      }
      localObject = Long.valueOf(e.a("messages", (ContentValues)localObject));
    }
    return aal.a((Long)localObject, 0L);
  }
  
  public Cursor a(String paramString, emc paramemc, String[] paramArrayOfString)
  {
    return e.a("messages", paramArrayOfString, "conversation_id = ? AND status = ?", new String[] { paramString, String.valueOf(paramemc.ordinal()) }, "timestamp ASC");
  }
  
  public bgl a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (c) {
      new StringBuilder(String.valueOf(paramString1).length() + 38 + String.valueOf(paramString2).length() + String.valueOf(paramString3).length() + String.valueOf(paramString4).length()).append("getExistingMergedConversationId ").append(paramString1).append(", ").append(paramString2).append(", ").append(paramString3).append(", ").append(paramString4);
    }
    ArrayList localArrayList = new ArrayList();
    if (!TextUtils.isEmpty(paramString2)) {
      localArrayList.add(paramString2);
    }
    if (!TextUtils.isEmpty(paramString3)) {
      localArrayList.add(paramString3);
    }
    if (!TextUtils.isEmpty(paramString4)) {
      localArrayList.add(paramString4);
    }
    localArrayList.add(paramString1);
    switch (localArrayList.size())
    {
    default: 
      paramString1 = "conversation_id=?";
      paramString2 = e.a("conversations", bgj.a, paramString1, (String[])localArrayList.toArray(new String[localArrayList.size()]), null);
    }
    for (;;)
    {
      try
      {
        if (!paramString2.moveToFirst())
        {
          paramString1 = new bgl(null, false);
          return paramString1;
          paramString1 = "conversation_id IN (?, ?, ?, ?)";
          break;
          paramString1 = "conversation_id IN (?, ?, ?)";
          break;
          paramString1 = "conversation_id IN (?, ?)";
          break;
        }
        paramString1 = c(paramString2);
        if (!c) {
          break label432;
        }
        paramString3 = String.valueOf(a);
        if (paramString3.length() != 0)
        {
          "getExistingMergedConversationId found match ".concat(paramString3);
          break label432;
          if (!paramString2.moveToNext()) {
            break label413;
          }
          paramString3 = c(paramString2);
          if (c)
          {
            paramString4 = String.valueOf(a);
            if (paramString4.length() != 0) {
              "getExistingMergedConversationId found another conversation ".concat(paramString4);
            }
          }
          else
          {
            paramString1 = a(paramString1, paramString3);
            bool = true;
            continue;
          }
        }
        else
        {
          new String("getExistingMergedConversationId found match ");
        }
      }
      finally
      {
        paramString2.close();
      }
      new String("getExistingMergedConversationId found another conversation ");
      continue;
      label413:
      paramString1 = new bgl(paramString1, bool);
      paramString2.close();
      return paramString1;
      label432:
      boolean bool = false;
    }
  }
  
  public bgq a(czb paramczb, boolean paramBoolean, int paramInt)
  {
    Object localObject1 = null;
    if (c)
    {
      localObject3 = String.valueOf(paramczb);
      new StringBuilder(String.valueOf(localObject3).length() + 41).append("queryOneToOneConversation, participantId ").append((String)localObject3);
    }
    if (paramczb != null) {
      m(a, b);
    }
    label416:
    label469:
    do
    {
      for (;;)
      {
        try
        {
          localObject3 = new StringBuilder("select conversations.conversation_id").append(", sort_timestamp, view").append(", transport_type, (select merge_key FROM merge_keys WHERE merge_keys.conversation_id=conversations.conversation_id) as merge_key ").append(" FROM conversations,conversation_participants_view").append(" WHERE conversation_participants_view.conversation_id").append("=conversations.conversation_id");
          arrayOfString = new String[3];
          ((StringBuilder)localObject3).append(" AND conversation_type=?");
          arrayOfString[0] = "1";
          ((StringBuilder)localObject3).append(" AND transport_type=?");
          arrayOfString[1] = String.valueOf(paramInt);
          ((StringBuilder)localObject3).append(" AND ");
          if ((paramczb != null) && (!TextUtils.isEmpty(a)))
          {
            ((StringBuilder)localObject3).append("gaia_id=?");
            arrayOfString[2] = a;
            if (paramBoolean) {
              ((StringBuilder)localObject3).append(" AND is_temporary = 1");
            }
            paramczb = e.a(((StringBuilder)localObject3).toString(), arrayOfString);
          }
        }
        finally
        {
          String[] arrayOfString;
          localObject3 = null;
          localObject1 = paramczb;
        }
        try
        {
          if (!paramczb.moveToFirst()) {
            break label469;
          }
          localObject3 = new bgq();
          localObject1 = paramczb.getString(0);
          if ((TextUtils.isEmpty(a)) || ((a.startsWith("client_generated:")) && (!((String)localObject1).startsWith("client_generated:"))))
          {
            a = ((String)localObject1);
            c = paramczb.getLong(1);
            d = paramczb.getInt(2);
            e = paramczb.getInt(3);
            b = paramczb.getString(4);
          }
          paramBoolean = paramczb.moveToNext();
          if (paramBoolean) {
            continue;
          }
          localObject1 = localObject3;
          if (paramczb != null)
          {
            paramczb.close();
            localObject1 = localObject3;
          }
          return (bgq)localObject1;
        }
        finally
        {
          for (;;)
          {
            localObject3 = paramczb;
          }
        }
        if ((paramczb == null) || (TextUtils.isEmpty(b))) {
          break label416;
        }
        ((StringBuilder)localObject3).append("chat_id=?");
        arrayOfString[2] = b;
      }
      if (localObject3 != null) {
        ((Cursor)localObject3).close();
      }
      throw ((Throwable)localObject1);
      paramczb = String.valueOf(paramczb);
      ezi.e("Babel_ConvHelper", String.valueOf(paramczb).length() + 23 + "participantId is empty:" + paramczb, new Object[0]);
      hbs.a("participantId is empty");
      return null;
    } while (paramczb == null);
    paramczb.close();
    return null;
  }
  
  /* Error */
  public cyx a(dtt paramdtt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: getstatic 55	bfz:c	Z
    //   5: ifeq +36 -> 41
    //   8: aload_1
    //   9: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   12: astore_2
    //   13: new 561	java/lang/StringBuilder
    //   16: dup
    //   17: aload_2
    //   18: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   21: invokevirtual 343	java/lang/String:length	()I
    //   24: bipush 26
    //   26: iadd
    //   27: invokespecial 564	java/lang/StringBuilder:<init>	(I)V
    //   30: ldc_w 1983
    //   33: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: aload_2
    //   37: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: pop
    //   41: aload_1
    //   42: getfield 1986	dtt:a	Ljava/lang/String;
    //   45: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   48: ifne +68 -> 116
    //   51: aload_0
    //   52: getfield 306	bfz:e	Lbha;
    //   55: ldc_w 620
    //   58: getstatic 98	bfz:j	[Ljava/lang/String;
    //   61: ldc_w 618
    //   64: iconst_1
    //   65: anewarray 66	java/lang/String
    //   68: dup
    //   69: iconst_0
    //   70: aload_1
    //   71: getfield 1986	dtt:a	Ljava/lang/String;
    //   74: aastore
    //   75: aconst_null
    //   76: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   79: astore_1
    //   80: aload_3
    //   81: astore_2
    //   82: aload_1
    //   83: ifnull +21 -> 104
    //   86: aload_3
    //   87: astore_2
    //   88: aload_1
    //   89: invokeinterface 394 1 0
    //   94: ifeq +10 -> 104
    //   97: aload_0
    //   98: aload_1
    //   99: aconst_null
    //   100: invokespecial 623	bfz:a	(Landroid/database/Cursor;Ljava/lang/String;)Lcyx;
    //   103: astore_2
    //   104: aload_1
    //   105: ifnull +9 -> 114
    //   108: aload_1
    //   109: invokeinterface 421 1 0
    //   114: aload_2
    //   115: areturn
    //   116: aload_1
    //   117: getfield 1987	dtt:b	Ljava/lang/String;
    //   120: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   123: ifne +54 -> 177
    //   126: aload_0
    //   127: getfield 306	bfz:e	Lbha;
    //   130: ldc_w 620
    //   133: getstatic 98	bfz:j	[Ljava/lang/String;
    //   136: ldc_w 636
    //   139: iconst_1
    //   140: anewarray 66	java/lang/String
    //   143: dup
    //   144: iconst_0
    //   145: aload_1
    //   146: getfield 1987	dtt:b	Ljava/lang/String;
    //   149: aastore
    //   150: aconst_null
    //   151: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   154: astore_1
    //   155: goto -75 -> 80
    //   158: astore_2
    //   159: aconst_null
    //   160: astore_1
    //   161: aload_1
    //   162: ifnull +9 -> 171
    //   165: aload_1
    //   166: invokeinterface 421 1 0
    //   171: aload_2
    //   172: athrow
    //   173: astore_2
    //   174: goto -13 -> 161
    //   177: aconst_null
    //   178: astore_1
    //   179: goto -99 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	182	0	this	bfz
    //   0	182	1	paramdtt	dtt
    //   12	103	2	localObject1	Object
    //   158	14	2	localObject2	Object
    //   173	1	2	localObject3	Object
    //   1	86	3	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   41	80	158	finally
    //   116	155	158	finally
    //   88	104	173	finally
  }
  
  /* Error */
  public final dne a(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: getstatic 55	bfz:c	Z
    //   6: ifeq +23 -> 29
    //   9: aload_1
    //   10: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   13: astore_3
    //   14: aload_3
    //   15: invokevirtual 343	java/lang/String:length	()I
    //   18: ifeq +87 -> 105
    //   21: ldc_w 1990
    //   24: aload_3
    //   25: invokevirtual 347	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   28: pop
    //   29: new 380	java/util/ArrayList
    //   32: dup
    //   33: invokespecial 381	java/util/ArrayList:<init>	()V
    //   36: astore 5
    //   38: iload_2
    //   39: ifeq +80 -> 119
    //   42: ldc_w 1992
    //   45: astore_3
    //   46: aload_0
    //   47: getfield 306	bfz:e	Lbha;
    //   50: ldc_w 760
    //   53: iconst_2
    //   54: anewarray 66	java/lang/String
    //   57: dup
    //   58: iconst_0
    //   59: ldc 82
    //   61: aastore
    //   62: dup
    //   63: iconst_1
    //   64: ldc -101
    //   66: aastore
    //   67: aload_3
    //   68: iconst_2
    //   69: anewarray 66	java/lang/String
    //   72: dup
    //   73: iconst_0
    //   74: aload_1
    //   75: aastore
    //   76: dup
    //   77: iconst_1
    //   78: ldc_w 1531
    //   81: aastore
    //   82: aconst_null
    //   83: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   86: astore_3
    //   87: aload_3
    //   88: ifnonnull +38 -> 126
    //   91: aload_3
    //   92: ifnull +9 -> 101
    //   95: aload_3
    //   96: invokeinterface 421 1 0
    //   101: aconst_null
    //   102: astore_1
    //   103: aload_1
    //   104: areturn
    //   105: new 66	java/lang/String
    //   108: dup
    //   109: ldc_w 1990
    //   112: invokespecial 376	java/lang/String:<init>	(Ljava/lang/String;)V
    //   115: pop
    //   116: goto -87 -> 29
    //   119: ldc_w 1994
    //   122: astore_3
    //   123: goto -77 -> 46
    //   126: aload_0
    //   127: invokevirtual 758	bfz:a	()V
    //   130: new 458	android/content/ContentValues
    //   133: dup
    //   134: invokespecial 459	android/content/ContentValues:<init>	()V
    //   137: astore 4
    //   139: aload 4
    //   141: ldc -35
    //   143: iconst_1
    //   144: invokestatic 605	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   147: invokevirtual 608	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   150: aload_3
    //   151: invokeinterface 394 1 0
    //   156: ifeq +111 -> 267
    //   159: aload_3
    //   160: iconst_0
    //   161: invokeinterface 401 2 0
    //   166: astore 6
    //   168: aload_3
    //   169: iconst_1
    //   170: invokeinterface 401 2 0
    //   175: astore 7
    //   177: aload 7
    //   179: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   182: ifne +11 -> 193
    //   185: aload 6
    //   187: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   190: ifeq +39 -> 229
    //   193: ldc_w 629
    //   196: ldc_w 1996
    //   199: iconst_0
    //   200: anewarray 4	java/lang/Object
    //   203: invokestatic 1085	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   206: goto -56 -> 150
    //   209: astore_1
    //   210: aload_0
    //   211: invokevirtual 785	bfz:c	()V
    //   214: aload_1
    //   215: athrow
    //   216: astore_1
    //   217: aload_3
    //   218: ifnull +9 -> 227
    //   221: aload_3
    //   222: invokeinterface 421 1 0
    //   227: aload_1
    //   228: athrow
    //   229: aload_0
    //   230: getfield 306	bfz:e	Lbha;
    //   233: ldc_w 760
    //   236: aload 4
    //   238: ldc_w 508
    //   241: iconst_1
    //   242: anewarray 66	java/lang/String
    //   245: dup
    //   246: iconst_0
    //   247: aload 6
    //   249: aastore
    //   250: invokevirtual 511	bha:a	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   253: pop
    //   254: aload 5
    //   256: aload 7
    //   258: invokeinterface 418 2 0
    //   263: pop
    //   264: goto -114 -> 150
    //   267: aload_0
    //   268: invokevirtual 783	bfz:b	()V
    //   271: aload_0
    //   272: invokevirtual 785	bfz:c	()V
    //   275: aload_0
    //   276: aload_1
    //   277: invokestatic 1998	bft:d	(Lbfz;Ljava/lang/String;)V
    //   280: new 2000	dne
    //   283: dup
    //   284: aload_1
    //   285: aload 5
    //   287: invokespecial 2003	dne:<init>	(Ljava/lang/String;Ljava/util/List;)V
    //   290: astore 4
    //   292: aload 4
    //   294: astore_1
    //   295: aload_3
    //   296: ifnull -193 -> 103
    //   299: aload_3
    //   300: invokeinterface 421 1 0
    //   305: aload 4
    //   307: areturn
    //   308: astore_1
    //   309: aload 4
    //   311: astore_3
    //   312: goto -95 -> 217
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	315	0	this	bfz
    //   0	315	1	paramString	String
    //   0	315	2	paramBoolean	boolean
    //   13	299	3	localObject1	Object
    //   1	309	4	localObject2	Object
    //   36	250	5	localArrayList	ArrayList
    //   166	82	6	str1	String
    //   175	82	7	str2	String
    // Exception table:
    //   from	to	target	type
    //   130	150	209	finally
    //   150	193	209	finally
    //   193	206	209	finally
    //   229	264	209	finally
    //   267	271	209	finally
    //   126	130	216	finally
    //   210	216	216	finally
    //   271	292	216	finally
    //   46	87	308	finally
  }
  
  public String a(int paramInt1, int paramInt2, long paramLong, String paramString, int paramInt3)
  {
    if (c) {
      new StringBuilder(89).append("insertConversation: conversationType=").append(paramInt1).append(", temporaryTimestamp=").append(paramLong);
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("conversation_type", Integer.valueOf(paramInt1));
    localContentValues.put("is_pending_leave", Integer.valueOf(0));
    localContentValues.put("conversation_id", paramString);
    localContentValues.put("status", Integer.valueOf(2));
    localContentValues.put("view", Integer.valueOf(paramInt3));
    localContentValues.put("is_draft", Integer.valueOf(1));
    localContentValues.put("has_oldest_message", Integer.valueOf(1));
    localContentValues.put("call_media_type", Integer.valueOf(0));
    localContentValues.put("notification_level", Integer.valueOf(30));
    localContentValues.put("disposition", Integer.valueOf(3));
    localContentValues.put("transport_type", Integer.valueOf(paramInt2));
    localContentValues.put("otr_status", Integer.valueOf(2));
    localContentValues.put("sort_timestamp", Long.valueOf(paramLong));
    e.a("conversations", localContentValues);
    return paramString;
  }
  
  public String a(bgd parambgd)
  {
    Object localObject2 = bhw.e.a(s);
    if (!((eot)ilh.a(a, eot.class)).d()) {}
    Object localObject4;
    Object localObject1;
    int i1;
    do
    {
      do
      {
        return (String)localObject2;
      } while ((b != 1) || (k == 1));
      if (bhw.d.b(t)) {
        return t;
      }
      localObject4 = g().b();
      Iterator localIterator = h.iterator();
      localObject1 = localObject2;
      i1 = 0;
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localObject3 = (cyx)localIterator.next();
      } while (((czb)localObject4).a(b));
      i1 += 1;
    } while (b(b) == 1);
    Object localObject3 = a(b, c);
    if (localObject3 != null) {
      localObject1 = localObject3;
    }
    for (;;)
    {
      break;
      if (i1 > 1)
      {
        ezi.e("Babel", 65 + "computeMergeKeyForConversation with > 1 participants: " + i1, new Object[0]);
        localObject2 = (eot)ilh.a(a, eot.class);
        int i2 = c;
        localObject3 = s;
        boolean bool1 = ((eot)localObject2).b(g);
        boolean bool2 = ((eot)localObject2).a(g);
        ezi.e("Babel", String.valueOf(localObject3).length() + 79 + "conv transport: " + i2 + "; id: " + (String)localObject3 + "; isCarrierSms: " + bool1 + "; isCarrierSmsOnly: " + bool2, new Object[0]);
        localObject2 = String.valueOf(aj(a));
        localObject3 = String.valueOf(aj(b));
        ezi.e("Babel", String.valueOf(localObject2).length() + 19 + String.valueOf(localObject3).length() + "self gaia: " + (String)localObject2 + "; chat: " + (String)localObject3, new Object[0]);
        parambgd = h.iterator();
        while (parambgd.hasNext())
        {
          localObject4 = (cyx)parambgd.next();
          localObject2 = String.valueOf(aj(((cyx)localObject4).b()));
          localObject3 = String.valueOf(aj(((cyx)localObject4).c()));
          localObject4 = String.valueOf(aj(c));
          ezi.e("Babel", String.valueOf(localObject2).length() + 23 + String.valueOf(localObject3).length() + String.valueOf(localObject4).length() + "gaia: " + (String)localObject2 + "; chat: " + (String)localObject3 + "; phone: " + (String)localObject4, new Object[0]);
        }
        parambgd = (hpz)ilh.a(a, hpz.class);
        localObject2 = parambgd.a().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          i2 = aal.a((Integer)((Iterator)localObject2).next(), -1);
          localObject3 = String.valueOf(aj(parambgd.a(i2).b("gaia_id")));
          ezi.e("Babel", String.valueOf(localObject3).length() + 18 + "Acct " + i2 + ": " + (String)localObject3, new Object[0]);
        }
        hbs.a(53 + "participant count (not including self) is " + i1);
      }
      return (String)localObject1;
    }
  }
  
  /* Error */
  public String a(czb paramczb)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: getstatic 55	bfz:c	Z
    //   5: ifeq +36 -> 41
    //   8: aload_1
    //   9: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   12: astore_2
    //   13: new 561	java/lang/StringBuilder
    //   16: dup
    //   17: aload_2
    //   18: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   21: invokevirtual 343	java/lang/String:length	()I
    //   24: bipush 40
    //   26: iadd
    //   27: invokespecial 564	java/lang/StringBuilder:<init>	(I)V
    //   30: ldc_w 2073
    //   33: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: aload_2
    //   37: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: pop
    //   41: aload_0
    //   42: ldc 88
    //   44: aload_1
    //   45: invokespecial 1272	bfz:b	(Ljava/lang/String;Lczb;)Landroid/database/Cursor;
    //   48: astore_1
    //   49: aload_1
    //   50: ifnull +36 -> 86
    //   53: aload_1
    //   54: invokeinterface 537 1 0
    //   59: ifeq +27 -> 86
    //   62: aload_1
    //   63: iconst_0
    //   64: invokeinterface 401 2 0
    //   69: astore_2
    //   70: aload_2
    //   71: astore_3
    //   72: aload_1
    //   73: ifnull +11 -> 84
    //   76: aload_1
    //   77: invokeinterface 421 1 0
    //   82: aload_2
    //   83: astore_3
    //   84: aload_3
    //   85: areturn
    //   86: aload_1
    //   87: ifnull -3 -> 84
    //   90: aload_1
    //   91: invokeinterface 421 1 0
    //   96: aconst_null
    //   97: areturn
    //   98: astore_1
    //   99: aconst_null
    //   100: astore_3
    //   101: aload_1
    //   102: astore_2
    //   103: aload_3
    //   104: ifnull +9 -> 113
    //   107: aload_3
    //   108: invokeinterface 421 1 0
    //   113: aload_2
    //   114: athrow
    //   115: astore_2
    //   116: aload_1
    //   117: astore_3
    //   118: goto -15 -> 103
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	121	0	this	bfz
    //   0	121	1	paramczb	czb
    //   12	102	2	localObject1	Object
    //   115	1	2	localObject2	Object
    //   1	117	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   41	49	98	finally
    //   53	70	115	finally
  }
  
  public String a(czb paramczb, String paramString)
  {
    eie localeie = eie.a();
    for (;;)
    {
      try
      {
        if (!TextUtils.isEmpty(paramString))
        {
          Object localObject = b(paramString, localeie);
          if (localObject == null) {
            break label182;
          }
          if (((eot)ilh.a(a, eot.class)).a(g)) {
            break label177;
          }
          paramczb = ((bzq)localObject).b();
          if (!TextUtils.isEmpty(paramczb)) {
            break label170;
          }
          l1 = ((bzq)localObject).a();
          localObject = ezm.l(paramString);
          paramString = paramczb;
          paramczb = (czb)localObject;
          if (!TextUtils.isEmpty(paramString))
          {
            paramczb = bhw.b.a(paramString);
            return paramczb;
          }
        }
        else
        {
          paramString = a;
          l1 = -1L;
          paramczb = null;
          continue;
        }
        if (l1 != -1L)
        {
          paramczb = bhw.a.a(String.valueOf(l1));
          continue;
        }
        if (!TextUtils.isEmpty(paramczb))
        {
          paramczb = bhw.c.a(paramczb);
          continue;
        }
        paramczb = null;
      }
      finally
      {
        localeie.c();
      }
      continue;
      label170:
      long l1 = -1L;
      continue;
      label177:
      paramczb = null;
      continue;
      label182:
      l1 = -1L;
      paramczb = null;
    }
  }
  
  public String a(String paramString, List<czb> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      czb localczb = (czb)paramList.next();
      long l1 = a(paramString, a, b, null, null, null);
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append('|');
      }
      localStringBuilder.append(l1);
    }
    return localStringBuilder.toString();
  }
  
  public String a(List<cyx> paramList, int paramInt)
  {
    int i1 = 0;
    int i2 = paramList.size();
    StringBuilder localStringBuilder = new StringBuilder();
    String[] arrayOfString = new String[i2 + 1];
    i2 = paramList.size() - 1;
    Object localObject1;
    Object localObject3;
    label62:
    int i3;
    if (i2 >= -1) {
      if (i2 == -1)
      {
        localObject1 = f.b();
        localObject3 = null;
        if (i1 > 0) {
          localStringBuilder.append(" OR ");
        }
        if ((localObject1 == null) || (TextUtils.isEmpty(b))) {
          break label156;
        }
        localStringBuilder.append("chat_id=?");
        i3 = i1 + 1;
        arrayOfString[i1] = b;
        i1 = i3;
      }
    }
    for (;;)
    {
      i2 -= 1;
      break;
      localObject3 = (cyx)paramList.get(i2);
      localObject1 = b;
      localObject3 = ((cyx)localObject3).f();
      break label62;
      label156:
      if ((localObject1 != null) && (!TextUtils.isEmpty((CharSequence)localObject3)))
      {
        localStringBuilder.append("phone_id=?");
        i3 = i1 + 1;
        arrayOfString[i1] = localObject3;
        i1 = i3;
        continue;
        paramList = a(localStringBuilder.toString(), arrayOfString, paramInt);
        if (paramList != null) {
          try
          {
            if (paramList.moveToFirst())
            {
              localObject1 = paramList.getString(0);
              if (c)
              {
                localObject3 = String.valueOf(localObject1);
                if (((String)localObject3).length() == 0) {
                  break label273;
                }
                "queryGroupPhoneConversation found conversation ".concat((String)localObject3);
              }
              for (;;)
              {
                return (String)localObject1;
                label273:
                new String("queryGroupPhoneConversation found conversation ");
              }
            }
            if (paramList == null) {
              break label312;
            }
          }
          finally
          {
            if (paramList != null) {
              paramList.close();
            }
          }
        }
        paramList.close();
        label312:
        return null;
      }
    }
  }
  
  public List<Long> a(int paramInt1, int paramInt2)
  {
    Object localObject1;
    if (c)
    {
      localObject1 = String.valueOf(ezi.b(f.a()));
      if (((String)localObject1).length() != 0) {
        "getConversationTimestamps: account=".concat((String)localObject1);
      }
    }
    else
    {
      localObject1 = "transport_type!=3";
      if (paramInt2 == -1) {
        break label354;
      }
      if (paramInt2 != 1) {
        break label258;
      }
    }
    for (;;)
    {
      try
      {
        localObject1 = String.valueOf("status");
        localObject3 = String.valueOf("inviter_affinity");
        localObject1 = String.valueOf("transport_type!=3").length() + 14 + String.valueOf(localObject1).length() + String.valueOf(localObject3).length() + "transport_type!=3" + " AND " + (String)localObject1 + "=? AND " + (String)localObject3 + "=?";
        localObject3 = new String[2];
        localObject3[0] = String.valueOf(paramInt2);
        localObject3[1] = "1";
        localObject1 = e.a("conversations", z, (String)localObject1, (String[])localObject3, null, null, "sort_timestamp DESC", String.valueOf(paramInt1));
        try
        {
          localObject3 = new ArrayList();
          if (!((Cursor)localObject1).moveToNext()) {
            continue;
          }
          ((List)localObject3).add(Long.valueOf(((Cursor)localObject1).getLong(0)));
          continue;
          if (localObject3 == null) {
            continue;
          }
        }
        finally
        {
          localObject3 = localObject1;
          localObject1 = localObject4;
        }
      }
      finally
      {
        label258:
        localObject3 = null;
        continue;
        if (localObject2 == null) {
          continue;
        }
        ((Cursor)localObject2).close();
        return (List<Long>)localObject3;
      }
      ((Cursor)localObject3).close();
      throw ((Throwable)localObject1);
      new String("getConversationTimestamps: account=");
      break;
      localObject1 = String.valueOf("status");
      localObject1 = String.valueOf("transport_type!=3").length() + 7 + String.valueOf(localObject1).length() + "transport_type!=3" + " AND " + (String)localObject1 + "=?";
      Object localObject3 = new String[1];
      localObject3[0] = String.valueOf(paramInt2);
      continue;
      label354:
      localObject3 = null;
    }
  }
  
  public List<cyx> a(String paramString, czb paramczb)
  {
    hbs.b("Expected non-null", paramczb);
    hbs.b("Expected non-null", a);
    try
    {
      localCursor = e.a("conversation_participants_view", cza.a, "conversation_id=? AND gaia_id!=?", new String[] { paramString, a }, null);
      try
      {
        localArrayList = new ArrayList();
        if (localCursor == null) {
          break label265;
        }
        for (;;)
        {
          if (!localCursor.moveToNext()) {
            break label265;
          }
          if (localCursor != null) {
            break;
          }
          paramString = null;
          localArrayList.add(paramString);
        }
        if (paramczb == null) {
          break label105;
        }
      }
      finally
      {
        paramczb = localCursor;
      }
    }
    finally
    {
      for (;;)
      {
        Cursor localCursor;
        ArrayList localArrayList;
        czd localczd;
        String str1;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        paramczb = null;
      }
    }
    paramczb.close();
    label105:
    throw paramString;
    localczd = czd.values()[localCursor.getInt(8)];
    str1 = localCursor.getString(1);
    str2 = localCursor.getString(2);
    str3 = localCursor.getString(3);
    str4 = localCursor.getString(10);
    str5 = localCursor.getString(4);
    str6 = localCursor.getString(5);
    if (TextUtils.isEmpty(null))
    {
      paramString = localCursor.getString(6);
      label192:
      str7 = localCursor.getString(7);
      str8 = localCursor.getString(11);
      if (localCursor.getInt(9) == 0) {
        break label260;
      }
    }
    label260:
    for (paramczb = Boolean.TRUE;; paramczb = null)
    {
      paramString = aal.a(localczd, str1, str2, str3, str4, str5, str6, paramString, str7, str8, paramczb, 0);
      break;
      paramString = null;
      break label192;
    }
    label265:
    if (localCursor != null) {
      localCursor.close();
    }
    return localArrayList;
  }
  
  /* Error */
  public List<dro> a(boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 380	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 381	java/util/ArrayList:<init>	()V
    //   9: astore 5
    //   11: aload_0
    //   12: getfield 306	bfz:e	Lbha;
    //   15: ldc_w 1105
    //   18: getstatic 123	bfz:m	[Ljava/lang/String;
    //   21: aconst_null
    //   22: aconst_null
    //   23: aconst_null
    //   24: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   27: astore 4
    //   29: aload 4
    //   31: ifnull +300 -> 331
    //   34: aload 4
    //   36: invokeinterface 394 1 0
    //   41: ifeq +290 -> 331
    //   44: new 2125	dro
    //   47: dup
    //   48: invokespecial 2126	dro:<init>	()V
    //   51: astore_3
    //   52: aload_3
    //   53: aload 4
    //   55: iconst_0
    //   56: invokeinterface 401 2 0
    //   61: putfield 2127	dro:a	Ljava/lang/String;
    //   64: aload_3
    //   65: aload 4
    //   67: iconst_2
    //   68: invokeinterface 401 2 0
    //   73: putfield 2128	dro:b	Ljava/lang/String;
    //   76: aload_3
    //   77: aload 4
    //   79: iconst_3
    //   80: invokeinterface 411 2 0
    //   85: i2l
    //   86: putfield 2129	dro:d	J
    //   89: iload_1
    //   90: ifeq +229 -> 319
    //   93: aload_3
    //   94: new 380	java/util/ArrayList
    //   97: dup
    //   98: invokespecial 381	java/util/ArrayList:<init>	()V
    //   101: putfield 2131	dro:e	Ljava/util/List;
    //   104: aload_0
    //   105: getfield 306	bfz:e	Lbha;
    //   108: ldc_w 383
    //   111: getstatic 115	bfz:l	[Ljava/lang/String;
    //   114: ldc_w 1107
    //   117: iconst_1
    //   118: anewarray 66	java/lang/String
    //   121: dup
    //   122: iconst_0
    //   123: aload_3
    //   124: getfield 2127	dro:a	Ljava/lang/String;
    //   127: aastore
    //   128: aconst_null
    //   129: aconst_null
    //   130: aconst_null
    //   131: aconst_null
    //   132: invokevirtual 1428	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   135: astore_2
    //   136: aload_2
    //   137: ifnull +172 -> 309
    //   140: aload_2
    //   141: invokeinterface 394 1 0
    //   146: ifeq +163 -> 309
    //   149: new 396	drp
    //   152: dup
    //   153: invokespecial 397	drp:<init>	()V
    //   156: astore 6
    //   158: aload 6
    //   160: aload_2
    //   161: iconst_0
    //   162: invokeinterface 401 2 0
    //   167: putfield 403	drp:a	Ljava/lang/String;
    //   170: aload 6
    //   172: aload_2
    //   173: iconst_1
    //   174: invokeinterface 401 2 0
    //   179: putfield 405	drp:b	Ljava/lang/String;
    //   182: aload 6
    //   184: aload_2
    //   185: iconst_2
    //   186: invokeinterface 401 2 0
    //   191: putfield 407	drp:c	Ljava/lang/String;
    //   194: aload 6
    //   196: aload_2
    //   197: iconst_3
    //   198: invokeinterface 411 2 0
    //   203: i2l
    //   204: putfield 412	drp:d	J
    //   207: aload 6
    //   209: getfield 403	drp:a	Ljava/lang/String;
    //   212: aload 4
    //   214: iconst_1
    //   215: invokeinterface 401 2 0
    //   220: invokevirtual 890	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   223: ifeq +59 -> 282
    //   226: aload_3
    //   227: aload 6
    //   229: putfield 2134	dro:c	Ldrp;
    //   232: aload_3
    //   233: getfield 2131	dro:e	Ljava/util/List;
    //   236: aload 6
    //   238: invokeinterface 418 2 0
    //   243: pop
    //   244: goto -108 -> 136
    //   247: astore 5
    //   249: aload_2
    //   250: astore_3
    //   251: aload 5
    //   253: astore_2
    //   254: aload_3
    //   255: ifnull +9 -> 264
    //   258: aload_3
    //   259: invokeinterface 421 1 0
    //   264: aload_2
    //   265: athrow
    //   266: astore_2
    //   267: aload 4
    //   269: astore_3
    //   270: aload_3
    //   271: ifnull +9 -> 280
    //   274: aload_3
    //   275: invokeinterface 421 1 0
    //   280: aload_2
    //   281: athrow
    //   282: aload_3
    //   283: getfield 2134	dro:c	Ldrp;
    //   286: ifnonnull -54 -> 232
    //   289: aload 4
    //   291: iconst_1
    //   292: invokeinterface 401 2 0
    //   297: ifnonnull -65 -> 232
    //   300: aload_3
    //   301: aload 6
    //   303: putfield 2134	dro:c	Ldrp;
    //   306: goto -74 -> 232
    //   309: aload_2
    //   310: ifnull +9 -> 319
    //   313: aload_2
    //   314: invokeinterface 421 1 0
    //   319: aload 5
    //   321: aload_3
    //   322: invokeinterface 418 2 0
    //   327: pop
    //   328: goto -294 -> 34
    //   331: aload 4
    //   333: ifnull +10 -> 343
    //   336: aload 4
    //   338: invokeinterface 421 1 0
    //   343: aload 5
    //   345: areturn
    //   346: astore_2
    //   347: goto -77 -> 270
    //   350: astore_2
    //   351: aconst_null
    //   352: astore_3
    //   353: goto -99 -> 254
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	356	0	this	bfz
    //   0	356	1	paramBoolean	boolean
    //   135	130	2	localObject1	Object
    //   266	48	2	localObject2	Object
    //   346	1	2	localObject3	Object
    //   350	1	2	localObject4	Object
    //   1	352	3	localObject5	Object
    //   27	310	4	localCursor	Cursor
    //   9	1	5	localArrayList	ArrayList
    //   247	97	5	localList	List<dro>
    //   156	146	6	localdrp	drp
    // Exception table:
    //   from	to	target	type
    //   140	232	247	finally
    //   232	244	247	finally
    //   282	306	247	finally
    //   34	89	266	finally
    //   93	104	266	finally
    //   258	264	266	finally
    //   264	266	266	finally
    //   313	319	266	finally
    //   319	328	266	finally
    //   11	29	346	finally
    //   104	136	350	finally
  }
  
  public void a()
  {
    e.a();
    h += 1;
  }
  
  public void a(int paramInt1, int paramInt2, long paramLong, String paramString)
  {
    if (c) {
      ezi.b("Babel_ConvHelper", String.valueOf(paramString).length() + 127 + "updateConversationOtrStatus, conversationId=" + paramString + ", otrStatus=" + paramInt1 + ", otrToggle=" + paramInt2 + ", eventTimestamp=" + paramLong, new Object[0]);
    }
    long l1 = x(paramString);
    if (paramLong >= l1)
    {
      localContentValues = new ContentValues();
      localContentValues.put("otr_status", Integer.valueOf(paramInt1));
      localContentValues.put("otr_toggle", Integer.valueOf(paramInt2));
      localContentValues.put("last_otr_modification_time", Long.valueOf(paramLong));
      if (e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString }) > 0) {
        bft.d(this);
      }
    }
    while (!c)
    {
      ContentValues localContentValues;
      return;
      ezi.e("Babel_ConvHelper", "updateConversationOtrState: failed to update database", new Object[0]);
      return;
    }
    ezi.b("Babel_ConvHelper", 64 + "dropping OTR update: " + paramLong + " < " + l1, new Object[0]);
  }
  
  public void a(int paramInt, long paramLong)
  {
    if (c)
    {
      String str = String.valueOf(ezi.b(f.a()));
      new StringBuilder(String.valueOf(str).length() + 80).append("deleteAllInvites: affinity=").append(paramInt).append(", timestamp=").append(paramLong).append(", account=").append(str);
    }
    e.a();
    try
    {
      int i1 = e.a("conversations", "view=? AND status=? AND inviter_affinity=? AND sort_timestamp<?", new String[] { "1", "1", String.valueOf(paramInt), String.valueOf(paramLong) });
      e.b();
      e.c();
      if ((i1 > 0) && (c)) {
        new StringBuilder(60).append("deleteAllInvites: Removed ").append(i1).append(" (affinity:").append(paramInt).append(")");
      }
      bft.d(this);
      return;
    }
    finally
    {
      e.c();
    }
  }
  
  public void a(int paramInt, long paramLong, String paramString)
  {
    String str = d.b("updateConversationCallMediaTypeAndNotify");
    a();
    for (;;)
    {
      int i3;
      int i1;
      try
      {
        Object localObject;
        if (c)
        {
          localObject = String.valueOf("updateConversationCallMediaType, conversationId ");
          new StringBuilder(String.valueOf(localObject).length() + 71 + String.valueOf(paramString).length()).append((String)localObject).append(paramString).append(", callMediaType=").append(paramInt).append(", hangoutEventTimestamp=").append(paramLong);
        }
        i3 = a("getCallMediaType", paramString, "call_media_type", 0);
        long l1 = a("getLastHangoutEventTime", paramString, "last_hangout_event_time", -1L);
        i1 = paramInt;
        if (paramInt != -1) {
          break label475;
        }
        if (i3 == 0)
        {
          i1 = 1;
          break label475;
          if (paramLong < l1) {
            break label470;
          }
          localObject = new ContentValues();
          ((ContentValues)localObject).put("call_media_type", Integer.valueOf(i1));
          if (paramLong > aih) {
            ((ContentValues)localObject).put("has_video_notifications", Integer.valueOf(1));
          }
          if (paramInt != i2) {
            ((ContentValues)localObject).put("last_hangout_event_time", Long.valueOf(paramLong));
          }
          e.a("conversations", (ContentValues)localObject, "conversation_id=?", new String[] { paramString });
          paramString = ((hba)ilh.a(a, hba.class)).a(g);
        }
        switch (i1)
        {
        case 0: 
          ezi.d("Babel_ConvHelper", "Unknown callMediaType.", new Object[0]);
          if ((i3 != 0) || (i1 == 0)) {
            break label442;
          }
          paramString.a(2940).d();
          break label496;
          b();
          c();
          if (paramInt != 0) {
            bft.a(f);
          }
          d.c(str);
          return;
          i1 = i3;
        }
      }
      finally
      {
        c();
      }
      paramInt = 0;
      break label482;
      int i2 = 0;
      continue;
      paramString.a(2920).d();
      continue;
      paramString.a(2921).d();
      continue;
      paramString.a(2922).d();
      continue;
      label442:
      if ((i3 != 0) && (i1 == 0))
      {
        paramString.a(2941).d();
        break label496;
        label470:
        paramInt = 0;
        continue;
        label475:
        if (i3 == 0) {
          continue;
        }
        paramInt = 1;
        label482:
        if (i1 == 0) {
          continue;
        }
        i2 = 1;
        continue;
        continue;
      }
      label496:
      paramInt = 1;
    }
  }
  
  public void a(long paramLong, int paramInt)
  {
    String str = EsProvider.a(paramInt);
    bff.b(a, g().g(), str, paramLong);
  }
  
  /* Error */
  public void a(long paramLong1, int paramInt, long paramLong2)
  {
    // Byte code:
    //   0: new 458	android/content/ContentValues
    //   3: dup
    //   4: invokespecial 459	android/content/ContentValues:<init>	()V
    //   7: astore 7
    //   9: aload_0
    //   10: getfield 306	bfz:e	Lbha;
    //   13: invokevirtual 979	bha:a	()V
    //   16: aload 7
    //   18: ldc_w 1818
    //   21: iload_3
    //   22: invokestatic 605	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   25: invokevirtual 608	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   28: aload 7
    //   30: ldc_w 1792
    //   33: lload 4
    //   35: invokestatic 519	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   38: invokevirtual 936	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   41: aload_0
    //   42: getfield 306	bfz:e	Lbha;
    //   45: astore 8
    //   47: ldc_w 2198
    //   50: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   53: astore 6
    //   55: lload_1
    //   56: invokestatic 506	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   59: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   62: astore 9
    //   64: aload 9
    //   66: invokevirtual 343	java/lang/String:length	()I
    //   69: ifeq +41 -> 110
    //   72: aload 6
    //   74: aload 9
    //   76: invokevirtual 347	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   79: astore 6
    //   81: aload 8
    //   83: ldc_w 760
    //   86: aload 7
    //   88: aload 6
    //   90: aconst_null
    //   91: invokevirtual 511	bha:a	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   94: pop
    //   95: aload_0
    //   96: getfield 306	bfz:e	Lbha;
    //   99: invokevirtual 985	bha:b	()V
    //   102: aload_0
    //   103: getfield 306	bfz:e	Lbha;
    //   106: invokevirtual 981	bha:c	()V
    //   109: return
    //   110: new 66	java/lang/String
    //   113: dup
    //   114: aload 6
    //   116: invokespecial 376	java/lang/String:<init>	(Ljava/lang/String;)V
    //   119: astore 6
    //   121: goto -40 -> 81
    //   124: astore 6
    //   126: aload_0
    //   127: getfield 306	bfz:e	Lbha;
    //   130: invokevirtual 981	bha:c	()V
    //   133: aload 6
    //   135: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	136	0	this	bfz
    //   0	136	1	paramLong1	long
    //   0	136	3	paramInt	int
    //   0	136	4	paramLong2	long
    //   53	67	6	str1	String
    //   124	10	6	localObject	Object
    //   7	80	7	localContentValues	ContentValues
    //   45	37	8	localbha	bha
    //   62	13	9	str2	String
    // Exception table:
    //   from	to	target	type
    //   16	81	124	finally
    //   81	102	124	finally
    //   110	121	124	finally
  }
  
  public void a(long paramLong1, long paramLong2)
  {
    Object localObject1;
    if (c)
    {
      localObject1 = String.valueOf("updateConversationScrollTime: scrollTime=");
      new StringBuilder(String.valueOf(localObject1).length() + 70).append((String)localObject1).append(paramLong1).append(" scrollToConverationTimestamp=").append(paramLong2);
    }
    a();
    try
    {
      localObject1 = G();
      bgu localbgu = a((bgu)localObject1, paramLong1, paramLong2);
      if (localbgu != localObject1)
      {
        int i1 = g().g();
        if (a != a) {
          bff.b(a, i1, "first_peak_scroll_time", a);
        }
        if (b != b) {
          bff.b(a, i1, "first_peak_scroll_to_conversation_timestamp", b);
        }
        if (c != c) {
          bff.b(a, i1, "second_peak_scroll_time", c);
        }
        if (d != d) {
          bff.b(a, i1, "second_peak_scroll_to_conversation_timestamp", d);
        }
      }
      b();
      return;
    }
    finally
    {
      c();
    }
  }
  
  public void a(long paramLong1, emc paramemc, long paramLong2)
  {
    if (c)
    {
      localObject = String.valueOf(paramemc);
      new StringBuilder(String.valueOf(localObject).length() + 94).append("setMessageStatusTimestamp: messageRowId=").append(paramLong1).append(", status=").append((String)localObject).append(", ts=").append(paramLong2);
    }
    Object localObject = new ContentValues();
    ((ContentValues)localObject).put("status", Integer.valueOf(paramemc.ordinal()));
    if (paramLong2 >= 0L) {
      ((ContentValues)localObject).put("timestamp", Long.valueOf(paramLong2));
    }
    if (paramemc == emc.b) {
      ((ContentValues)localObject).put("notified_for_failure", Integer.valueOf(0));
    }
    bha localbha = e;
    paramemc = String.valueOf("_id=");
    String str = String.valueOf(String.valueOf(paramLong1));
    if (str.length() != 0) {}
    for (paramemc = paramemc.concat(str);; paramemc = new String(paramemc))
    {
      localbha.a("messages", (ContentValues)localObject, paramemc, null);
      return;
    }
  }
  
  public void a(long paramLong, List<String> paramList)
  {
    if (!paramList.isEmpty())
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("notified", Long.valueOf(paramLong));
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("_id");
      localStringBuilder.append(" IN(");
      int i1 = 0;
      while (i1 < paramList.size() - 1)
      {
        localStringBuilder.append("?,");
        i1 += 1;
      }
      localStringBuilder.append("?)");
      e.a("messages", localContentValues, localStringBuilder.toString(), (String[])paramList.toArray(new String[paramList.size()]));
    }
  }
  
  public void a(bfd parambfd, String paramString1, String paramString2, long paramLong1, long paramLong2, int paramInt)
  {
    dyy localdyy = new dyy();
    ArrayList localArrayList = new ArrayList();
    czb localczb = czb.a(paramString1);
    Iterator localIterator = H(paramString2).iterator();
    while (localIterator.hasNext())
    {
      cyx localcyx = (cyx)localIterator.next();
      localArrayList.add(b);
      if (b.a.equalsIgnoreCase(paramString1)) {
        localczb = b;
      }
    }
    long l1;
    int i1;
    if (y(paramString2) == 1)
    {
      l1 = paramLong2 + TimeUnit.DAYS.toMicros(1L);
      paramString1 = a(paramString2, localArrayList);
      a(paramString2, String.valueOf(paramLong1), emc.e, localczb, emd.h, paramLong2, l1, paramInt, null, paramString1);
      i1 = parambfd.g();
      if (paramInt != 20) {
        break label206;
      }
      localdyy.a(paramLong2, i1);
    }
    for (;;)
    {
      ((cyh)ilh.a(a, cyh.class)).a(i1, localdyy.f());
      return;
      l1 = 0L;
      break;
      label206:
      localdyy.a(i1);
    }
  }
  
  public void a(dmo paramdmo)
  {
    if (ezi.a("Babel_ConvHelper", 3))
    {
      localObject = String.valueOf(a);
      ezi.a("Babel_ConvHelper", String.valueOf(localObject).length() + 42 + "updateParticipantData  for participantId: " + (String)localObject, new Object[0]);
    }
    int i1 = a(a.a, a.b, b, null, c, true);
    if (i1 >= 0)
    {
      localObject = new ContentValues();
      ((ContentValues)localObject).put("fallback_name", c);
      if (b != null)
      {
        ((ContentValues)localObject).put("participant_type", Integer.valueOf(czd.d.ordinal()));
        ((ContentValues)localObject).put("phone_id", b);
      }
      e.a("participants", (ContentValues)localObject, "_id=?", new String[] { Integer.toString(i1) });
      return;
    }
    Object localObject = String.valueOf(a.toString());
    paramdmo = c;
    ezi.e("Babel_ConvHelper", String.valueOf(localObject).length() + 64 + String.valueOf(paramdmo).length() + "updateParticipantData did not find db row for " + (String)localObject + " and fallbackName=" + paramdmo, new Object[0]);
    hbs.a("updateParticipantData did not find db row");
  }
  
  public void a(dsj paramdsj)
  {
    Object localObject5 = null;
    Object localObject1;
    String str;
    ContentValues localContentValues;
    int i1;
    label150:
    boolean bool;
    label172:
    label207:
    Object localObject2;
    if (c)
    {
      localObject1 = String.valueOf(paramdsj.k());
      if (((String)localObject1).length() != 0) {
        "finalizeMessageFromResponse, conversationId ".concat((String)localObject1);
      }
    }
    else
    {
      str = paramdsj.k();
      localObject1 = n(str, paramdsj.l());
      if ((localObject1 != null) && (localObject1 == emc.f)) {
        C();
      }
      localContentValues = new ContentValues();
      localContentValues.put("message_id", paramdsj.o());
      localContentValues.put("status", Integer.valueOf(emc.e.ordinal()));
      localContentValues.put("type", Integer.valueOf(emd.b.ordinal()));
      localContentValues.put("timestamp", Long.valueOf(d));
      if (c.b != 6) {
        break label885;
      }
      i1 = 1;
      if (i1 != 0) {
        localContentValues.put("off_the_record", Boolean.valueOf(true));
      }
      if (i1 != 0) {
        break label890;
      }
      bool = true;
      localContentValues.put("persisted", Boolean.valueOf(bool));
      if (paramdsj.p() <= 0L) {
        break label895;
      }
      localContentValues.put("expiration_timestamp", Long.valueOf(paramdsj.p()));
      if (paramdsj.q().length <= 0) {
        break label1005;
      }
      localObject2 = paramdsj.q()[0];
      localContentValues.put("image_id", (String)localObject2);
    }
    for (;;)
    {
      if (paramdsj.r().length > 0) {
        localContentValues.put("album_id", paramdsj.r()[0]);
      }
      if (paramdsj.t().length > 0) {
        localContentValues.put("stream_id", paramdsj.t()[0]);
      }
      String[] arrayOfString = new String[2];
      arrayOfString[0] = String.valueOf(paramdsj.l());
      arrayOfString[1] = str;
      Object localObject4;
      label374:
      Object localObject3;
      if (paramdsj.q().length > 0)
      {
        localObject1 = paramdsj.s()[0];
        if (localObject2 != null)
        {
          localObject4 = af((String)localObject2);
          if (localObject4 != null)
          {
            am((String)localObject2);
            if (c != null)
            {
              localObject1 = String.valueOf(c);
              if (((String)localObject1).length() != 0)
              {
                localObject1 = "file://".concat((String)localObject1);
                localObject2 = localObject1;
                localObject3 = localObject1;
                label382:
                localContentValues.put("local_url", (String)localObject3);
                localObject1 = localObject2;
                localObject2 = localObject4;
                label399:
                localContentValues.put("remote_url", (String)localObject1);
                localObject3 = localObject1;
                if (localObject2 == null)
                {
                  localObject3 = localObject1;
                  if (!paramdsj.u()) {
                    localObject2 = localObject5;
                  }
                }
              }
            }
          }
        }
      }
      for (;;)
      {
        try
        {
          localObject4 = e.a("messages", v, "message_id=? AND conversation_id=?", arrayOfString, null);
          localObject2 = localObject4;
          if (((Cursor)localObject4).moveToFirst())
          {
            localObject2 = localObject4;
            localObject3 = ((Cursor)localObject4).getString(0);
            localObject2 = localObject4;
            if (!TextUtils.isEmpty((CharSequence)localObject3))
            {
              localObject2 = localObject4;
              localObject3 = Uri.parse((String)localObject3);
              localObject2 = localObject4;
              if (TextUtils.equals(((Uri)localObject3).getAuthority(), EsProvider.a))
              {
                localObject2 = localObject4;
                a.getContentResolver().delete((Uri)localObject3, null, null);
              }
            }
          }
          localObject3 = localObject1;
          if (localObject4 != null)
          {
            ((Cursor)localObject4).close();
            localObject3 = localObject1;
          }
          if (c)
          {
            localObject1 = String.valueOf(String.valueOf(paramdsj.l()));
            new StringBuilder(String.valueOf(str).length() + 30 + String.valueOf(localObject1).length()).append("finalizeMessageFromResponse: ").append(str).append(" ").append((String)localObject1);
          }
          if (e.a("messages", localContentValues, "message_id=? AND conversation_id=?", arrayOfString) == 0)
          {
            arrayOfString[0] = String.valueOf(paramdsj.o());
            if (e.a("messages", localContentValues, "message_id=? AND conversation_id=?", arrayOfString) == 0)
            {
              localObject1 = String.valueOf(paramdsj.l());
              paramdsj = String.valueOf(paramdsj.o());
              ezi.e("Babel_ConvHelper", String.valueOf(localObject1).length() + 68 + String.valueOf(paramdsj).length() + "Failed to update the given message with client id: " + (String)localObject1 + " and message id: " + paramdsj, new Object[0]);
              hbs.a("Failed to update the given message with client id");
            }
          }
          if (localObject3 != null)
          {
            localContentValues.clear();
            localContentValues.put("snippet_image_url", (String)localObject3);
            i1 = e.a("conversations", localContentValues, "conversation_id=?", new String[] { str });
            if (i1 != 1)
            {
              ezi.e("Babel", String.valueOf(str).length() + 84 + "couldn't update remote url for conversation; got count " + i1 + " for conversation " + str, new Object[0]);
              hbs.a("couldn't update remote url for conversation");
            }
          }
          return;
        }
        finally
        {
          label885:
          label890:
          label895:
          if (localObject2 == null) {
            continue;
          }
          ((Cursor)localObject2).close();
        }
        new String("finalizeMessageFromResponse, conversationId ");
        break;
        i1 = 0;
        break label150;
        bool = false;
        break label172;
        localContentValues.putNull("expiration_timestamp");
        break label207;
        localObject1 = new String("file://");
        break label374;
        localObject2 = String.valueOf(localObject2);
        if (((String)localObject2).length() != 0)
        {
          localObject3 = "sticker://".concat((String)localObject2);
          localObject2 = localObject1;
          break label382;
        }
        localObject3 = new String("sticker://");
        localObject2 = localObject1;
        break label382;
        localObject2 = localObject4;
        break label399;
        localObject2 = null;
        break label399;
        localObject3 = null;
      }
      label1005:
      localObject2 = null;
    }
  }
  
  public void a(ega paramega)
  {
    if (c)
    {
      localObject = String.valueOf("insertNewConversation -- conversationId: ");
      String str1 = String.valueOf(paramega.a());
      String str2 = String.valueOf(paramega.e());
      new StringBuilder(String.valueOf(localObject).length() + 8 + String.valueOf(str1).length() + String.valueOf(str2).length()).append((String)localObject).append(str1).append(", name: ").append(str2);
    }
    Object localObject = b(paramega);
    if (!paramega.z()) {
      ((ContentValues)localObject).put("sort_timestamp", Long.valueOf(paramega.v()));
    }
    ((ContentValues)localObject).put("is_pending_leave", Integer.valueOf(0));
    ((ContentValues)localObject).put("conversation_id", paramega.a());
    e.a("conversations", (ContentValues)localObject);
  }
  
  public void a(eie parameie, cyx paramcyx)
  {
    parameie = a(parameie, c, e, h);
    paramcyx.a(a, b);
  }
  
  public void a(String paramString, int paramInt)
  {
    if (c) {
      new StringBuilder(String.valueOf(paramString).length() + 78).append("setConversationNotificationLevel, conversationId=").append(paramString).append("notificationLevel=").append(paramInt);
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("notification_level", Integer.valueOf(paramInt));
    e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString });
    bft.d(this);
  }
  
  public void a(String paramString, int paramInt, ega paramega)
  {
    Object localObject1;
    if (c)
    {
      localObject1 = String.valueOf(paramega.a());
      if (paramString.equals(paramega.a())) {
        break label224;
      }
    }
    label224:
    for (boolean bool = true;; bool = false)
    {
      Object localObject2 = String.valueOf(paramega.e());
      new StringBuilder(String.valueOf(paramString).length() + 85 + String.valueOf(localObject1).length() + String.valueOf(localObject2).length()).append("updateExistingConversation -- currentId: ").append(paramString).append(", conversationId: ").append((String)localObject1).append(", is_new_id: ").append(bool).append(", name: ").append((String)localObject2);
      localObject1 = b(paramega);
      if ((paramInt == 2) && (paramega.r() == 1)) {
        ((ContentValues)localObject1).put("status", Integer.valueOf(2));
      }
      if (!paramString.equals(paramega.a()))
      {
        ((ContentValues)localObject1).put("conversation_id", paramega.a());
        localObject2 = h(paramString, paramString);
        if (localObject2 != null) {
          f(aal.a((Long)localObject2, 0L));
        }
      }
      if (paramega.r() != 1) {
        ((ContentValues)localObject1).put("disposition", Integer.valueOf(0));
      }
      a(paramString, paramega.a(), (ContentValues)localObject1);
      return;
    }
  }
  
  public void a(String paramString, long paramLong)
  {
    if (c) {
      new StringBuilder(String.valueOf(paramString).length() + 81).append("insertPlaceholderConversation: conversationId=").append(paramString).append(" seenTimestamp=").append(paramLong);
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("conversation_id", paramString);
    localContentValues.put("is_pending_leave", Integer.valueOf(0));
    localContentValues.put("metadata_present", Integer.valueOf(0));
    localContentValues.put("chat_watermark", Long.valueOf(paramLong));
    localContentValues.put("hangout_watermark", Long.valueOf(paramLong));
    e.a("conversations", localContentValues);
  }
  
  public void a(String paramString, long paramLong1, long paramLong2)
  {
    if (c) {
      new StringBuilder(String.valueOf(paramString).length() + 105).append("setTimestampsForPendingSentMessages, conversationId=").append(paramString).append(", ts=").append(paramLong1).append(", orgTs=").append(paramLong2);
    }
    localObject1 = new ContentValues();
    try
    {
      bha localbha = e;
      String str1 = String.valueOf("conversation_id=? AND (status=");
      int i1 = emc.c.ordinal();
      String str2 = String.valueOf("timestamp");
      String str3 = String.valueOf("timestamp");
      str1 = String.valueOf(str1).length() + 26 + String.valueOf(str2).length() + String.valueOf(str3).length() + str1 + i1 + ") AND " + str2 + ">? AND " + str3 + "<?";
      paramString = localbha.a("messages", new String[] { "_id" }, str1, new String[] { paramString, String.valueOf(paramLong2), String.valueOf(paramLong1) }, "timestamp ASC");
      try
      {
        ((ContentValues)localObject1).clear();
        while (paramString.moveToNext())
        {
          paramLong1 += 1L;
          ((ContentValues)localObject1).put("timestamp", Long.valueOf(paramLong1));
          e.a("messages", (ContentValues)localObject1, "_id=?", new String[] { String.valueOf(paramString.getLong(0)) });
        }
        if (localObject1 == null) {
          break label310;
        }
      }
      finally
      {
        localObject1 = paramString;
        paramString = (String)localObject2;
      }
    }
    finally
    {
      for (;;)
      {
        localObject1 = null;
      }
    }
    ((Cursor)localObject1).close();
    label310:
    throw paramString;
    if (paramString != null) {
      paramString.close();
    }
  }
  
  public void a(String paramString, long paramLong1, long paramLong2, long paramLong3)
  {
    long l1 = m(paramString);
    if (l1 == paramLong1)
    {
      if (c) {
        new StringBuilder(105).append("updateLatestMessageTimestamp. Local timestamp ").append(paramLong1).append(". Server timestamp ").append(paramLong2);
      }
      localContentValues = new ContentValues();
      localContentValues.put("latest_message_timestamp", Long.valueOf(paramLong2));
      if (paramLong3 > 0L)
      {
        localContentValues.put("latest_message_expiration_timestamp", Long.valueOf(paramLong3));
        e.a("conversations", localContentValues, "conversation_id=?", new String[] { String.valueOf(paramString) });
      }
    }
    while (!c) {
      for (;;)
      {
        ContentValues localContentValues;
        return;
        localContentValues.putNull("latest_message_expiration_timestamp");
      }
    }
    new StringBuilder(133).append("updateLatestMessageTimestamp skipped. Local timestamp for message ").append(paramLong1).append(". Latest message timestamp ").append(l1);
  }
  
  public void a(String paramString, long paramLong, czb paramczb)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("conversation_type", Integer.valueOf(1));
    localContentValues.put("is_pending_leave", Integer.valueOf(0));
    localContentValues.put("conversation_id", paramString);
    localContentValues.put("has_persistent_events", Boolean.valueOf(false));
    localContentValues.put("status", Integer.valueOf(2));
    localContentValues.put("view", Integer.valueOf(1));
    localContentValues.put("is_draft", Integer.valueOf(0));
    localContentValues.put("has_oldest_message", Integer.valueOf(0));
    localContentValues.put("call_media_type", Integer.valueOf(0));
    localContentValues.put("notification_level", Integer.valueOf(30));
    localContentValues.put("disposition", Integer.valueOf(0));
    localContentValues.put("otr_status", Integer.valueOf(2));
    localContentValues.put("otr_toggle", Boolean.valueOf(false));
    localContentValues.put("is_temporary", Boolean.valueOf(true));
    localContentValues.putNull("name");
    localContentValues.put("inviter_gaia_id", a);
    localContentValues.put("inviter_chat_id", b);
    localContentValues.put("sort_timestamp", Long.valueOf(paramLong));
    e.a("conversations", localContentValues);
  }
  
  public void a(String paramString1, long paramLong, boolean paramBoolean, String paramString2)
  {
    l1 = 0L;
    l2 = 0L;
    l3 = 0L;
    for (;;)
    {
      Object localObject;
      int i1;
      int i2;
      long l4;
      long l5;
      try
      {
        localObject = e.a("conversations", new String[] { "self_watermark", "chat_watermark", "hangout_watermark", "has_chat_notifications", "has_video_notifications", "latest_message_timestamp" }, "conversation_id=?", new String[] { paramString1 }, null);
      }
      finally
      {
        int i3;
        boolean bool;
        StringBuilder localStringBuilder;
        paramString2 = null;
        if (paramString2 != null) {
          paramString2.close();
        }
      }
      try
      {
        if (!((Cursor)localObject).moveToFirst()) {
          break label856;
        }
        if (!((Cursor)localObject).isNull(0)) {
          l1 = ((Cursor)localObject).getLong(0);
        }
        if (!((Cursor)localObject).isNull(1)) {
          l2 = ((Cursor)localObject).getLong(1);
        }
        if (!((Cursor)localObject).isNull(2)) {
          l3 = ((Cursor)localObject).getLong(2);
        }
        if (((Cursor)localObject).isNull(3)) {
          break label850;
        }
        i1 = ((Cursor)localObject).getInt(3);
      }
      finally
      {
        paramString2 = (String)localObject;
        continue;
        continue;
        l2 = l3;
        continue;
        l4 = l3;
        l3 = l2;
        l5 = 0L;
        l2 = l1;
        l1 = l4;
        l4 = l5;
        continue;
        i2 = 0;
        continue;
        i1 = 0;
        continue;
        i2 = 0;
        l1 = 0L;
        l2 = 0L;
        l3 = 0L;
        l4 = 0L;
        i1 = 0;
      }
    }
    if (!((Cursor)localObject).isNull(4))
    {
      i2 = ((Cursor)localObject).getInt(4);
      if (!((Cursor)localObject).isNull(5))
      {
        i3 = ((Cursor)localObject).getInt(5);
        l4 = i3;
        l5 = l3;
        l3 = l2;
        l2 = l1;
        l1 = l5;
        if (localObject != null) {
          ((Cursor)localObject).close();
        }
        if (c) {
          new StringBuilder(String.valueOf(paramString1).length() + 337).append("setSelfWatermarkTimestamp, conversationId: ").append(paramString1).append(", watermarkTimestamp: ").append(paramLong).append(", currentSelfWatermark: ").append(l2).append(", currentChatWatermark: ").append(l3).append(", currentHangoutWatermark: ").append(l1).append(", hasChatNotifications: ").append(i1).append(", hasVideoNotifications: ").append(i2).append(", latestMessageTimestamp: ").append(l4);
        }
        l5 = l2;
        if (l2 == 4611686018427387903L) {
          l5 = 0L;
        }
        if (l3 == 4611686018427387903L)
        {
          l2 = 0L;
          if (l1 == 4611686018427387903L)
          {
            l1 = 0L;
            i3 = f.g();
            if ((paramLong > l5) || (paramLong > l2) || (paramLong > l1))
            {
              localObject = new ContentValues();
              bool = dvp.w.b(i3);
              if (paramLong > l5)
              {
                ((ContentValues)localObject).put("self_watermark", Long.valueOf(paramLong));
                if (bool) {
                  a(paramString1, paramString2, l5, paramLong, "selfwatermark");
                }
              }
              i2 = 0;
              i1 = i2;
              if (paramLong > l2)
              {
                ((ContentValues)localObject).put("chat_watermark", Long.valueOf(paramLong));
                if (bool) {
                  a(paramString1, paramString2, l2, paramLong, "seenchatwatermark");
                }
                i1 = i2;
                if (l4 > paramLong)
                {
                  i2 = 1;
                  i1 = i2;
                  if (bool)
                  {
                    localStringBuilder = new StringBuilder();
                    localStringBuilder.append(paramString2).append(" conversationid: ").append(paramString1);
                    localStringBuilder.append("hasChatNotifications=1 latestMessageTs: ").append(Long.toString(l4));
                    localStringBuilder.append(" watermarkTs: ").append(Long.toString(paramLong));
                    aal.a(i3, 2697, localStringBuilder.toString());
                    i1 = i2;
                  }
                }
              }
              ((ContentValues)localObject).put("has_chat_notifications", Integer.valueOf(i1));
              i2 = 0;
              i1 = i2;
              if (paramLong > l1)
              {
                ((ContentValues)localObject).put("hangout_watermark", Long.valueOf(paramLong));
                i1 = i2;
                if (l4 > paramLong) {
                  i1 = 1;
                }
              }
              ((ContentValues)localObject).put("has_video_notifications", Integer.valueOf(i1));
              e.a("conversations", (ContentValues)localObject, "conversation_id=?", new String[] { paramString1 });
              if (!paramBoolean)
              {
                i1 = e.a("messages", "delete_after_read_timetamp<?", new String[] { String.valueOf(paramLong) });
                ezi.a("Babel", 104 + "Deleted " + i1 + " messages whose deleteAfterRead timestamp is too old. Watermark: " + paramLong, new Object[0]);
              }
            }
            return;
          }
        }
      }
    }
  }
  
  public void a(String paramString, ContentValues paramContentValues)
  {
    if (e.a("presence", paramContentValues, "gaia_id=?", new String[] { paramString }) <= 0)
    {
      paramContentValues.put("gaia_id", paramString);
      if ((int)e.a("presence", paramContentValues) < 0) {
        ezi.e("Babel_ConvHelper", "update failed", new Object[0]);
      }
    }
  }
  
  public void a(String paramString, axn paramaxn)
  {
    if (c)
    {
      localObject = String.valueOf(paramaxn.b());
      new StringBuilder(String.valueOf(paramString).length() + 53 + String.valueOf(localObject).length()).append("insertCircleParticipant ConversationId: ").append(paramString).append(", circle id: ").append((String)localObject);
    }
    Object localObject = new ContentValues();
    ((ContentValues)localObject).put("conversation_id", paramString);
    ((ContentValues)localObject).put("participant_type", Integer.valueOf(czd.c.ordinal()));
    ((ContentValues)localObject).put("active", Integer.valueOf(1));
    ((ContentValues)localObject).put("participant_row_id", Integer.valueOf(a(null, null, null, paramaxn.b(), paramaxn.d(), true)));
    e.a("conversation_participants", (ContentValues)localObject);
  }
  
  public void a(String paramString, cyx paramcyx)
  {
    a(paramcyx, false);
    a(paramString, b, czd.a, true);
  }
  
  public void a(String paramString, czb paramczb, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    int i1;
    if (paramBoolean)
    {
      i1 = 1;
      localContentValues.put("active", Integer.valueOf(i1));
      if ((paramczb == null) || (TextUtils.isEmpty(a))) {
        break label169;
      }
      localbha = e;
      str1 = String.valueOf("participant_row_id=");
      str2 = String.valueOf("conversation_id");
      localbha.a("conversation_participants", localContentValues, String.valueOf(str1).length() + 7 + String.valueOf("(SELECT _id FROM conversation_participants_view WHERE gaia_id=? AND conversation_id=?)").length() + String.valueOf(str2).length() + str1 + "(SELECT _id FROM conversation_participants_view WHERE gaia_id=? AND conversation_id=?)" + " AND " + str2 + "=?", new String[] { a, paramString, paramString });
    }
    label169:
    while ((paramczb == null) || (TextUtils.isEmpty(b)))
    {
      return;
      i1 = 0;
      break;
    }
    bha localbha = e;
    String str1 = String.valueOf("participant_row_id=");
    String str2 = String.valueOf("conversation_id");
    localbha.a("conversation_participants", localContentValues, String.valueOf(str1).length() + 7 + String.valueOf("(SELECT _id FROM conversation_participants_view WHERE chat_id=? AND conversation_id=?)").length() + String.valueOf(str2).length() + str1 + "(SELECT _id FROM conversation_participants_view WHERE chat_id=? AND conversation_id=?)" + " AND " + str2 + "=?", new String[] { b, paramString, paramString });
  }
  
  public void a(String paramString, dmr paramdmr, List<dmr> paramList)
  {
    if (c)
    {
      String str1 = String.valueOf("updateDeliveryMediums, conversationId ");
      String str2 = String.valueOf(paramdmr);
      paramList = String.valueOf(dmr.a(paramList));
      new StringBuilder(String.valueOf(str1).length() + 47 + String.valueOf(paramString).length() + String.valueOf(str2).length() + String.valueOf(paramList).length()).append(str1).append(paramString).append(", default delivery medium=").append(str2).append(", deliveryMediumList=").append(paramList);
    }
    if (paramdmr == null) {
      return;
    }
    paramList = new ContentValues();
    e.a();
    try
    {
      paramList.put("transport_type", Integer.valueOf(a));
      paramList.put("default_transport_phone", b);
      e.a("conversations", paramList, "conversation_id=?", new String[] { paramString });
      e.b();
      return;
    }
    finally
    {
      e.c();
    }
  }
  
  public void a(String paramString, dyy paramdyy)
  {
    bgd localbgd = f(paramString);
    if (localbgd == null) {
      return;
    }
    if (h.isEmpty())
    {
      ezi.d("Babel", String.valueOf(paramString).length() + 67 + "found zero invitees when re-creating Purged Convesration: " + paramString + ", ignore.", new Object[0]);
      return;
    }
    String str = i();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("disposition", Integer.valueOf(3));
    a();
    try
    {
      a(paramString, str, localContentValues);
      localContentValues = new ContentValues();
      localContentValues.put("status", Integer.valueOf(emc.b.ordinal()));
      e.a("messages", localContentValues, "conversation_id=? AND status=?", new String[] { str, Integer.toString(emc.c.ordinal()) });
      b();
      c();
      bft.d(this);
      RealTimeChatService.g(f, paramString, str);
      paramdyy.a(new dos(str, b, d, d(h)));
      return;
    }
    finally
    {
      c();
    }
  }
  
  public void a(String paramString, emc paramemc1, emc paramemc2)
  {
    Object localObject1;
    if (c)
    {
      localObject1 = String.valueOf(paramemc1);
      localObject2 = String.valueOf(paramemc2);
      new StringBuilder(String.valueOf(paramString).length() + 56 + String.valueOf(localObject1).length() + String.valueOf(localObject2).length()).append("setMessageStatus: conversationId=").append(paramString).append(" fromStatus=").append((String)localObject1).append("; toStatus=").append((String)localObject2);
    }
    Object localObject2 = new ContentValues();
    ((ContentValues)localObject2).put("status", Integer.valueOf(paramemc2.ordinal()));
    if (paramemc2 == emc.c) {
      ((ContentValues)localObject2).put("notified_for_failure", Integer.valueOf(0));
    }
    if (paramemc1 == emc.a)
    {
      paramemc2 = "conversation_id=?";
      paramemc1 = new String[1];
      paramemc1[0] = paramString;
    }
    for (;;)
    {
      e.a("messages", (ContentValues)localObject2, paramemc2, paramemc1);
      bft.d(this, paramString);
      return;
      paramemc2 = "conversation_id=? AND status=?";
      localObject1 = new String[2];
      localObject1[0] = paramString;
      localObject1[1] = String.valueOf(paramemc1);
      paramemc1 = (emc)localObject1;
    }
  }
  
  public void a(String paramString, Boolean paramBoolean)
  {
    if (c)
    {
      localObject = String.valueOf("updateConversationHasPersistentEvents, conversationId ");
      String str = String.valueOf(paramBoolean);
      new StringBuilder(String.valueOf(localObject).length() + 22 + String.valueOf(paramString).length() + String.valueOf(str).length()).append((String)localObject).append(paramString).append(", hasPersistentEvents=").append(str);
    }
    Object localObject = new ContentValues();
    int i1;
    if (paramBoolean == null) {
      i1 = -1;
    }
    for (;;)
    {
      ((ContentValues)localObject).put("has_persistent_events", Integer.valueOf(i1));
      e.a("conversations", (ContentValues)localObject, "conversation_id=?", new String[] { paramString });
      return;
      if (aal.a(paramBoolean, false)) {
        i1 = 1;
      } else {
        i1 = 0;
      }
    }
  }
  
  public void a(String paramString, Long paramLong)
  {
    if (c)
    {
      localObject = String.valueOf(paramLong);
      new StringBuilder(String.valueOf(paramString).length() + 58 + String.valueOf(localObject).length()).append("deleteMessagesFromConversationBefore, conversationId=").append(paramString).append(", ts=").append((String)localObject);
    }
    Object localObject = new StringBuilder("conversation_id");
    ((StringBuilder)localObject).append("= ? AND ");
    ((StringBuilder)localObject).append("timestamp");
    ((StringBuilder)localObject).append("< ?");
    ((StringBuilder)localObject).append(" AND ");
    ((StringBuilder)localObject).append("persisted");
    ((StringBuilder)localObject).append(" = 1");
    e.a("messages", ((StringBuilder)localObject).toString(), new String[] { paramString, String.valueOf(paramLong) });
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (c) {
      new StringBuilder(String.valueOf(paramString1).length() + 33 + String.valueOf(paramString2).length()).append("setDraft conversationId: ").append(paramString1).append(" draft: ").append(paramString2);
    }
    ContentValues localContentValues = new ContentValues();
    if (paramString2 != null) {}
    for (;;)
    {
      localContentValues.put("draft", paramString2);
      e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString1 });
      bft.a(f.g());
      return;
      paramString2 = "";
    }
  }
  
  public void a(String paramString1, String paramString2, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("message_id", paramString2);
    localContentValues.put("conversation_id", paramString1);
    localContentValues.put("observed_status", Integer.valueOf(paramInt));
    if (e.a("messages", localContentValues, "message_id=? AND conversation_id=?", new String[] { paramString2, paramString1 }) == 0) {
      e.a("messages", localContentValues);
    }
  }
  
  public void a(String paramString1, String paramString2, long paramLong)
  {
    if (c) {
      new StringBuilder(String.valueOf(paramString1).length() + 50 + String.valueOf(paramString2).length()).append("updateStreamUrlForPhotoId, photoId = ").append(paramString1).append(", streamUrl =").append(paramString2);
    }
    e.a();
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("stream_url", paramString2);
      localContentValues.put("stream_expiration", Long.valueOf(paramLong));
      e.a("messages", localContentValues, "image_id=?", new String[] { paramString1 });
      e.b();
      return;
    }
    finally
    {
      e.c();
    }
  }
  
  public void a(String paramString1, String paramString2, Uri paramUri, long paramLong)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(emc.e.ordinal()));
    localContentValues.put("type", Integer.valueOf(emd.b.ordinal()));
    if (paramUri != null) {
      localContentValues.put("external_ids", aal.a(new String[] { paramUri.toString() }));
    }
    if (paramLong > 0L) {
      localContentValues.put("sms_message_size", Long.valueOf(paramLong));
    }
    paramString2 = String.valueOf(paramString2);
    e.a("messages", localContentValues, "message_id=? AND conversation_id=?", new String[] { paramString2, paramString1 });
  }
  
  public void a(String paramString1, String paramString2, emc paramemc, int paramInt)
  {
    Object localObject = String.valueOf(paramemc);
    localObject = String.valueOf(paramString1).length() + 56 + String.valueOf(paramString2).length() + String.valueOf(localObject).length() + "setMessageStatusSent: conversationId=" + paramString1 + " messageId=" + paramString2 + " status=" + (String)localObject;
    if (paramemc == emc.d) {
      ezi.c("Babel_ConvHelper", (String)localObject, new Object[0]);
    }
    localObject = new ContentValues();
    ((ContentValues)localObject).put("status", Integer.valueOf(paramemc.ordinal()));
    if (paramemc == emc.d)
    {
      ((ContentValues)localObject).put("sending_error", Integer.valueOf(paramInt));
      ((ContentValues)localObject).put("notified_for_failure", Integer.valueOf(0));
      ((cyh)ilh.a(a, cyh.class)).c(f.g());
    }
    for (;;)
    {
      paramInt = e.a("messages", (ContentValues)localObject, "conversation_id=? AND message_id=?", new String[] { paramString1, paramString2 });
      if (paramInt != 1)
      {
        localObject = String.valueOf(paramemc);
        ezi.e("Babel", String.valueOf(localObject).length() + 72 + String.valueOf(paramString1).length() + String.valueOf(paramString2).length() + "!!!!! failed to set message status to " + (String)localObject + " for " + paramString1 + " " + paramString2 + "; updateCount == " + paramInt, new Object[0]);
      }
      bft.d(this, paramString1);
      if ((paramemc == emc.d) || (paramemc == emc.e))
      {
        bft.d(this);
        bft.d(this, paramString1);
      }
      return;
      ((ContentValues)localObject).put("sending_error", Integer.valueOf(0));
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("gaia_id", paramString1);
    localContentValues.put("chat_id", null);
    localContentValues.put("name", paramString2);
    localContentValues.put("profile_photo_url", paramString3);
    e.a("dismissed_contacts", localContentValues);
    a.getContentResolver().notifyChange(EsProvider.m, null);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2)
  {
    if (c) {
      new StringBuilder(String.valueOf(paramString2).length() + 94 + String.valueOf(paramString1).length() + String.valueOf(paramString3).length()).append("updateMessageId, conversationId ").append(paramString2).append(", messageClientGeneratedId=").append(paramString1).append(", eventId=").append(paramString3).append(", ts=").append(paramLong1);
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("message_id", paramString3);
    localContentValues.put("timestamp", Long.valueOf(paramLong1));
    if (paramLong2 > 0L) {
      localContentValues.put("expiration_timestamp", Long.valueOf(paramLong2));
    }
    for (;;)
    {
      localContentValues.put("status", Integer.valueOf(emc.e.ordinal()));
      if (paramString2 != null) {
        break;
      }
      ezi.d("Babel_ConvHelper", String.valueOf(paramString3).length() + 58 + "attempt to update a message id [" + paramString3 + "] for null conversation id", new Object[0]);
      return;
      localContentValues.putNull("expiration_timestamp");
    }
    e.a("messages", localContentValues, "message_id=? AND conversation_id=?", new String[] { paramString1, paramString2 });
  }
  
  public void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    int i1 = 1;
    Object localObject;
    if (!TextUtils.isEmpty(paramString1))
    {
      paramString2 = "gaia_id=?";
      localObject = new String[1];
      localObject[0] = paramString1;
      paramString1 = (String)localObject;
      localObject = new ContentValues();
      if (!paramBoolean) {
        break label168;
      }
    }
    for (;;)
    {
      ((ContentValues)localObject).put("blocked", Integer.valueOf(i1));
      e.a("participants", (ContentValues)localObject, paramString2, paramString1);
      a.getContentResolver().notifyChange(EsProvider.l, null);
      paramString1 = g();
      paramString2 = EsProvider.q.buildUpon();
      paramString2.appendQueryParameter("account_id", Integer.toString(paramString1.g()));
      paramString1 = paramString2.build();
      a.getContentResolver().notifyChange(paramString1, null);
      return;
      if (!TextUtils.isEmpty(paramString2))
      {
        localObject = "chat_id=?";
        paramString1 = new String[1];
        paramString1[0] = paramString2;
        paramString2 = (String)localObject;
        break;
      }
      ezi.e("Babel_ConvHelper", "setUserBlocked without a valid gaiaId or chatId", new Object[0]);
      return;
      label168:
      i1 = 0;
    }
  }
  
  public void a(String paramString, byte[] paramArrayOfByte, long paramLong)
  {
    if (c)
    {
      localObject = String.valueOf(Arrays.toString(paramArrayOfByte));
      new StringBuilder(String.valueOf(paramString).length() + 80 + String.valueOf(localObject).length()).append("setContinuationToken: conversationId=").append(paramString).append(" token ").append((String)localObject).append(" eventTimestamp ").append(paramLong);
    }
    Object localObject = new ContentValues();
    if (paramArrayOfByte == null)
    {
      ((ContentValues)localObject).putNull("continuation_token");
      ((ContentValues)localObject).put("continuation_event_timestamp", Long.valueOf(paramLong));
      if ((paramArrayOfByte != null) || (paramLong != 0L)) {
        break label173;
      }
    }
    label173:
    for (int i1 = 1;; i1 = 0)
    {
      ((ContentValues)localObject).put("has_oldest_message", Integer.valueOf(i1));
      e.a("conversations", (ContentValues)localObject, "conversation_id=?", new String[] { paramString });
      bft.e(this);
      return;
      ((ContentValues)localObject).put("continuation_token", paramArrayOfByte);
      break;
    }
  }
  
  /* Error */
  public void a(HashSet<czb> paramHashSet)
  {
    // Byte code:
    //   0: new 513	java/util/HashSet
    //   3: dup
    //   4: invokespecial 514	java/util/HashSet:<init>	()V
    //   7: astore 4
    //   9: aload_1
    //   10: invokevirtual 2612	java/util/HashSet:iterator	()Ljava/util/Iterator;
    //   13: astore 5
    //   15: aload 5
    //   17: invokeinterface 830 1 0
    //   22: ifeq +152 -> 174
    //   25: aload 5
    //   27: invokeinterface 834 1 0
    //   32: checkcast 720	czb
    //   35: astore 6
    //   37: aload 6
    //   39: getfield 938	czb:a	Ljava/lang/String;
    //   42: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   45: ifne +83 -> 128
    //   48: ldc_w 618
    //   51: astore_1
    //   52: iconst_1
    //   53: anewarray 66	java/lang/String
    //   56: astore_3
    //   57: aload_3
    //   58: iconst_0
    //   59: aload 6
    //   61: getfield 938	czb:a	Ljava/lang/String;
    //   64: aastore
    //   65: aload_0
    //   66: getfield 306	bfz:e	Lbha;
    //   69: ldc_w 522
    //   72: getstatic 127	bfz:r	[Ljava/lang/String;
    //   75: aload_1
    //   76: aload_3
    //   77: aconst_null
    //   78: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   81: astore_1
    //   82: aload_1
    //   83: invokeinterface 537 1 0
    //   88: ifeq +27 -> 115
    //   91: aload 4
    //   93: aload_1
    //   94: iconst_0
    //   95: invokeinterface 401 2 0
    //   100: invokevirtual 520	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   103: pop
    //   104: aload_1
    //   105: invokeinterface 394 1 0
    //   110: istore_2
    //   111: iload_2
    //   112: ifne -21 -> 91
    //   115: aload_1
    //   116: ifnull -101 -> 15
    //   119: aload_1
    //   120: invokeinterface 421 1 0
    //   125: goto -110 -> 15
    //   128: aload 6
    //   130: getfield 939	czb:b	Ljava/lang/String;
    //   133: invokestatic 444	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   136: ifne -121 -> 15
    //   139: ldc_w 636
    //   142: astore_1
    //   143: iconst_1
    //   144: anewarray 66	java/lang/String
    //   147: astore_3
    //   148: aload_3
    //   149: iconst_0
    //   150: aload 6
    //   152: getfield 939	czb:b	Ljava/lang/String;
    //   155: aastore
    //   156: goto -91 -> 65
    //   159: astore_3
    //   160: aconst_null
    //   161: astore_1
    //   162: aload_1
    //   163: ifnull +9 -> 172
    //   166: aload_1
    //   167: invokeinterface 421 1 0
    //   172: aload_3
    //   173: athrow
    //   174: aload 4
    //   176: invokevirtual 2612	java/util/HashSet:iterator	()Ljava/util/Iterator;
    //   179: astore_1
    //   180: aload_1
    //   181: invokeinterface 830 1 0
    //   186: ifeq +26 -> 212
    //   189: aload_0
    //   190: aload_1
    //   191: invokeinterface 834 1 0
    //   196: checkcast 66	java/lang/String
    //   199: invokestatic 545	bft:b	(Lbfz;Ljava/lang/String;)V
    //   202: aload_0
    //   203: getfield 302	bfz:f	Lbfd;
    //   206: invokestatic 984	bft:a	(Lbfd;)V
    //   209: goto -29 -> 180
    //   212: return
    //   213: astore_3
    //   214: goto -52 -> 162
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	217	0	this	bfz
    //   0	217	1	paramHashSet	HashSet<czb>
    //   110	2	2	bool	boolean
    //   56	93	3	arrayOfString	String[]
    //   159	14	3	localObject1	Object
    //   213	1	3	localObject2	Object
    //   7	168	4	localHashSet	HashSet
    //   13	13	5	localIterator	Iterator
    //   35	116	6	localczb	czb
    // Exception table:
    //   from	to	target	type
    //   65	82	159	finally
    //   82	91	213	finally
    //   91	111	213	finally
  }
  
  public void a(List<egi> paramList)
  {
    e.a();
    try
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        egi localegi = (egi)paramList.next();
        if (c)
        {
          String str1 = a;
          String str2 = b;
          int i1 = c;
          new StringBuilder(String.valueOf(str1).length() + 73 + String.valueOf(str2).length()).append("markEventObserved, conversationId=").append(str1).append(", messageId=").append(str2).append(" observedStatus=").append(i1);
        }
        a(a, b, c);
      }
    }
    finally
    {
      e.c();
    }
    e.c();
  }
  
  public void a(List<czb> paramList, List<dmo> paramList1, String paramString)
  {
    Object localObject1 = new hq();
    paramList1 = paramList1.iterator();
    while (paramList1.hasNext())
    {
      localObject2 = (dmo)paramList1.next();
      ((Map)localObject1).put(a, localObject2);
    }
    Object localObject4 = new ArrayList();
    Object localObject3 = new ArrayList();
    Object localObject2 = new hq();
    try
    {
      paramList1 = e.a("conversation_participants_view", new String[] { "gaia_id", "chat_id", "active", "invitation_status" }, "conversation_id=?", new String[] { paramString }, null);
      try
      {
        czb localczb;
        if (paramList1.moveToFirst())
        {
          localczb = new czb(paramList1.getString(0), paramList1.getString(1));
          if (paramList1.getInt(2) != 1) {
            break label323;
          }
          i1 = 1;
          label176:
          if ((i1 == 0) || (a(paramList, localczb))) {
            break label329;
          }
          ((List)localObject4).add(localczb);
        }
        for (;;)
        {
          if ((((Map)localObject1).containsKey(localczb)) && (paramList1.getInt(3) != getd)) {
            ((Map)localObject2).put(localczb, Integer.valueOf(getd));
          }
          boolean bool = paramList1.moveToNext();
          if (bool) {
            break;
          }
          if (paramList1 != null) {
            paramList1.close();
          }
          paramList = ((List)localObject4).iterator();
          while (paramList.hasNext()) {
            a(paramString, (czb)paramList.next(), false);
          }
          label323:
          i1 = 0;
          break label176;
          label329:
          if ((i1 == 0) && (a(paramList, localczb))) {
            ((List)localObject3).add(localczb);
          }
        }
        if (paramList1 == null) {
          break label367;
        }
      }
      finally {}
    }
    finally
    {
      for (;;)
      {
        int i1;
        label367:
        paramList1 = null;
      }
    }
    paramList1.close();
    throw paramList;
    paramList = ((List)localObject3).iterator();
    while (paramList.hasNext()) {
      a(paramString, (czb)paramList.next(), true);
    }
    paramList = ((Map)localObject2).entrySet().iterator();
    while (paramList.hasNext())
    {
      localObject1 = (Map.Entry)paramList.next();
      paramList1 = (czb)((Map.Entry)localObject1).getKey();
      i1 = aal.a((Integer)((Map.Entry)localObject1).getValue(), 0);
      localObject1 = new ContentValues();
      ((ContentValues)localObject1).put("invitation_status", Integer.valueOf(i1));
      if (!TextUtils.isEmpty(a))
      {
        localObject2 = e;
        localObject3 = String.valueOf("participant_row_id=");
        localObject4 = String.valueOf("conversation_id");
        ((bha)localObject2).a("conversation_participants", (ContentValues)localObject1, String.valueOf(localObject3).length() + 7 + String.valueOf("(SELECT _id FROM conversation_participants_view WHERE gaia_id=? AND conversation_id=?)").length() + String.valueOf(localObject4).length() + (String)localObject3 + "(SELECT _id FROM conversation_participants_view WHERE gaia_id=? AND conversation_id=?)" + " AND " + (String)localObject4 + "=?", new String[] { a, paramString, paramString });
      }
      else if (!TextUtils.isEmpty(b))
      {
        localObject2 = e;
        localObject3 = String.valueOf("participant_row_id=");
        localObject4 = String.valueOf("conversation_id");
        ((bha)localObject2).a("conversation_participants", (ContentValues)localObject1, String.valueOf(localObject3).length() + 7 + String.valueOf("(SELECT _id FROM conversation_participants_view WHERE chat_id=? AND conversation_id=?)").length() + String.valueOf(localObject4).length() + (String)localObject3 + "(SELECT _id FROM conversation_participants_view WHERE chat_id=? AND conversation_id=?)" + " AND " + (String)localObject4 + "=?", new String[] { b, paramString, paramString });
      }
    }
  }
  
  public void a(Map<String, beq> paramMap)
  {
    Cursor localCursor = e.a("participants", bgs.a, null, null, null);
    if (localCursor != null) {
      try
      {
        while (localCursor.moveToNext())
        {
          beq localbeq = (beq)paramMap.get(localCursor.getString(0));
          if (localbeq != null) {
            b = localCursor.getString(1);
          }
        }
      }
      finally
      {
        localCursor.close();
      }
    }
  }
  
  public void a(String[] paramArrayOfString)
  {
    int i1 = 0;
    Object localObject = e();
    ArrayList localArrayList = new ArrayList();
    ((bha)localObject).a();
    try
    {
      ContentValues localContentValues = new ContentValues();
      int i2 = paramArrayOfString.length;
      while (i1 < i2)
      {
        String str1 = paramArrayOfString[i1];
        localContentValues.clear();
        String str2 = bhw.d.a(str1);
        localContentValues.put("merge_key", str2);
        ((bha)localObject).a("merge_keys", localContentValues, "conversation_id=?", new String[] { str1 });
        localArrayList.add(new Pair(str1, str2));
        i1 += 1;
      }
      ((bha)localObject).b();
      ((bha)localObject).c();
      paramArrayOfString = localArrayList.iterator();
      while (paramArrayOfString.hasNext())
      {
        localObject = (Pair)paramArrayOfString.next();
        RealTimeChatService.a((String)first, (String)second);
      }
      bft.a(f.g());
    }
    finally
    {
      ((bha)localObject).c();
    }
  }
  
  public boolean a(cyx paramcyx, boolean paramBoolean)
  {
    if (b == null) {
      ezi.e("Babel_ConvHelper", "null participantId in insertOrUpdateParticipant", new Object[0]);
    }
    label391:
    label519:
    label524:
    label580:
    label584:
    for (;;)
    {
      return false;
      Object localObject = eie.a();
      String str1;
      String str2;
      String str3;
      try
      {
        a((eie)localObject, paramcyx);
        ((eie)localObject).c();
        str1 = b.a;
        str2 = b.b;
        str3 = paramcyx.f();
        if ((TextUtils.isEmpty(str1)) && (TextUtils.isEmpty(str2)) && (TextUtils.isEmpty(str3)) && (a != czd.d))
        {
          ezi.e("Babel_ConvHelper", "no gaiaId/chatId/phoneNumber in insertOrUpdateParticipant", new Object[0]);
          return false;
        }
      }
      finally
      {
        ((eie)localObject).c();
      }
      ContentValues localContentValues = new ContentValues();
      if (!TextUtils.isEmpty(str1)) {
        localContentValues.put("gaia_id", str1);
      }
      if (!TextUtils.isEmpty(str2)) {
        localContentValues.put("chat_id", str2);
      }
      if (!TextUtils.isEmpty(str3))
      {
        localContentValues.put("phone_id", str3);
        hbs.a(czd.d, a);
      }
      localContentValues.put("participant_type", Integer.valueOf(a.ordinal()));
      int i1;
      int i2;
      if (a == czd.a)
      {
        localObject = String.valueOf("Encountered participant with participantType UNKNOWN, ParticipantEntity: ");
        String str4 = String.valueOf(ezi.b(paramcyx.toString()));
        if (str4.length() != 0)
        {
          localObject = ((String)localObject).concat(str4);
          ezi.e("Babel", (String)localObject, new Object[0]);
          hbs.a("ParticipantType UNKNOWN found");
        }
      }
      else
      {
        if (!TextUtils.isEmpty(f)) {
          localContentValues.put("first_name", f);
        }
        if (!TextUtils.isEmpty(e)) {
          localContentValues.put("full_name", e);
        }
        if (!TextUtils.isEmpty(g)) {
          localContentValues.put("fallback_name", g);
        }
        if (!TextUtils.isEmpty(h)) {
          localContentValues.put("profile_photo_url", h);
        }
        localContentValues.put("in_users_domain", Boolean.valueOf(y));
        if (i != null)
        {
          if (!aal.a(i, false)) {
            break label519;
          }
          i1 = 1;
          localContentValues.put("blocked", Integer.valueOf(i1));
        }
        if (paramBoolean) {
          localContentValues.putNull("batch_gebi_tag");
        }
        i2 = a(str1, str2, str3, null, null, false);
        if (i2 >= 0) {
          break label524;
        }
        i2 = (int)e.a("participants", localContentValues);
        i1 = i2;
        if (i2 >= 0) {
          break label580;
        }
        ezi.e("Babel_ConvHelper", "insert failed", new Object[0]);
      }
      for (;;)
      {
        if (i2 < 0) {
          break label584;
        }
        return ((bil)ilh.a(a, bil.class)).a(f).a(Integer.toString(i2), paramcyx, paramBoolean);
        localObject = new String((String)localObject);
        break;
        i1 = 0;
        break label391;
        localContentValues.remove("phone_id");
        i1 = i2;
        if (e.a("participants", localContentValues, "_id=?", new String[] { Integer.toString(i2) }) <= 0)
        {
          ezi.e("Babel_ConvHelper", "update failed", new Object[0]);
          i1 = i2;
        }
        i2 = i1;
      }
    }
  }
  
  public boolean a(czb paramczb, String paramString1, String paramString2)
  {
    boolean bool = b(paramczb, paramString1);
    a(paramString2, paramczb, czd.a, false);
    return bool;
  }
  
  public boolean a(String paramString1, long paramLong1, long paramLong2, int paramInt, czb paramczb, long paramLong3, emc paramemc, String paramString2, String paramString3)
  {
    return a(paramString1, paramLong1, paramLong2, paramInt, paramczb, null, null, paramLong3, paramemc, paramString2, paramString3, -1, 0);
  }
  
  public boolean a(String paramString1, long paramLong1, long paramLong2, int paramInt1, String paramString2, czb paramczb, String paramString3, String paramString4, long paramLong3, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 6) {
      if (aal.b(paramString2)) {
        paramInt1 = 3;
      }
    }
    for (;;)
    {
      return a(paramString1, paramLong1, paramLong2, paramInt1, paramczb, paramString3, paramString4, paramLong3, emc.a, null, null, paramInt2, paramInt3);
      if ("hangouts/location".equals(paramString2)) {
        paramInt1 = 13;
      } else if ((aen.a(paramString2)) || ("application/vnd.wap.multipart.mixed".equals(paramString2))) {
        paramInt1 = 9;
      } else if ("hangouts/gv_voicemail".equals(paramString2)) {
        paramInt1 = 12;
      } else {
        paramInt1 = 2;
      }
    }
  }
  
  public void aa(String paramString)
  {
    String str2;
    if (ezi.a("Babel_ConvHelper", 3))
    {
      str1 = String.valueOf("acceptConversationLocally conversationId: ");
      str2 = String.valueOf(paramString);
      if (str2.length() == 0) {
        break label77;
      }
    }
    for (String str1 = str1.concat(str2);; str1 = new String(str1))
    {
      ezi.a("Babel_ConvHelper", str1, new Object[0]);
      a();
      try
      {
        r(paramString);
        f(paramString, 1);
        a(paramString, 30);
        b();
        return;
      }
      finally
      {
        label77:
        c();
      }
    }
  }
  
  public void ab(String paramString)
  {
    ezi.a("Babel_ConvHelper", "removeConversationTransaction", new Object[0]);
    a();
    try
    {
      A(paramString);
      b();
      return;
    }
    finally
    {
      c();
    }
  }
  
  public Set<String> ac(String paramString)
  {
    Cursor localCursor = e.a("merge_keys", bgf.a, "merge_key IN (SELECT merge_key FROM merge_keys WHERE conversation_id=?)", new String[] { paramString }, null);
    HashSet localHashSet;
    try
    {
      localHashSet = new HashSet();
      if (localCursor != null) {
        while (localCursor.moveToNext()) {
          localHashSet.add(localCursor.getString(0));
        }
      }
      if (localHashSet.contains(paramString)) {
        break label138;
      }
    }
    finally
    {
      if (localCursor != null) {
        localCursor.close();
      }
    }
    if (localHashSet.size() != 0) {
      if (!TextUtils.isEmpty(RealTimeChatService.a(paramString))) {
        break label138;
      }
    }
    for (;;)
    {
      hbs.a("Expected condition to be true", bool);
      if (localCursor != null) {
        localCursor.close();
      }
      return localHashSet;
      boolean bool = false;
      continue;
      label138:
      bool = true;
    }
  }
  
  public List<bgd> ad(String paramString)
  {
    paramString = e.a("merge_keys", bgf.a, "merge_key IN (SELECT merge_key FROM merge_keys WHERE conversation_id=?)", new String[] { paramString }, null);
    try
    {
      ArrayList localArrayList = new ArrayList();
      if (paramString != null) {
        while (paramString.moveToNext()) {
          localArrayList.add(e(paramString.getString(0)));
        }
      }
      if (paramString == null) {
        return localList;
      }
    }
    finally
    {
      if (paramString != null) {
        paramString.close();
      }
    }
    paramString.close();
    return localList;
  }
  
  public Set<String> ae(String paramString)
  {
    Set localSet = ac(paramString);
    localSet.remove(paramString);
    return localSet;
  }
  
  public drp af(String paramString)
  {
    localObject1 = null;
    try
    {
      paramString = e.a("sticker_photos", l, "photo_id=?", new String[] { paramString }, null);
      if ((paramString == null) || (localObject1 != null)) {
        ((Cursor)localObject1).close();
      }
    }
    finally
    {
      try
      {
        if (paramString.moveToFirst())
        {
          localObject1 = new drp();
          a = paramString.getString(0);
          b = paramString.getString(1);
          c = paramString.getString(2);
          d = paramString.getInt(3);
          if (paramString != null) {
            paramString.close();
          }
          return (drp)localObject1;
        }
        if (paramString != null) {
          paramString.close();
        }
        return null;
      }
      finally
      {
        localObject1 = paramString;
        paramString = (String)localObject2;
      }
      paramString = finally;
    }
    throw paramString;
  }
  
  public int b(czb paramczb)
  {
    if (c)
    {
      localObject = String.valueOf(paramczb);
      new StringBuilder(String.valueOf(localObject).length() + 41).append("queryParticipantIdBlocked, participantId=").append((String)localObject);
    }
    Object localObject = null;
    try
    {
      paramczb = b("blocked", paramczb);
      if (paramczb != null)
      {
        localObject = paramczb;
        if (paramczb.moveToFirst())
        {
          localObject = paramczb;
          int i1 = paramczb.getInt(0);
          if (paramczb != null) {
            paramczb.close();
          }
          return i1;
        }
      }
      if (paramczb != null) {
        paramczb.close();
      }
      return -1;
    }
    finally
    {
      if (localObject != null) {
        ((Cursor)localObject).close();
      }
    }
  }
  
  public long b(int paramInt)
  {
    long l2 = bff.a(a, g().g(), EsProvider.a(paramInt), -1L);
    long l1 = l2;
    if (l2 == -3L) {
      l1 = -2L;
    }
    return l1;
  }
  
  public long b(String paramString, int paramInt)
  {
    return b(O(paramString), paramInt);
  }
  
  public bgo b(long paramLong)
  {
    if (c) {
      new StringBuilder(49).append("getMessageInfo, messageRowId=").append(paramLong);
    }
    List localList = l("_id", String.valueOf(paramLong));
    if (localList.size() == 0) {
      return null;
    }
    return (bgo)localList.get(0);
  }
  
  public bzq b(String paramString, eie parameie)
  {
    Object localObject2 = null;
    Object localObject1 = parameie.c(paramString);
    if (localObject1 != null) {
      localObject1 = bzq.a((gpr)localObject1);
    }
    int i4;
    String str;
    label141:
    label190:
    do
    {
      int i3;
      do
      {
        return (bzq)localObject1;
        paramString = parameie.b(paramString);
        if (paramString != null)
        {
          Iterator localIterator = paramString.iterator();
          int i1 = 0;
          int i2 = 0;
          paramString = null;
          for (;;)
          {
            i4 = i1;
            i3 = i2;
            str = paramString;
            if (!localIterator.hasNext()) {
              break label190;
            }
            localObject1 = ((gpr)localIterator.next()).e();
            if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (!TextUtils.equals((CharSequence)localObject1, paramString)))
            {
              if (a(czb.a((String)localObject1), false, 1) != null) {}
              for (i3 = 1;; i3 = 0)
              {
                if (paramString != null) {
                  break label141;
                }
                i2 = i3;
                paramString = (String)localObject1;
                break;
              }
              if ((i2 == 0) && (i3 != 0))
              {
                i1 = 1;
                i2 = 1;
                paramString = (String)localObject1;
              }
              else
              {
                if (i2 != 0)
                {
                  localObject1 = localObject2;
                  if (i3 != 0) {
                    break;
                  }
                }
                i1 = 1;
              }
            }
          }
        }
        i4 = 0;
        i3 = 0;
        str = null;
        localObject1 = localObject2;
      } while (str == null);
      if (i3 != 0) {
        break;
      }
      localObject1 = localObject2;
    } while (i4 != 0);
    return parameie.a(str);
  }
  
  public String b(String paramString, List<dtw> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      dtw localdtw = (dtw)paramList.next();
      int i1 = a(paramString, a, b, d, c, e);
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append('|');
      }
      localStringBuilder.append(i1);
    }
    return localStringBuilder.toString();
  }
  
  public String b(List<cyx> paramList)
  {
    int i1 = 0;
    int i2 = paramList.size();
    Object localObject3 = new StringBuilder();
    String[] arrayOfString = new String[i2 + 1];
    i2 = paramList.size() - 1;
    Object localObject1;
    if (i2 >= -1) {
      if (i2 == -1)
      {
        localObject1 = f.b();
        label54:
        if (i1 > 0) {
          ((StringBuilder)localObject3).append(" OR ");
        }
        if ((localObject1 == null) || (TextUtils.isEmpty(a))) {
          break label253;
        }
        ((StringBuilder)localObject3).append("gaia_id=?");
        int i3 = i1 + 1;
        arrayOfString[i1] = a;
        i1 = i3;
      }
    }
    label212:
    label251:
    label253:
    for (;;)
    {
      i2 -= 1;
      break;
      localObject1 = getb;
      break label54;
      paramList = a(((StringBuilder)localObject3).toString(), arrayOfString, 1);
      if (paramList != null) {
        try
        {
          if (paramList.moveToFirst())
          {
            localObject1 = paramList.getString(0);
            if (c)
            {
              localObject3 = String.valueOf(localObject1);
              if (((String)localObject3).length() == 0) {
                break label212;
              }
              "queryGroupConversationByGaia found conversation ".concat((String)localObject3);
            }
            for (;;)
            {
              return (String)localObject1;
              new String("queryGroupConversationByGaia found conversation ");
            }
          }
          if (paramList == null) {
            break label251;
          }
        }
        finally
        {
          if (paramList != null) {
            paramList.close();
          }
        }
      }
      paramList.close();
      return null;
    }
  }
  
  public void b()
  {
    e.b();
  }
  
  public void b(long paramLong1, emc paramemc, long paramLong2)
  {
    if (c)
    {
      localObject = String.valueOf(paramemc);
      new StringBuilder(String.valueOf(localObject).length() + 93).append("setMmsNotificationStatus: messageRowId=").append(paramLong1).append(", status=").append((String)localObject).append(", ts=").append(paramLong2);
    }
    Object localObject = new ContentValues();
    ((ContentValues)localObject).put("status", Integer.valueOf(paramemc.ordinal()));
    if (paramLong2 > 0L) {
      ((ContentValues)localObject).put("sms_timestamp_sent", Long.valueOf(1000L * paramLong2));
    }
    bha localbha = e;
    paramemc = String.valueOf("_id=");
    String str = String.valueOf(String.valueOf(paramLong1));
    if (str.length() != 0) {}
    for (paramemc = paramemc.concat(str);; paramemc = new String(paramemc))
    {
      localbha.a("messages", (ContentValues)localObject, paramemc, null);
      return;
    }
  }
  
  public void b(String paramString, long paramLong)
  {
    if (c) {
      new StringBuilder(String.valueOf(paramString).length() + 83).append("setConversationSequenceNumber: conversationId=").append(paramString).append(", sequenceNumber=").append(paramLong);
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("sequence_number", Long.valueOf(paramLong));
    e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString });
  }
  
  public void b(String paramString, long paramLong1, long paramLong2)
  {
    Object localObject;
    if (c)
    {
      localObject = String.valueOf("updateMessageScrollTime: conversationId=");
      new StringBuilder(String.valueOf(localObject).length() + 78 + String.valueOf(paramString).length()).append((String)localObject).append(paramString).append(" scrollTime=").append(paramLong1).append(" scrollToMessageTimestamp=").append(paramLong2);
    }
    a();
    try
    {
      localObject = ak(paramString);
      if (localObject == null)
      {
        b();
        return;
      }
      bgu localbgu = a((bgu)localObject, paramLong1, paramLong2);
      if (localbgu != localObject)
      {
        ContentValues localContentValues = new ContentValues();
        if (a != a) {
          localContentValues.put("first_peak_scroll_time", Long.valueOf(a));
        }
        if (b != b) {
          localContentValues.put("first_peak_scroll_to_message_timestamp", Long.valueOf(b));
        }
        if (c != c) {
          localContentValues.put("second_peak_scroll_time", Long.valueOf(c));
        }
        if (d != d) {
          localContentValues.put("second_peak_scroll_to_message_timestamp", Long.valueOf(d));
        }
        if (localContentValues.size() > 0) {
          e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString });
        }
      }
      b();
      return;
    }
    finally
    {
      c();
    }
  }
  
  public void b(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (c) {
      new StringBuilder(String.valueOf(paramString1).length() + 66 + String.valueOf(paramString2).length()).append("updateConversationParticipantInfo, conversationId=").append(paramString1).append(", generatedName=").append(paramString2);
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("generated_name", paramString2);
    localContentValues.put("packed_avatar_urls", paramString3);
    localContentValues.put("self_avatar_url", paramString4);
    e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString1 });
  }
  
  public void b(String paramString, boolean paramBoolean)
  {
    if (c)
    {
      localObject = String.valueOf("updateConversationIsTemporary, conversationId ");
      new StringBuilder(String.valueOf(localObject).length() + 19 + String.valueOf(paramString).length()).append((String)localObject).append(paramString).append(", isTemporary=").append(paramBoolean);
    }
    Object localObject = new ContentValues();
    if (paramBoolean) {}
    for (int i1 = 1;; i1 = 0)
    {
      ((ContentValues)localObject).put("is_temporary", Integer.valueOf(i1));
      e.a("conversations", (ContentValues)localObject, "conversation_id=?", new String[] { paramString });
      return;
    }
  }
  
  public void b(List<cyx> paramList, int paramInt)
  {
    e.a("suggested_contacts", "suggestion_type=?", new String[] { String.valueOf(paramInt) });
    ContentValues localContentValues = new ContentValues();
    paramList = paramList.iterator();
    int i1 = 0;
    while (paramList.hasNext())
    {
      cyx localcyx = (cyx)paramList.next();
      if ((!TextUtils.isEmpty(f)) && (!TextUtils.isEmpty(e)))
      {
        localContentValues.clear();
        localContentValues.put("chat_id", b.b);
        localContentValues.put("gaia_id", b.a);
        localContentValues.put("name", e);
        localContentValues.put("first_name", f);
        localContentValues.put("profile_photo_url", h);
        localContentValues.put("packed_circle_ids", r);
        localContentValues.put("sequence", Integer.valueOf(i1));
        localContentValues.put("suggestion_type", Integer.valueOf(paramInt));
        e.a("suggested_contacts", localContentValues);
        i1 += 1;
      }
    }
    a.getContentResolver().notifyChange(EsProvider.j, null);
  }
  
  /* Error */
  public boolean b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 306	bfz:e	Lbha;
    //   4: ldc_w 760
    //   7: getstatic 2823	bgv:a	[Ljava/lang/String;
    //   10: ldc_w 1381
    //   13: iconst_2
    //   14: anewarray 66	java/lang/String
    //   17: dup
    //   18: iconst_0
    //   19: aload_1
    //   20: aastore
    //   21: dup
    //   22: iconst_1
    //   23: aload_2
    //   24: aastore
    //   25: aconst_null
    //   26: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   29: astore_2
    //   30: aload_2
    //   31: invokeinterface 537 1 0
    //   36: ifeq +94 -> 130
    //   39: invokestatic 1246	emd:values	()[Lemd;
    //   42: aload_2
    //   43: iconst_3
    //   44: invokeinterface 411 2 0
    //   49: aaload
    //   50: getstatic 2825	emd:d	Lemd;
    //   53: if_acmpne +77 -> 130
    //   56: aload_0
    //   57: aload_1
    //   58: aload_2
    //   59: iconst_1
    //   60: invokeinterface 493 2 0
    //   65: aload_2
    //   66: iconst_2
    //   67: invokeinterface 493 2 0
    //   72: iconst_5
    //   73: aload_2
    //   74: iconst_4
    //   75: invokeinterface 401 2 0
    //   80: invokestatic 2827	czb:b	(Ljava/lang/String;)Lczb;
    //   83: aconst_null
    //   84: aconst_null
    //   85: aload_2
    //   86: iconst_0
    //   87: invokeinterface 493 2 0
    //   92: invokestatic 1249	emc:values	()[Lemc;
    //   95: aload_2
    //   96: iconst_5
    //   97: invokeinterface 411 2 0
    //   102: aaload
    //   103: aload_2
    //   104: bipush 6
    //   106: invokeinterface 401 2 0
    //   111: aconst_null
    //   112: iconst_m1
    //   113: iconst_0
    //   114: invokespecial 2709	bfz:a	(Ljava/lang/String;JJILczb;Ljava/lang/String;Ljava/lang/String;JLemc;Ljava/lang/String;Ljava/lang/String;II)Z
    //   117: istore_3
    //   118: aload_2
    //   119: ifnull +9 -> 128
    //   122: aload_2
    //   123: invokeinterface 421 1 0
    //   128: iload_3
    //   129: ireturn
    //   130: aload_2
    //   131: ifnull +9 -> 140
    //   134: aload_2
    //   135: invokeinterface 421 1 0
    //   140: iconst_0
    //   141: ireturn
    //   142: astore_1
    //   143: aconst_null
    //   144: astore_2
    //   145: aload_2
    //   146: ifnull +9 -> 155
    //   149: aload_2
    //   150: invokeinterface 421 1 0
    //   155: aload_1
    //   156: athrow
    //   157: astore_1
    //   158: goto -13 -> 145
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	161	0	this	bfz
    //   0	161	1	paramString1	String
    //   0	161	2	paramString2	String
    //   117	12	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   0	30	142	finally
    //   30	118	157	finally
  }
  
  /* Error */
  public Pair<String, Integer> c(long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: getstatic 55	bfz:c	Z
    //   6: ifeq +23 -> 29
    //   9: new 561	java/lang/StringBuilder
    //   12: dup
    //   13: bipush 58
    //   15: invokespecial 564	java/lang/StringBuilder:<init>	(I)V
    //   18: ldc_w 2830
    //   21: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: lload_1
    //   25: invokevirtual 666	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   28: pop
    //   29: aload_0
    //   30: getfield 306	bfz:e	Lbha;
    //   33: astore 6
    //   35: ldc_w 2198
    //   38: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   41: astore 4
    //   43: lload_1
    //   44: invokestatic 506	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   47: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   50: astore 7
    //   52: aload 7
    //   54: invokevirtual 343	java/lang/String:length	()I
    //   57: ifeq +95 -> 152
    //   60: aload 4
    //   62: aload 7
    //   64: invokevirtual 347	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   67: astore 4
    //   69: aload 6
    //   71: ldc_w 760
    //   74: iconst_2
    //   75: anewarray 66	java/lang/String
    //   78: dup
    //   79: iconst_0
    //   80: ldc 125
    //   82: aastore
    //   83: dup
    //   84: iconst_1
    //   85: ldc -95
    //   87: aastore
    //   88: aload 4
    //   90: aconst_null
    //   91: aconst_null
    //   92: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   95: astore 4
    //   97: aload 4
    //   99: invokeinterface 537 1 0
    //   104: ifeq +87 -> 191
    //   107: aload 4
    //   109: iconst_0
    //   110: invokeinterface 401 2 0
    //   115: astore 5
    //   117: aload 4
    //   119: iconst_1
    //   120: invokeinterface 411 2 0
    //   125: istore_3
    //   126: aload 4
    //   128: ifnull +10 -> 138
    //   131: aload 4
    //   133: invokeinterface 421 1 0
    //   138: new 2672	android/util/Pair
    //   141: dup
    //   142: aload 5
    //   144: iload_3
    //   145: invokestatic 605	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   148: invokespecial 2674	android/util/Pair:<init>	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   151: areturn
    //   152: new 66	java/lang/String
    //   155: dup
    //   156: aload 4
    //   158: invokespecial 376	java/lang/String:<init>	(Ljava/lang/String;)V
    //   161: astore 4
    //   163: goto -94 -> 69
    //   166: astore 5
    //   168: aconst_null
    //   169: astore 4
    //   171: aload 4
    //   173: ifnull +10 -> 183
    //   176: aload 4
    //   178: invokeinterface 421 1 0
    //   183: aload 5
    //   185: athrow
    //   186: astore 5
    //   188: goto -17 -> 171
    //   191: iconst_0
    //   192: istore_3
    //   193: goto -67 -> 126
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	196	0	this	bfz
    //   0	196	1	paramLong	long
    //   125	68	3	i1	int
    //   41	136	4	localObject1	Object
    //   1	142	5	str1	String
    //   166	18	5	localObject2	Object
    //   186	1	5	localObject3	Object
    //   33	37	6	localbha	bha
    //   50	13	7	str2	String
    // Exception table:
    //   from	to	target	type
    //   29	69	166	finally
    //   69	97	166	finally
    //   152	163	166	finally
    //   97	126	186	finally
  }
  
  public String c(czb paramczb)
  {
    String str2 = a(paramczb);
    String str1 = str2;
    if (str2 == null) {
      str1 = d(paramczb);
    }
    return str1;
  }
  
  public String c(String paramString, List<dtv> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      dtv localdtv = (dtv)paramList.next();
      int i1 = a(paramString, a.a, a.b, a.d, a.c, a.e);
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append('|');
      }
      localStringBuilder.append(i1);
    }
    return localStringBuilder.toString();
  }
  
  /* Error */
  public List<bgo> c(String paramString, long paramLong)
  {
    // Byte code:
    //   0: new 380	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 381	java/util/ArrayList:<init>	()V
    //   7: astore 4
    //   9: aload_0
    //   10: getfield 306	bfz:e	Lbha;
    //   13: ldc_w 1353
    //   16: getstatic 223	bfz:u	[Ljava/lang/String;
    //   19: ldc_w 2844
    //   22: iconst_3
    //   23: anewarray 66	java/lang/String
    //   26: dup
    //   27: iconst_0
    //   28: aload_1
    //   29: aastore
    //   30: dup
    //   31: iconst_1
    //   32: aload_0
    //   33: getfield 302	bfz:f	Lbfd;
    //   36: invokevirtual 1300	bfd:b	()Lczb;
    //   39: getfield 938	czb:a	Ljava/lang/String;
    //   42: aastore
    //   43: dup
    //   44: iconst_2
    //   45: lload_2
    //   46: invokestatic 506	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   49: aastore
    //   50: ldc_w 2846
    //   53: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   56: astore_1
    //   57: aload_1
    //   58: invokeinterface 394 1 0
    //   63: ifeq +39 -> 102
    //   66: aload 4
    //   68: aload_0
    //   69: aload_1
    //   70: invokespecial 1357	bfz:d	(Landroid/database/Cursor;)Lbgo;
    //   73: invokevirtual 1199	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   76: pop
    //   77: goto -20 -> 57
    //   80: astore 5
    //   82: aload_1
    //   83: astore 4
    //   85: aload 5
    //   87: astore_1
    //   88: aload 4
    //   90: ifnull +10 -> 100
    //   93: aload 4
    //   95: invokeinterface 421 1 0
    //   100: aload_1
    //   101: athrow
    //   102: aload_1
    //   103: ifnull +9 -> 112
    //   106: aload_1
    //   107: invokeinterface 421 1 0
    //   112: aload 4
    //   114: areturn
    //   115: astore_1
    //   116: aconst_null
    //   117: astore 4
    //   119: goto -31 -> 88
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	122	0	this	bfz
    //   0	122	1	paramString	String
    //   0	122	2	paramLong	long
    //   7	111	4	localObject1	Object
    //   80	6	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   57	77	80	finally
    //   9	57	115	finally
  }
  
  public void c()
  {
    if (e != null)
    {
      e.c();
      h -= 1;
      return;
    }
    String str = String.valueOf(ezi.b(f.a()));
    if (str.length() != 0) {}
    for (str = "endTransaction called on a database not fully setup. Account: ".concat(str);; str = new String("endTransaction called on a database not fully setup. Account: "))
    {
      ezi.d("Babel_ConvHelper", str, new Object[0]);
      break;
    }
  }
  
  public void c(String paramString, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("view", Integer.valueOf(paramInt));
    if (e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString }) != 0) {
      bft.d(this);
    }
  }
  
  public void c(String paramString1, String paramString2)
  {
    if (c) {
      new StringBuilder(String.valueOf(paramString1).length() + 46 + String.valueOf(paramString2).length()).append("updateConversationName, conversationId=").append(paramString1).append(", name=").append(paramString2);
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("name", paramString2);
    e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString1 });
  }
  
  public void c(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("gaia_id", paramString1);
    localContentValues.put("chat_id", paramString2);
    localContentValues.put("name", paramString3);
    localContentValues.put("profile_photo_url", paramString4);
    e.a("blocked_people", localContentValues);
    a.getContentResolver().notifyChange(EsProvider.l, null);
  }
  
  public void c(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "chat_ringtone_uri";; str = "hangout_ringtone_uri")
    {
      e.a();
      try
      {
        ContentValues localContentValues = new ContentValues();
        localContentValues.put(str, null);
        e.a("conversations", localContentValues, String.valueOf(str).concat("=?"), new String[] { paramString });
        e.b();
        return;
      }
      finally
      {
        e.c();
      }
    }
  }
  
  public void c(List<dro> paramList)
  {
    List localList1 = a(false);
    List localList2 = H();
    long l1 = System.currentTimeMillis();
    e.a();
    for (;;)
    {
      try
      {
        e.a("sticker_photos", null, null);
        e.a("sticker_albums", null, null);
        Iterator localIterator = paramList.iterator();
        if (!localIterator.hasNext()) {
          break label410;
        }
        dro localdro = (dro)localIterator.next();
        Object localObject1 = null;
        Object localObject2 = localList1.iterator();
        paramList = (List<dro>)localObject1;
        if (((Iterator)localObject2).hasNext())
        {
          paramList = (dro)((Iterator)localObject2).next();
          if (!a.equals(a)) {
            continue;
          }
        }
        localObject2 = new ContentValues();
        ((ContentValues)localObject2).put("album_id", a);
        ((ContentValues)localObject2).put("title", b);
        if (c == null)
        {
          localObject1 = null;
          ((ContentValues)localObject2).put("cover_photo_id", (String)localObject1);
          if (paramList != null) {
            break label398;
          }
          l2 = l1 - 1L;
          l3 = l1;
          ((ContentValues)localObject2).put("last_used", Long.valueOf(l3));
          e.a("sticker_albums", (ContentValues)localObject2);
          paramList = e.iterator();
          if (!paramList.hasNext()) {
            break label430;
          }
          localObject1 = (drp)paramList.next();
          localObject2 = new ContentValues();
          drp localdrp = a(localList2, a);
          if (localdrp != null)
          {
            localList2.remove(localdrp);
            if (c != null) {
              ((ContentValues)localObject2).put("file_name", c);
            }
            ((ContentValues)localObject2).put("last_used", Long.valueOf(d));
          }
          ((ContentValues)localObject2).put("album_id", a);
          ((ContentValues)localObject2).put("photo_id", a);
          ((ContentValues)localObject2).put("url", b);
          e.a("sticker_photos", (ContentValues)localObject2);
          continue;
        }
        localObject1 = c.a;
      }
      finally
      {
        e.c();
      }
      continue;
      label398:
      long l3 = d;
      long l2 = l1;
      continue;
      label410:
      e.b();
      e.c();
      e(localList2);
      return;
      label430:
      l1 = l2;
    }
  }
  
  public boolean c(long paramLong, int paramInt)
  {
    if (c)
    {
      localObject = String.valueOf(ezi.b(f.a()));
      new StringBuilder(String.valueOf(localObject).length() + 69).append("deleteOldConversations: account=").append((String)localObject).append(" cutOffTimestamp=").append(paramLong);
    }
    Object localObject = new String[2];
    localObject[0] = String.valueOf(paramLong);
    localObject[1] = String.valueOf(paramInt);
    int i1 = e.a("messages", B, (String[])localObject);
    if (i1 > 0)
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("continuation_event_timestamp", Integer.valueOf(0));
      localContentValues.putNull("continuation_token");
      localContentValues.put("has_oldest_message", Boolean.valueOf(false));
      e.a("conversations", localContentValues, "sort_timestamp<? AND status=? AND transport_type!=3", (String[])localObject);
      bft.d(this);
    }
    if ((i1 > 0) && (c)) {
      new StringBuilder(102).append("deleteOldConversations:").append(i1).append(" cutOffTimestamp:").append(paramLong).append(" conversationStatus:").append(paramInt);
    }
    if (c) {
      new StringBuilder(38).append("Deleted ").append(i1).append(" old conversations.");
    }
    return i1 > 0;
  }
  
  /* Error */
  public List<Pair<String, String>> d(long paramLong)
  {
    // Byte code:
    //   0: getstatic 55	bfz:c	Z
    //   3: ifeq +23 -> 26
    //   6: new 561	java/lang/StringBuilder
    //   9: dup
    //   10: bipush 68
    //   12: invokespecial 564	java/lang/StringBuilder:<init>	(I)V
    //   15: ldc_w 2879
    //   18: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: lload_1
    //   22: invokevirtual 666	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   25: pop
    //   26: new 380	java/util/ArrayList
    //   29: dup
    //   30: invokespecial 381	java/util/ArrayList:<init>	()V
    //   33: astore 4
    //   35: aload_0
    //   36: getfield 306	bfz:e	Lbha;
    //   39: ldc_w 1353
    //   42: iconst_2
    //   43: anewarray 66	java/lang/String
    //   46: dup
    //   47: iconst_0
    //   48: ldc 125
    //   50: aastore
    //   51: dup
    //   52: iconst_1
    //   53: ldc -101
    //   55: aastore
    //   56: ldc_w 2881
    //   59: iconst_2
    //   60: anewarray 66	java/lang/String
    //   63: dup
    //   64: iconst_0
    //   65: lload_1
    //   66: invokestatic 506	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   69: aastore
    //   70: dup
    //   71: iconst_1
    //   72: ldc_w 2883
    //   75: aastore
    //   76: ldc 125
    //   78: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   81: astore_3
    //   82: aload_3
    //   83: invokeinterface 394 1 0
    //   88: ifeq +57 -> 145
    //   91: aload 4
    //   93: new 2672	android/util/Pair
    //   96: dup
    //   97: aload_3
    //   98: iconst_0
    //   99: invokeinterface 401 2 0
    //   104: aload_3
    //   105: iconst_1
    //   106: invokeinterface 401 2 0
    //   111: invokespecial 2674	android/util/Pair:<init>	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   114: invokeinterface 418 2 0
    //   119: pop
    //   120: goto -38 -> 82
    //   123: astore 5
    //   125: aload_3
    //   126: astore 4
    //   128: aload 5
    //   130: astore_3
    //   131: aload 4
    //   133: ifnull +10 -> 143
    //   136: aload 4
    //   138: invokeinterface 421 1 0
    //   143: aload_3
    //   144: athrow
    //   145: aload_3
    //   146: ifnull +9 -> 155
    //   149: aload_3
    //   150: invokeinterface 421 1 0
    //   155: aload 4
    //   157: areturn
    //   158: astore_3
    //   159: aconst_null
    //   160: astore 4
    //   162: goto -31 -> 131
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	165	0	this	bfz
    //   0	165	1	paramLong	long
    //   81	69	3	localObject1	Object
    //   158	1	3	localObject2	Object
    //   33	128	4	localObject3	Object
    //   123	6	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   82	120	123	finally
    //   35	82	158	finally
  }
  
  public List<Long> d(String paramString, int paramInt)
  {
    if (c)
    {
      localObject1 = String.valueOf(ezi.b(f.a()));
      new StringBuilder(String.valueOf(localObject1).length() + 46 + String.valueOf(paramString).length()).append("getMessageTimestamps: account=").append((String)localObject1).append(" conversationId=").append(paramString);
    }
    try
    {
      paramString = e.a("messages", C, "conversation_id=?", new String[] { paramString }, null, null, "timestamp DESC", String.valueOf(paramInt));
      try
      {
        localObject1 = new ArrayList();
        while (paramString.moveToNext()) {
          ((List)localObject1).add(Long.valueOf(paramString.getLong(0)));
        }
        if (localObject1 == null) {
          break label154;
        }
      }
      finally
      {
        localObject1 = paramString;
        paramString = (String)localObject2;
      }
    }
    finally
    {
      for (;;)
      {
        localObject1 = null;
      }
    }
    ((Cursor)localObject1).close();
    label154:
    throw paramString;
    if (paramString != null) {
      paramString.close();
    }
    return (List<Long>)localObject1;
  }
  
  public void d()
  {
    if (h <= 1)
    {
      e.d();
      return;
    }
    ezi.d("Babel_ConvHelper", "cannot yield from within a nested transaction", new Exception());
  }
  
  public void d(String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("chat_ringtone_uri", paramString2);
    e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString1 });
  }
  
  /* Error */
  public boolean d(String paramString, long paramLong)
  {
    // Byte code:
    //   0: getstatic 55	bfz:c	Z
    //   3: ifeq +41 -> 44
    //   6: new 561	java/lang/StringBuilder
    //   9: dup
    //   10: aload_1
    //   11: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   14: invokevirtual 343	java/lang/String:length	()I
    //   17: bipush 60
    //   19: iadd
    //   20: invokespecial 564	java/lang/StringBuilder:<init>	(I)V
    //   23: ldc_w 1402
    //   26: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: aload_1
    //   30: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: ldc_w 2901
    //   36: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: lload_2
    //   40: invokevirtual 666	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   43: pop
    //   44: aload_0
    //   45: getfield 306	bfz:e	Lbha;
    //   48: ldc_w 760
    //   51: ldc_w 2903
    //   54: iconst_2
    //   55: anewarray 66	java/lang/String
    //   58: dup
    //   59: iconst_0
    //   60: aload_1
    //   61: aastore
    //   62: dup
    //   63: iconst_1
    //   64: lload_2
    //   65: invokestatic 506	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   68: aastore
    //   69: invokevirtual 1405	bha:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   72: pop
    //   73: aload_0
    //   74: getfield 306	bfz:e	Lbha;
    //   77: ldc_w 760
    //   80: iconst_1
    //   81: anewarray 66	java/lang/String
    //   84: dup
    //   85: iconst_0
    //   86: ldc 82
    //   88: aastore
    //   89: ldc_w 555
    //   92: iconst_1
    //   93: anewarray 66	java/lang/String
    //   96: dup
    //   97: iconst_0
    //   98: aload_1
    //   99: aastore
    //   100: aconst_null
    //   101: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   104: astore 5
    //   106: aload 5
    //   108: invokeinterface 540 1 0
    //   113: istore 4
    //   115: iload 4
    //   117: ifne +30 -> 147
    //   120: iconst_1
    //   121: istore 4
    //   123: aload 5
    //   125: ifnull +10 -> 135
    //   128: aload 5
    //   130: invokeinterface 421 1 0
    //   135: iload 4
    //   137: ifeq +34 -> 171
    //   140: aload_0
    //   141: aload_1
    //   142: invokevirtual 781	bfz:A	(Ljava/lang/String;)V
    //   145: iconst_1
    //   146: ireturn
    //   147: iconst_0
    //   148: istore 4
    //   150: goto -27 -> 123
    //   153: astore_1
    //   154: aconst_null
    //   155: astore 5
    //   157: aload 5
    //   159: ifnull +10 -> 169
    //   162: aload 5
    //   164: invokeinterface 421 1 0
    //   169: aload_1
    //   170: athrow
    //   171: aload_0
    //   172: aload_1
    //   173: aconst_null
    //   174: lload_2
    //   175: invokevirtual 2905	bfz:a	(Ljava/lang/String;[BJ)V
    //   178: iconst_0
    //   179: ireturn
    //   180: astore_1
    //   181: goto -24 -> 157
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	184	0	this	bfz
    //   0	184	1	paramString	String
    //   0	184	2	paramLong	long
    //   113	36	4	i1	int
    //   104	59	5	localCursor	Cursor
    // Exception table:
    //   from	to	target	type
    //   73	106	153	finally
    //   106	115	180	finally
  }
  
  public int e(String paramString, long paramLong)
  {
    if (c)
    {
      String str = String.valueOf(ezi.b(f.a()));
      if (str.length() == 0) {
        break label83;
      }
      "deletePlayedEventSuggestions for account: ".concat(str);
    }
    for (;;)
    {
      a();
      try
      {
        int i1 = e.a("event_suggestions", "conversation_id=? AND timestamp<=?", new String[] { paramString, String.valueOf(paramLong) });
        b();
        return i1;
      }
      finally
      {
        label83:
        c();
      }
      new String("deletePlayedEventSuggestions for account: ");
    }
  }
  
  public bgd e(String paramString)
  {
    bgd localbgd = f(paramString);
    if (localbgd == null)
    {
      ezi.e("Babel_ConvHelper", String.valueOf(paramString).length() + 31 + "Conversation id " + paramString + " does not exist", new Object[0]);
      throw new NullPointerException("Conversation id does not exist");
    }
    return localbgd;
  }
  
  public bha e()
  {
    return e;
  }
  
  /* Error */
  public void e(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 306	bfz:e	Lbha;
    //   4: ldc_w 760
    //   7: ldc_w 2919
    //   10: iconst_1
    //   11: anewarray 66	java/lang/String
    //   14: dup
    //   15: iconst_0
    //   16: lload_1
    //   17: invokestatic 506	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   20: aastore
    //   21: invokevirtual 1405	bha:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   24: pop
    //   25: new 380	java/util/ArrayList
    //   28: dup
    //   29: invokespecial 381	java/util/ArrayList:<init>	()V
    //   32: astore 4
    //   34: aload_0
    //   35: getfield 306	bfz:e	Lbha;
    //   38: ldc_w 263
    //   41: getstatic 229	bfz:w	[Ljava/lang/String;
    //   44: ldc_w 2921
    //   47: iconst_1
    //   48: anewarray 66	java/lang/String
    //   51: dup
    //   52: iconst_0
    //   53: lload_1
    //   54: invokestatic 506	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   57: aastore
    //   58: aconst_null
    //   59: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   62: astore_3
    //   63: aload_3
    //   64: invokeinterface 394 1 0
    //   69: ifeq +41 -> 110
    //   72: aload 4
    //   74: aload_3
    //   75: iconst_0
    //   76: invokeinterface 401 2 0
    //   81: invokevirtual 1199	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   84: pop
    //   85: goto -22 -> 63
    //   88: astore 5
    //   90: aload_3
    //   91: astore 4
    //   93: aload 5
    //   95: astore_3
    //   96: aload 4
    //   98: ifnull +10 -> 108
    //   101: aload 4
    //   103: invokeinterface 421 1 0
    //   108: aload_3
    //   109: athrow
    //   110: aload_3
    //   111: ifnull +9 -> 120
    //   114: aload_3
    //   115: invokeinterface 421 1 0
    //   120: new 458	android/content/ContentValues
    //   123: dup
    //   124: invokespecial 459	android/content/ContentValues:<init>	()V
    //   127: astore_3
    //   128: aload_3
    //   129: ldc -29
    //   131: lload_1
    //   132: invokestatic 519	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   135: invokevirtual 936	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   138: aload 4
    //   140: invokevirtual 823	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   143: astore 4
    //   145: aload 4
    //   147: invokeinterface 830 1 0
    //   152: ifeq +46 -> 198
    //   155: aload 4
    //   157: invokeinterface 834 1 0
    //   162: checkcast 66	java/lang/String
    //   165: astore 5
    //   167: aload_0
    //   168: getfield 306	bfz:e	Lbha;
    //   171: ldc_w 263
    //   174: aload_3
    //   175: ldc_w 555
    //   178: iconst_1
    //   179: anewarray 66	java/lang/String
    //   182: dup
    //   183: iconst_0
    //   184: aload 5
    //   186: aastore
    //   187: invokevirtual 511	bha:a	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   190: pop
    //   191: aload_0
    //   192: invokestatic 2610	bft:e	(Lbfz;)V
    //   195: goto -50 -> 145
    //   198: aload_0
    //   199: getfield 295	bfz:a	Landroid/content/Context;
    //   202: aload_0
    //   203: invokevirtual 353	bfz:g	()Lbfd;
    //   206: invokevirtual 355	bfd:g	()I
    //   209: ldc_w 2923
    //   212: lload_1
    //   213: invokestatic 2195	bff:b	(Landroid/content/Context;ILjava/lang/String;J)V
    //   216: aload_0
    //   217: invokestatic 788	bft:d	(Lbfz;)V
    //   220: aload_0
    //   221: invokestatic 2925	bft:c	(Lbfz;)V
    //   224: return
    //   225: astore_3
    //   226: aconst_null
    //   227: astore 4
    //   229: goto -133 -> 96
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	232	0	this	bfz
    //   0	232	1	paramLong	long
    //   62	113	3	localObject1	Object
    //   225	1	3	localObject2	Object
    //   32	196	4	localObject3	Object
    //   88	6	5	localObject4	Object
    //   165	20	5	str	String
    // Exception table:
    //   from	to	target	type
    //   63	85	88	finally
    //   34	63	225	finally
  }
  
  public void e(String paramString, int paramInt)
  {
    a();
    try
    {
      f(paramString, paramInt);
      b();
      return;
    }
    finally
    {
      c();
    }
  }
  
  public void e(String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("hangout_ringtone_uri", paramString2);
    e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString1 });
  }
  
  public Context f()
  {
    return a;
  }
  
  public bgd f(String paramString)
  {
    String str;
    if (c)
    {
      str = String.valueOf(paramString);
      if (str.length() == 0) {
        break label68;
      }
      "getConversationInfo ".concat(str);
    }
    for (;;)
    {
      str = null;
      localCursor = ah(paramString);
      paramString = str;
      if (localCursor != null) {
        paramString = str;
      }
      try
      {
        if (localCursor.moveToFirst()) {
          paramString = a(localCursor);
        }
        return paramString;
      }
      finally
      {
        label68:
        if (localCursor == null) {
          break;
        }
        localCursor.close();
      }
      new String("getConversationInfo ");
    }
  }
  
  public bgo f(String paramString1, String paramString2)
  {
    Object localObject = null;
    try
    {
      paramString1 = e.a("messages_view", u, "conversation_id=? AND message_id=?", new String[] { paramString1, paramString2 }, null);
      paramString2 = (String)localObject;
      if (paramString1 == null) {
        break label74;
      }
    }
    finally
    {
      try
      {
        if (paramString1.moveToFirst()) {
          paramString2 = d(paramString1);
        }
        if (paramString1 != null) {
          paramString1.close();
        }
        return paramString2;
      }
      finally {}
      paramString2 = finally;
      paramString1 = null;
    }
    paramString1.close();
    label74:
    throw paramString2;
  }
  
  public void f(long paramLong)
  {
    if (c) {
      new StringBuilder(42).append("deleteMessages, rowId=").append(paramLong);
    }
    Object localObject = aal.g(g(paramLong));
    if ((localObject != null) && (((String)localObject).startsWith("content://"))) {
      a.getContentResolver().delete(Uri.parse((String)localObject), null, null);
    }
    bha localbha = e;
    localObject = String.valueOf("_id=");
    String str = String.valueOf(String.valueOf(paramLong));
    if (str.length() != 0) {}
    for (localObject = ((String)localObject).concat(str);; localObject = new String((String)localObject))
    {
      localbha.a("messages", (String)localObject, null);
      localObject = new ContentValues();
      ((ContentValues)localObject).putNull("latest_message_expiration_timestamp");
      ((ContentValues)localObject).put("snippet_type", Integer.valueOf(7));
      ((ContentValues)localObject).putNull("snippet_author_chat_id");
      ((ContentValues)localObject).putNull("snippet_image_url");
      ((ContentValues)localObject).putNull("snippet_text");
      ((ContentValues)localObject).putNull("snippet_message_row_id");
      ((ContentValues)localObject).putNull("snippet_status");
      ((ContentValues)localObject).putNull("previous_latest_timestamp");
      ((ContentValues)localObject).putNull("snippet_new_conversation_name");
      ((ContentValues)localObject).putNull("snippet_participant_keys");
      ((ContentValues)localObject).putNull("snippet_voicemail_duration");
      e.a("conversations", (ContentValues)localObject, "snippet_message_row_id=?", new String[] { String.valueOf(paramLong) });
      return;
    }
  }
  
  public void f(String paramString, long paramLong)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(emc.f.ordinal()));
    e.a("messages", localContentValues, "conversation_id=? AND _id=?", new String[] { paramString, Long.toString(paramLong) });
  }
  
  public int g(String paramString)
  {
    return a("getConversationTransportType", paramString, "transport_type", 0);
  }
  
  public bfd g()
  {
    return f;
  }
  
  public Long g(String paramString1, String paramString2)
  {
    Object localObject = null;
    if (c)
    {
      String str = String.valueOf(paramString1);
      if (str.length() == 0) {
        break label105;
      }
      "getMessageTimeStamp, conversationId=".concat(str);
    }
    for (;;)
    {
      try
      {
        paramString1 = e.a("messages", new String[] { "timestamp" }, "conversation_id=? AND message_id=?", new String[] { paramString1, paramString2 }, null);
        paramString2 = (String)localObject;
      }
      finally
      {
        label105:
        paramString1 = null;
        if (paramString1 != null) {
          paramString1.close();
        }
      }
      try
      {
        if (paramString1.moveToFirst())
        {
          long l1 = paramString1.getLong(0);
          paramString2 = Long.valueOf(l1);
        }
        if (paramString1 != null) {
          paramString1.close();
        }
        return paramString2;
      }
      finally {}
      new String("getMessageTimeStamp, conversationId=");
    }
  }
  
  public String g(long paramLong)
  {
    localObject4 = null;
    if (c) {
      new StringBuilder(55).append("getMessageExternalId, messageRowId=").append(paramLong);
    }
    for (;;)
    {
      try
      {
        bha localbha = e;
        localObject1 = String.valueOf("_id=");
        String str = String.valueOf(String.valueOf(paramLong));
        if (str.length() != 0)
        {
          localObject1 = ((String)localObject1).concat(str);
          localObject1 = localbha.a("messages", new String[] { "external_ids" }, (String)localObject1, null, null);
        }
      }
      finally {}
      try
      {
        if (!((Cursor)localObject1).moveToFirst()) {
          break label146;
        }
        localObject4 = ((Cursor)localObject1).getString(0);
        if (localObject1 != null) {
          ((Cursor)localObject1).close();
        }
        return (String)localObject4;
      }
      finally
      {
        for (;;)
        {
          localObject4 = localObject2;
          Object localObject3 = localObject5;
        }
      }
      Object localObject1 = new String((String)localObject1);
    }
    if (localObject4 != null) {
      ((Cursor)localObject4).close();
    }
    throw ((Throwable)localObject2);
    label146:
    if (localObject2 != null) {
      ((Cursor)localObject2).close();
    }
    return null;
  }
  
  public void g(String paramString, long paramLong)
  {
    
    if (paramLong >= 0L) {}
    for (boolean bool = true;; bool = false)
    {
      aen.a(bool, "Valid timestamps must be positive.");
      bha localbha = e;
      String str1 = String.valueOf("UPDATE conversations SET last_share_timestamp=");
      String str2 = String.valueOf("conversation_id");
      localbha.a(String.valueOf(str1).length() + 29 + String.valueOf(str2).length() + str1 + paramLong + " WHERE " + str2 + "=?", new String[] { String.valueOf(paramString) });
      e.a("UPDATE conversations SET share_count=share_count+1 WHERE conversation_id=?", new String[] { String.valueOf(paramString) });
      return;
    }
  }
  
  public int h()
  {
    return g;
  }
  
  /* Error */
  public int h(long paramLong)
  {
    // Byte code:
    //   0: getstatic 55	bfz:c	Z
    //   3: ifeq +35 -> 38
    //   6: aload_0
    //   7: getfield 302	bfz:f	Lbfd;
    //   10: invokevirtual 339	bfd:a	()Ljava/lang/String;
    //   13: invokestatic 913	ezi:b	(Ljava/lang/String;)Ljava/lang/String;
    //   16: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   19: astore 4
    //   21: aload 4
    //   23: invokevirtual 343	java/lang/String:length	()I
    //   26: ifeq +51 -> 77
    //   29: ldc_w 2963
    //   32: aload 4
    //   34: invokevirtual 347	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   37: pop
    //   38: aload_0
    //   39: invokevirtual 758	bfz:a	()V
    //   42: aload_0
    //   43: getfield 306	bfz:e	Lbha;
    //   46: ldc_w 760
    //   49: ldc_w 2965
    //   52: iconst_1
    //   53: anewarray 66	java/lang/String
    //   56: dup
    //   57: iconst_0
    //   58: lload_1
    //   59: invokestatic 506	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   62: aastore
    //   63: invokevirtual 1405	bha:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   66: istore_3
    //   67: aload_0
    //   68: invokevirtual 783	bfz:b	()V
    //   71: aload_0
    //   72: invokevirtual 785	bfz:c	()V
    //   75: iload_3
    //   76: ireturn
    //   77: new 66	java/lang/String
    //   80: dup
    //   81: ldc_w 2963
    //   84: invokespecial 376	java/lang/String:<init>	(Ljava/lang/String;)V
    //   87: pop
    //   88: goto -50 -> 38
    //   91: astore 4
    //   93: aload_0
    //   94: invokevirtual 785	bfz:c	()V
    //   97: aload 4
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	bfz
    //   0	100	1	paramLong	long
    //   66	10	3	i1	int
    //   19	14	4	str	String
    //   91	7	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   42	71	91	finally
  }
  
  public long h(String paramString)
  {
    return a("getContinuationEventTimestamp", paramString, "continuation_event_timestamp", 0L);
  }
  
  public Long h(String paramString1, String paramString2)
  {
    Object localObject = null;
    if (c) {
      new StringBuilder(String.valueOf(paramString1).length() + 46 + String.valueOf(paramString2).length()).append("queryMessageRowId, conversationId=").append(paramString1).append(", messageId=").append(paramString2);
    }
    try
    {
      paramString2 = e.a("messages", new String[] { "_id" }, "conversation_id=? AND message_id=?", new String[] { paramString1, paramString2 }, null);
      long l1;
      if (paramString2 == null) {
        break label156;
      }
    }
    finally
    {
      try
      {
        paramString2.moveToFirst();
        if (!paramString2.isAfterLast())
        {
          l1 = paramString2.getLong(0);
          if (paramString2 != null) {
            paramString2.close();
          }
          return Long.valueOf(l1);
        }
        if (paramString2 != null) {
          paramString2.close();
        }
        return null;
      }
      finally {}
      paramString1 = finally;
      paramString2 = (String)localObject;
    }
    paramString2.close();
    label156:
    throw paramString1;
  }
  
  public void h(String paramString, long paramLong)
  {
    if (c) {
      new StringBuilder(String.valueOf(paramString).length() + 68).append("updateSortTimestamp, conversationId=").append(paramString).append(", timestamp=").append(paramLong);
    }
    a();
    try
    {
      int i1 = i(paramString, paramLong);
      b();
      c();
      if (i1 > 0) {
        bft.d(this);
      }
      return;
    }
    finally
    {
      c();
    }
  }
  
  /* Error */
  public int i(long paramLong)
  {
    // Byte code:
    //   0: getstatic 55	bfz:c	Z
    //   3: ifeq +35 -> 38
    //   6: aload_0
    //   7: getfield 302	bfz:f	Lbfd;
    //   10: invokevirtual 339	bfd:a	()Ljava/lang/String;
    //   13: invokestatic 913	ezi:b	(Ljava/lang/String;)Ljava/lang/String;
    //   16: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   19: astore 4
    //   21: aload 4
    //   23: invokevirtual 343	java/lang/String:length	()I
    //   26: ifeq +91 -> 117
    //   29: ldc_w 2978
    //   32: aload 4
    //   34: invokevirtual 347	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   37: pop
    //   38: aload_0
    //   39: invokevirtual 758	bfz:a	()V
    //   42: aload_0
    //   43: getfield 306	bfz:e	Lbha;
    //   46: ldc_w 1675
    //   49: ldc_w 2980
    //   52: iconst_1
    //   53: anewarray 66	java/lang/String
    //   56: dup
    //   57: iconst_0
    //   58: lload_1
    //   59: invokestatic 506	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   62: aastore
    //   63: invokevirtual 1405	bha:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   66: istore_3
    //   67: aload_0
    //   68: invokevirtual 783	bfz:b	()V
    //   71: aload_0
    //   72: invokevirtual 785	bfz:c	()V
    //   75: iload_3
    //   76: ifle +39 -> 115
    //   79: getstatic 55	bfz:c	Z
    //   82: ifeq +33 -> 115
    //   85: new 561	java/lang/StringBuilder
    //   88: dup
    //   89: bipush 78
    //   91: invokespecial 564	java/lang/StringBuilder:<init>	(I)V
    //   94: ldc_w 2982
    //   97: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: iload_3
    //   101: invokevirtual 577	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   104: ldc_w 2984
    //   107: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: lload_1
    //   111: invokevirtual 666	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   114: pop
    //   115: iload_3
    //   116: ireturn
    //   117: new 66	java/lang/String
    //   120: dup
    //   121: ldc_w 2978
    //   124: invokespecial 376	java/lang/String:<init>	(Ljava/lang/String;)V
    //   127: pop
    //   128: goto -90 -> 38
    //   131: astore 4
    //   133: aload_0
    //   134: invokevirtual 785	bfz:c	()V
    //   137: aload 4
    //   139: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	this	bfz
    //   0	140	1	paramLong	long
    //   66	50	3	i1	int
    //   19	14	4	str	String
    //   131	7	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   42	71	131	finally
  }
  
  public int i(String paramString, long paramLong)
  {
    if (paramLong < O(paramString))
    {
      if (c)
      {
        localObject = String.valueOf("Skip updateSortTimestamp because new timestamp is smaller than current timestamp, conversationId=");
        new StringBuilder(String.valueOf(localObject).length() + 32 + String.valueOf(paramString).length()).append((String)localObject).append(paramString).append(", timestamp=").append(paramLong);
      }
      return 0;
    }
    Object localObject = new ContentValues();
    ((ContentValues)localObject).put("sort_timestamp", Long.valueOf(paramLong));
    return e.a("conversations", (ContentValues)localObject, "conversation_id=?", new String[] { paramString });
  }
  
  public void i(String paramString)
  {
    Object localObject;
    if (c)
    {
      localObject = String.valueOf(paramString);
      if (((String)localObject).length() == 0) {
        break label91;
      }
      "clearContinuationToken: conversationId=".concat((String)localObject);
    }
    for (;;)
    {
      localObject = new ContentValues();
      ((ContentValues)localObject).putNull("continuation_token");
      ((ContentValues)localObject).put("continuation_event_timestamp", Integer.valueOf(0));
      ((ContentValues)localObject).put("has_oldest_message", Integer.valueOf(0));
      e.a("conversations", (ContentValues)localObject, "conversation_id=?", new String[] { paramString });
      bft.e(this);
      return;
      label91:
      new String("clearContinuationToken: conversationId=");
    }
  }
  
  public void i(String paramString1, String paramString2)
  {
    Object localObject;
    if (!TextUtils.isEmpty(paramString1))
    {
      paramString2 = "gaia_id=?";
      localObject = new String[1];
      localObject[0] = paramString1;
      paramString1 = (String)localObject;
    }
    for (;;)
    {
      e.a("blocked_people", paramString2, paramString1);
      a.getContentResolver().notifyChange(EsProvider.l, null);
      return;
      if (TextUtils.isEmpty(paramString2)) {
        break;
      }
      localObject = "chat_id=?";
      paramString1 = new String[1];
      paramString1[0] = paramString2;
      paramString2 = (String)localObject;
    }
    ezi.e("Babel_ConvHelper", "removeBlockedPerson without a valid gaiaId or chatId", new Object[0]);
  }
  
  /* Error */
  public int j(long paramLong)
  {
    // Byte code:
    //   0: getstatic 55	bfz:c	Z
    //   3: ifeq +35 -> 38
    //   6: aload_0
    //   7: getfield 302	bfz:f	Lbfd;
    //   10: invokevirtual 339	bfd:a	()Ljava/lang/String;
    //   13: invokestatic 913	ezi:b	(Ljava/lang/String;)Ljava/lang/String;
    //   16: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   19: astore 4
    //   21: aload 4
    //   23: invokevirtual 343	java/lang/String:length	()I
    //   26: ifeq +95 -> 121
    //   29: ldc_w 2992
    //   32: aload 4
    //   34: invokevirtual 347	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   37: pop
    //   38: aload_0
    //   39: invokevirtual 758	bfz:a	()V
    //   42: aload_0
    //   43: getfield 306	bfz:e	Lbha;
    //   46: ldc_w 263
    //   49: ldc_w 2994
    //   52: iconst_1
    //   53: anewarray 66	java/lang/String
    //   56: dup
    //   57: iconst_0
    //   58: lload_1
    //   59: invokestatic 506	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   62: aastore
    //   63: invokevirtual 1405	bha:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   66: istore_3
    //   67: aload_0
    //   68: invokevirtual 783	bfz:b	()V
    //   71: aload_0
    //   72: invokevirtual 785	bfz:c	()V
    //   75: iload_3
    //   76: ifle +43 -> 119
    //   79: getstatic 55	bfz:c	Z
    //   82: ifeq +33 -> 115
    //   85: new 561	java/lang/StringBuilder
    //   88: dup
    //   89: bipush 73
    //   91: invokespecial 564	java/lang/StringBuilder:<init>	(I)V
    //   94: ldc_w 2996
    //   97: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: iload_3
    //   101: invokevirtual 577	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   104: ldc_w 2984
    //   107: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: lload_1
    //   111: invokevirtual 666	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   114: pop
    //   115: aload_0
    //   116: invokestatic 788	bft:d	(Lbfz;)V
    //   119: iload_3
    //   120: ireturn
    //   121: new 66	java/lang/String
    //   124: dup
    //   125: ldc_w 2992
    //   128: invokespecial 376	java/lang/String:<init>	(Ljava/lang/String;)V
    //   131: pop
    //   132: goto -94 -> 38
    //   135: astore 4
    //   137: aload_0
    //   138: invokevirtual 785	bfz:c	()V
    //   141: aload 4
    //   143: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	144	0	this	bfz
    //   0	144	1	paramLong	long
    //   66	54	3	i1	int
    //   19	14	4	str	String
    //   135	7	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   42	71	135	finally
  }
  
  public void j(String paramString)
  {
    if (c)
    {
      String str = String.valueOf(paramString);
      if (str.length() == 0) {
        break label55;
      }
      "clearConversation: conversationId=".concat(str);
    }
    for (;;)
    {
      if (e.a("conversations", "conversation_id=?", new String[] { paramString }) > 0) {
        bft.d(this);
      }
      return;
      label55:
      new String("clearConversation: conversationId=");
    }
  }
  
  public void j(String paramString, long paramLong)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("sort_timestamp", Long.valueOf(paramLong));
    e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString });
  }
  
  public void j(String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("sms_service_center", paramString2);
    e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString1 });
  }
  
  /* Error */
  public int k(long paramLong)
  {
    // Byte code:
    //   0: getstatic 55	bfz:c	Z
    //   3: ifeq +35 -> 38
    //   6: aload_0
    //   7: getfield 302	bfz:f	Lbfd;
    //   10: invokevirtual 339	bfd:a	()Ljava/lang/String;
    //   13: invokestatic 913	ezi:b	(Ljava/lang/String;)Ljava/lang/String;
    //   16: invokestatic 335	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   19: astore 4
    //   21: aload 4
    //   23: invokevirtual 343	java/lang/String:length	()I
    //   26: ifeq +95 -> 121
    //   29: ldc_w 3000
    //   32: aload 4
    //   34: invokevirtual 347	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   37: pop
    //   38: aload_0
    //   39: invokevirtual 758	bfz:a	()V
    //   42: aload_0
    //   43: getfield 306	bfz:e	Lbha;
    //   46: ldc_w 263
    //   49: ldc_w 3002
    //   52: iconst_1
    //   53: anewarray 66	java/lang/String
    //   56: dup
    //   57: iconst_0
    //   58: lload_1
    //   59: invokestatic 506	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   62: aastore
    //   63: invokevirtual 1405	bha:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   66: istore_3
    //   67: aload_0
    //   68: invokevirtual 783	bfz:b	()V
    //   71: aload_0
    //   72: invokevirtual 785	bfz:c	()V
    //   75: iload_3
    //   76: ifle +43 -> 119
    //   79: getstatic 55	bfz:c	Z
    //   82: ifeq +33 -> 115
    //   85: new 561	java/lang/StringBuilder
    //   88: dup
    //   89: bipush 73
    //   91: invokespecial 564	java/lang/StringBuilder:<init>	(I)V
    //   94: ldc_w 3004
    //   97: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: iload_3
    //   101: invokevirtual 577	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   104: ldc_w 2984
    //   107: invokevirtual 568	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: lload_1
    //   111: invokevirtual 666	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   114: pop
    //   115: aload_0
    //   116: invokestatic 788	bft:d	(Lbfz;)V
    //   119: iload_3
    //   120: ireturn
    //   121: new 66	java/lang/String
    //   124: dup
    //   125: ldc_w 3000
    //   128: invokespecial 376	java/lang/String:<init>	(Ljava/lang/String;)V
    //   131: pop
    //   132: goto -94 -> 38
    //   135: astore 4
    //   137: aload_0
    //   138: invokevirtual 785	bfz:c	()V
    //   141: aload 4
    //   143: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	144	0	this	bfz
    //   0	144	1	paramLong	long
    //   66	54	3	i1	int
    //   19	14	4	str	String
    //   135	7	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   42	71	135	finally
  }
  
  public int k(String paramString, long paramLong)
  {
    if (c)
    {
      String str = String.valueOf(ezi.b(f.a()));
      new StringBuilder(String.valueOf(str).length() + 80 + String.valueOf(paramString).length()).append("deleteOldMessages: account=").append(str).append(" conversationId=").append(paramString).append(" cutOffTimestamp=").append(paramLong);
    }
    a(paramString, null, paramLong);
    int i1 = e.a("messages", "conversation_id=? AND timestamp<? AND transport_type!=3", new String[] { paramString, String.valueOf(paramLong) });
    bft.d(this, paramString);
    return i1;
  }
  
  public long k(String paramString)
  {
    long l1 = a("getConversationSequenceNumber", paramString, "sequence_number", 1L);
    if (l1 < 1L) {
      return 1L;
    }
    return l1;
  }
  
  /* Error */
  public ArrayList<String> k()
  {
    // Byte code:
    //   0: new 380	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 381	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: aload_0
    //   9: getfield 306	bfz:e	Lbha;
    //   12: ldc_w 263
    //   15: getstatic 127	bfz:r	[Ljava/lang/String;
    //   18: ldc_w 2105
    //   21: aconst_null
    //   22: aconst_null
    //   23: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   26: astore_1
    //   27: aload_1
    //   28: invokeinterface 394 1 0
    //   33: ifeq +35 -> 68
    //   36: aload_2
    //   37: aload_1
    //   38: iconst_0
    //   39: invokeinterface 401 2 0
    //   44: invokevirtual 1199	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   47: pop
    //   48: goto -21 -> 27
    //   51: astore_3
    //   52: aload_1
    //   53: astore_2
    //   54: aload_3
    //   55: astore_1
    //   56: aload_2
    //   57: ifnull +9 -> 66
    //   60: aload_2
    //   61: invokeinterface 421 1 0
    //   66: aload_1
    //   67: athrow
    //   68: aload_1
    //   69: ifnull +9 -> 78
    //   72: aload_1
    //   73: invokeinterface 421 1 0
    //   78: aload_2
    //   79: areturn
    //   80: astore_1
    //   81: aconst_null
    //   82: astore_2
    //   83: goto -27 -> 56
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	this	bfz
    //   26	47	1	localObject1	Object
    //   80	1	1	localObject2	Object
    //   7	76	2	localObject3	Object
    //   51	4	3	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   27	48	51	finally
    //   8	27	80	finally
  }
  
  public boolean k(String paramString1, String paramString2)
  {
    e.a();
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("file_name", paramString1);
      int i1 = e.a("sticker_photos", localContentValues, "photo_id=?", new String[] { paramString2 });
      e.b();
      e.c();
      if (i1 == 1) {
        return true;
      }
    }
    finally
    {
      e.c();
    }
    return false;
  }
  
  public int l(long paramLong)
  {
    String str = String.format(Locale.US, "(%s=%d) AND (%s<=?)", new Object[] { "transport_type", Integer.valueOf(3), "timestamp" });
    return e.a("messages", str, new String[] { Long.toString(paramLong) });
  }
  
  public void l()
  {
    int i1 = e.a("conversations", "is_pending_leave<0", null);
    if (c) {
      new StringBuilder(35).append("RemoveLeftConversations ").append(i1);
    }
    if (i1 > 0) {
      bft.d(this);
    }
  }
  
  public void l(String paramString)
  {
    Object localObject;
    if (c)
    {
      localObject = String.valueOf("expireLatestMessage. conversationId=");
      String str = String.valueOf(paramString);
      if (str.length() == 0) {
        break label86;
      }
      ((String)localObject).concat(str);
    }
    for (;;)
    {
      long l1 = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
      a();
      try
      {
        localObject = ai(paramString);
        if ((b <= 0L) || (b > l1))
        {
          b();
          return;
          label86:
          new String((String)localObject);
          continue;
        }
        localObject = new ContentValues();
        ((ContentValues)localObject).putNull("latest_message_expiration_timestamp");
        ((ContentValues)localObject).put("snippet_type", Integer.valueOf(7));
        ((ContentValues)localObject).putNull("snippet_author_chat_id");
        ((ContentValues)localObject).putNull("snippet_image_url");
        ((ContentValues)localObject).putNull("snippet_text");
        ((ContentValues)localObject).putNull("snippet_message_row_id");
        ((ContentValues)localObject).putNull("snippet_status");
        ((ContentValues)localObject).putNull("previous_latest_timestamp");
        ((ContentValues)localObject).putNull("snippet_new_conversation_name");
        ((ContentValues)localObject).putNull("snippet_participant_keys");
        ((ContentValues)localObject).putNull("snippet_voicemail_duration");
        e.a("conversations", (ContentValues)localObject, "conversation_id=?", new String[] { paramString });
        b();
        return;
      }
      finally
      {
        c();
      }
    }
  }
  
  public void l(String paramString, long paramLong)
  {
    a(paramString, paramLong, false);
  }
  
  public int m(long paramLong)
  {
    if (c) {
      new StringBuilder(42).append("deleteMmsNotification ").append(paramLong);
    }
    a();
    try
    {
      int i1 = e.a("mms_notification_inds", "_id=?", new String[] { String.valueOf(paramLong) });
      b();
      return i1;
    }
    finally
    {
      c();
    }
  }
  
  public long m(String paramString)
  {
    return a("getLatestMessageTimestamp", paramString, "latest_message_timestamp", 0L);
  }
  
  public List<dtt> m()
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      try
      {
        localCursor = e.a("participants_view", t, null, null, null);
        try
        {
          if (!localCursor.moveToNext()) {
            continue;
          }
          String str1 = localCursor.getString(0);
          str2 = localCursor.getString(1);
          String str3 = localCursor.getString(2);
          if ((!TextUtils.isEmpty(str1)) || (!TextUtils.isEmpty(str2)) || (!TextUtils.isEmpty(str3))) {
            continue;
          }
          ezi.e("Babel_ConvHelper", "RefreshParticipantsOperation: found a participant with no valid id", new Object[0]);
          str1 = null;
          if ((str1 == null) || (!str1.a())) {
            continue;
          }
          localArrayList.add(str1);
          continue;
          if (localCursor == null) {
            continue;
          }
        }
        finally {}
      }
      finally
      {
        String str2;
        dtt localdtt;
        Cursor localCursor = null;
        continue;
      }
      localCursor.close();
      throw localCharSequence;
      if (!TextUtils.isEmpty(localCharSequence))
      {
        localdtt = dtt.a(localCharSequence);
      }
      else if (!TextUtils.isEmpty(str2))
      {
        localdtt = aal.a(new czb(localdtt, str2));
      }
      else
      {
        ezi.a("Babel_ConvHelper", "RefreshParticipantsOperation: skip circle", new Object[0]);
        continue;
        ezi.e("Babel_ConvHelper", "RefreshParticipantsOperation: participant has no gaia id", new Object[0]);
      }
    }
    if (localCursor != null) {
      localCursor.close();
    }
    return localArrayList;
  }
  
  public void m(String paramString, long paramLong)
  {
    a(paramString, paramLong, true);
  }
  
  public String n(long paramLong)
  {
    String str = null;
    Cursor localCursor = e.a("messages", F, "_id=?", new String[] { Long.toString(paramLong) }, null);
    if (localCursor != null) {}
    try
    {
      if (localCursor.moveToFirst())
      {
        str = localCursor.getString(0);
        return str;
      }
      return null;
    }
    finally
    {
      localCursor.close();
    }
  }
  
  public String n(String paramString)
  {
    String str = null;
    if (c)
    {
      localObject = String.valueOf(paramString);
      if (((String)localObject).length() == 0) {
        break label114;
      }
      "getConversationName, conversationId=".concat((String)localObject);
    }
    for (;;)
    {
      try
      {
        localObject = e.a("conversations", new String[] { "name", "generated_name" }, "conversation_id=?", new String[] { paramString }, null);
        paramString = str;
      }
      finally
      {
        label114:
        localObject = null;
        if (localObject != null) {
          ((Cursor)localObject).close();
        }
      }
      try
      {
        if (((Cursor)localObject).moveToFirst())
        {
          str = ((Cursor)localObject).getString(0);
          paramString = str;
          if (TextUtils.isEmpty(str)) {
            paramString = ((Cursor)localObject).getString(1);
          }
        }
        if (localObject != null) {
          ((Cursor)localObject).close();
        }
        return paramString;
      }
      finally
      {
        continue;
      }
      new String("getConversationName, conversationId=");
    }
  }
  
  /* Error */
  public List<Pair<String, Long>> n()
  {
    // Byte code:
    //   0: new 380	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 381	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: aload_0
    //   9: getfield 306	bfz:e	Lbha;
    //   12: ldc_w 263
    //   15: getstatic 229	bfz:w	[Ljava/lang/String;
    //   18: ldc_w 3045
    //   21: aconst_null
    //   22: aconst_null
    //   23: invokevirtual 388	bha:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   26: astore_1
    //   27: aload_1
    //   28: invokeinterface 394 1 0
    //   33: ifeq +54 -> 87
    //   36: aload_2
    //   37: new 2672	android/util/Pair
    //   40: dup
    //   41: aload_1
    //   42: iconst_0
    //   43: invokeinterface 401 2 0
    //   48: aload_1
    //   49: iconst_1
    //   50: invokeinterface 493 2 0
    //   55: invokestatic 519	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   58: invokespecial 2674	android/util/Pair:<init>	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   61: invokeinterface 418 2 0
    //   66: pop
    //   67: goto -40 -> 27
    //   70: astore_3
    //   71: aload_1
    //   72: astore_2
    //   73: aload_3
    //   74: astore_1
    //   75: aload_2
    //   76: ifnull +9 -> 85
    //   79: aload_2
    //   80: invokeinterface 421 1 0
    //   85: aload_1
    //   86: athrow
    //   87: aload_1
    //   88: ifnull +9 -> 97
    //   91: aload_1
    //   92: invokeinterface 421 1 0
    //   97: aload_2
    //   98: areturn
    //   99: astore_1
    //   100: aconst_null
    //   101: astore_2
    //   102: goto -27 -> 75
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	bfz
    //   26	66	1	localObject1	Object
    //   99	1	1	localObject2	Object
    //   7	95	2	localObject3	Object
    //   70	4	3	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   27	67	70	finally
    //   8	27	99	finally
  }
  
  public void n(String paramString, long paramLong)
  {
    if ((W(paramString) == -1L) && (paramLong > 0L))
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("sms_thread_id", Long.valueOf(paramLong));
      e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString });
    }
  }
  
  public void o()
  {
    e.a("messages", null, null);
    e.a("conversation_participants", null, null);
    e.a("conversations", null, null);
    bft.d(this);
    bft.c(this);
    bft.b(this);
  }
  
  public boolean o(String paramString)
  {
    return a("getConversationHasMetadata", paramString, "metadata_present", 0) == 1;
  }
  
  public int p(String paramString)
  {
    return a("getConversationType", paramString, "conversation_type", 0);
  }
  
  public void p()
  {
    e.a("blocked_people", "gaia_id IS NOT NULL", null);
    a.getContentResolver().notifyChange(EsProvider.l, null);
  }
  
  public void q()
  {
    e.a("dismissed_contacts", null, null);
    a.getContentResolver().notifyChange(EsProvider.m, null);
  }
  
  public void q(String paramString)
  {
    if (c)
    {
      String str = String.valueOf(paramString);
      if (str.length() == 0) {
        break label35;
      }
      "setConversationHidden, conversationId=".concat(str);
    }
    for (;;)
    {
      m(paramString, -2147483648L);
      return;
      label35:
      new String("setConversationHidden, conversationId=");
    }
  }
  
  public void r()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(emc.d.ordinal()));
    a();
    try
    {
      bha localbha = e;
      String str = String.valueOf("status=");
      int i1 = emc.c.ordinal();
      i1 = localbha.a("messages", localContentValues, String.valueOf(str).length() + 11 + str + i1, null);
      b();
      c();
      if (c) {
        new StringBuilder(47).append("failAnySendingMessages patched ").append(i1).append(" rows");
      }
      return;
    }
    finally
    {
      c();
    }
  }
  
  public void r(String paramString)
  {
    if (c) {
      new StringBuilder(String.valueOf(paramString).length() + 65).append("setConversationPendingAccept, conversationId=").append(paramString).append(", status=2");
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(2));
    e.a("conversations", localContentValues, "conversation_id=?", new String[] { paramString });
  }
  
  public int s(String paramString)
  {
    return a("getConversationStatus", paramString, "status", 0);
  }
  
  public List<cyx> s()
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      try
      {
        localCursor = e.a("suggested_contacts", i, "suggestion_type=?", new String[] { "3" }, null);
        if (localCursor == null) {}
      }
      finally
      {
        Cursor localCursor = null;
        continue;
      }
      try
      {
        if (localCursor.moveToNext()) {}
        return localList;
      }
      finally
      {
        if (localCursor != null) {
          localCursor.close();
        }
      }
    }
  }
  
  public long t(String paramString)
  {
    return a("getSelfWatermarkTimestamp", paramString, "self_watermark", -1L);
  }
  
  public void t()
  {
    int i1 = 1;
    while (i1 <= 4)
    {
      c(i1);
      i1 += 1;
    }
  }
  
  public long u()
  {
    return a(G());
  }
  
  public long u(String paramString)
  {
    return a("getSeenChatMessageWatermarkTimestamp", paramString, "chat_watermark", -1L);
  }
  
  public int v(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return e.a("UPDATE conversations SET chat_watermark=sort_timestamp, has_chat_notifications=0 WHERE sort_timestamp>chat_watermark", null);
    }
    return e.a("UPDATE conversations SET chat_watermark=sort_timestamp, has_chat_notifications=0 WHERE sort_timestamp>chat_watermark AND conversation_id=?", paramString);
  }
  
  public List<String> v()
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      Cursor localCursor = e.a("conversations", A, "transport_type!=3 AND call_media_type!=0", null, null);
      boolean bool;
      if ((localCursor == null) || (localCursor != null)) {
        localCursor.close();
      }
    }
    finally
    {
      try
      {
        if (localCursor.moveToFirst()) {
          do
          {
            localArrayList.add(localCursor.getString(0));
            bool = localCursor.moveToNext();
          } while (bool);
        }
        if (localCursor != null) {
          localCursor.close();
        }
        return localArrayList;
      }
      finally
      {
        for (;;) {}
      }
      localObject1 = finally;
      localCursor = null;
    }
    throw ((Throwable)localObject1);
  }
  
  public int w(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return e.a("UPDATE conversations SET hangout_watermark=sort_timestamp, has_video_notifications=0 WHERE sort_timestamp>hangout_watermark", null);
    }
    return e.a("UPDATE conversations SET hangout_watermark=sort_timestamp, has_video_notifications=0 WHERE sort_timestamp>hangout_watermark AND conversation_id=?", paramString);
  }
  
  public void w()
  {
    if (c)
    {
      String str = String.valueOf(ezi.b(f.a()));
      if (str.length() == 0) {
        break label53;
      }
      "deleteAllConversations: account=".concat(str);
    }
    for (;;)
    {
      e.a("conversations", null, null);
      bft.d(this);
      return;
      label53:
      new String("deleteAllConversations: account=");
    }
  }
  
  public int x()
  {
    String str2 = String.format(Locale.US, "(%s=%d) AND (%s=%d) AND %s", new Object[] { "transport_type", Integer.valueOf(3), "sms_type", Integer.valueOf(1), enn.a("attachment_content_type") });
    if (ezi.a("Babel_ConvHelper", 3))
    {
      str1 = String.valueOf(str2);
      if (str1.length() == 0) {
        break label100;
      }
    }
    label100:
    for (String str1 = "deleteSmsMediaMessags: selection = ".concat(str1);; str1 = new String("deleteSmsMediaMessags: selection = "))
    {
      ezi.a("Babel_ConvHelper", str1, new Object[0]);
      return e.a("messages", str2, null);
    }
  }
  
  public long x(String paramString)
  {
    return a("getLastOtrModificationTime", paramString, "last_otr_modification_time", -1L);
  }
  
  public int y(String paramString)
  {
    return a("getConversationOtrStatus", paramString, "otr_status", 1);
  }
  
  public void y()
  {
    ezi.a("Babel_ConvHelper", "removeSmsConversationsTransaction", new Object[0]);
    a();
    try
    {
      e.a("conversations", "transport_type=3", null);
      b();
      return;
    }
    finally
    {
      c();
    }
  }
  
  public void z()
  {
    a();
    try
    {
      a(2, TimeUnit.MILLISECONDS.toMicros(((hvq)ilh.a(a, hvq.class)).a()));
      c(4);
      b();
      return;
    }
    finally
    {
      c();
    }
  }
  
  public void z(String paramString)
  {
    if (c)
    {
      String str = String.valueOf(paramString);
      if (str.length() == 0) {
        break label55;
      }
      "removeConversationFromDatabase:".concat(str);
    }
    for (;;)
    {
      if (e.a("conversations", "conversation_id=?", new String[] { paramString }) > 0) {
        bft.d(this);
      }
      return;
      label55:
      new String("removeConversationFromDatabase:");
    }
  }
}

/* Location:
 * Qualified Name:     bfz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */