import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.Telephony.Mms.Draft;
import android.provider.Telephony.Mms.Inbox;
import android.provider.Telephony.Mms.Outbox;
import android.provider.Telephony.Mms.Sent;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Map;

public final class ads
{
  public static final String[] a;
  private static ads b;
  private static final aec c = aec.b();
  private static final int[] d = { 129, 130, 137, 151 };
  private static final String[] e;
  private static final if<Uri, Integer> f;
  private static final SparseIntArray g;
  private static final SparseIntArray h;
  private static final SparseIntArray i;
  private static final SparseIntArray j;
  private static final SparseIntArray k;
  private static final SparseArray<String> l;
  private static final SparseArray<String> m;
  private static final SparseArray<String> n;
  private static final SparseArray<String> o;
  private static final SparseArray<String> p;
  private final Context q;
  private final ContentResolver r;
  private final TelephonyManager s;
  
  static
  {
    a = new String[] { "_id", "msg_box", "thread_id", "retr_txt", "sub", "ct_l", "ct_t", "m_cls", "m_id", "resp_txt", "tr_id", "ct_cls", "d_rpt", "m_type", "v", "pri", "rr", "read_status", "rpt_a", "retr_st", "st", "date", "d_tm", "exp", "m_size", "sub_cs", "retr_txt_cs", "read", "seen" };
    e = new String[] { "_id", "chset", "cd", "cid", "cl", "ct", "fn", "name", "text" };
    Object localObject = new if();
    f = (if)localObject;
    ((if)localObject).put(Telephony.Mms.Inbox.CONTENT_URI, Integer.valueOf(1));
    f.put(Telephony.Mms.Sent.CONTENT_URI, Integer.valueOf(2));
    f.put(Telephony.Mms.Draft.CONTENT_URI, Integer.valueOf(3));
    f.put(Telephony.Mms.Outbox.CONTENT_URI, Integer.valueOf(4));
    localObject = new SparseIntArray();
    g = (SparseIntArray)localObject;
    ((SparseIntArray)localObject).put(150, 25);
    g.put(154, 26);
    localObject = new SparseArray();
    l = (SparseArray)localObject;
    ((SparseArray)localObject).put(150, "sub_cs");
    l.put(154, "retr_txt_cs");
    localObject = new SparseIntArray();
    h = (SparseIntArray)localObject;
    ((SparseIntArray)localObject).put(154, 3);
    h.put(150, 4);
    localObject = new SparseArray();
    m = (SparseArray)localObject;
    ((SparseArray)localObject).put(154, "retr_txt");
    m.put(150, "sub");
    localObject = new SparseIntArray();
    i = (SparseIntArray)localObject;
    ((SparseIntArray)localObject).put(131, 5);
    i.put(132, 6);
    i.put(138, 7);
    i.put(139, 8);
    i.put(147, 9);
    i.put(152, 10);
    localObject = new SparseArray();
    n = (SparseArray)localObject;
    ((SparseArray)localObject).put(131, "ct_l");
    n.put(132, "ct_t");
    n.put(138, "m_cls");
    n.put(139, "m_id");
    n.put(147, "resp_txt");
    n.put(152, "tr_id");
    localObject = new SparseIntArray();
    j = (SparseIntArray)localObject;
    ((SparseIntArray)localObject).put(186, 11);
    j.put(134, 12);
    j.put(140, 13);
    j.put(141, 14);
    j.put(143, 15);
    j.put(144, 16);
    j.put(155, 17);
    j.put(145, 18);
    j.put(153, 19);
    j.put(149, 20);
    localObject = new SparseArray();
    o = (SparseArray)localObject;
    ((SparseArray)localObject).put(186, "ct_cls");
    o.put(134, "d_rpt");
    o.put(140, "m_type");
    o.put(141, "v");
    o.put(143, "pri");
    o.put(144, "rr");
    o.put(155, "read_status");
    o.put(145, "rpt_a");
    o.put(153, "retr_st");
    o.put(149, "st");
    localObject = new SparseIntArray();
    k = (SparseIntArray)localObject;
    ((SparseIntArray)localObject).put(133, 21);
    k.put(135, 22);
    k.put(136, 23);
    k.put(142, 24);
    localObject = new SparseArray();
    p = (SparseArray)localObject;
    ((SparseArray)localObject).put(133, "date");
    p.put(135, "d_tm");
    p.put(136, "exp");
    p.put(142, "m_size");
  }
  
  private ads(Context paramContext)
  {
    q = paramContext;
    r = paramContext.getContentResolver();
    s = ((TelephonyManager)paramContext.getSystemService("phone"));
  }
  
  private adj a(long paramLong, int paramInt)
  {
    adj localadj = new adj();
    if ((paramInt == 132) || (paramInt == 128))
    {
      adr[] arrayOfadr = a(paramLong);
      if (arrayOfadr != null)
      {
        int i1 = arrayOfadr.length;
        paramInt = 0;
        while (paramInt < i1)
        {
          localadj.a(arrayOfadr[paramInt]);
          paramInt += 1;
        }
      }
    }
    return localadj;
  }
  
  public static ads a(Context paramContext)
  {
    if ((b == null) || (!paramContext.equals(bq))) {
      b = new ads(paramContext);
    }
    return b;
  }
  
  private Uri a(adr paramadr, long paramLong, Map<Uri, InputStream> paramMap)
  {
    Uri localUri = Uri.parse(39 + "content://mms/" + paramLong + "/part");
    ContentValues localContentValues = new ContentValues(8);
    int i1 = paramadr.d();
    if (i1 != 0) {
      localContentValues.put("chset", Integer.valueOf(i1));
    }
    Object localObject2 = a(paramadr);
    Object localObject1;
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if ("image/jpg".equals(localObject2)) {
        localObject1 = "image/jpeg";
      }
      localObject2 = localObject1;
      if ("text/plain".equals(localObject1))
      {
        localObject2 = localObject1;
        if (new adf(i1, paramadr.a()).c().startsWith("BEGIN:VCARD"))
        {
          localObject2 = "text/x-vCard";
          paramadr.e("text/x-vCard".getBytes());
        }
      }
      localContentValues.put("ct", (String)localObject2);
      if ("application/smil".equals(localObject2)) {
        localContentValues.put("seq", Integer.valueOf(-1));
      }
      localObject1 = paramadr.j();
      if (localObject1 != null) {
        localContentValues.put("fn", new String((byte[])localObject1));
      }
      localObject1 = paramadr.i();
      if (localObject1 != null) {
        localContentValues.put("name", new String((byte[])localObject1));
      }
      localObject1 = paramadr.f();
      if (localObject1 != null) {
        localContentValues.put("cd", a((byte[])localObject1));
      }
      localObject1 = paramadr.c();
      if (localObject1 != null) {
        localContentValues.put("cid", a((byte[])localObject1));
      }
      localObject1 = paramadr.e();
      if (localObject1 != null) {
        localContentValues.put("cl", a((byte[])localObject1));
      }
      localObject1 = aal.b(r, localUri, localContentValues);
      if (localObject1 == null) {
        throw new adc("Failed to persist part, return null.");
      }
    }
    else
    {
      throw new adc("MIME type of the part must be set.");
    }
    a(paramadr, (Uri)localObject1, (String)localObject2, paramMap);
    paramadr.a((Uri)localObject1);
    return (Uri)localObject1;
  }
  
  private static String a(adr paramadr)
  {
    if (paramadr.g() == null) {
      return null;
    }
    return a(paramadr.g());
  }
  
  private static String a(Context paramContext, Uri paramUri)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    if (paramUri != null)
    {
      String str = paramUri.getScheme();
      if ((str == null) || (str.equals("")) || (str.equals("file"))) {
        paramUri = paramUri.getPath();
      }
      label169:
      do
      {
        return paramUri;
        if (str.equals("http")) {
          return paramUri.toString();
        }
        if (!str.equals("content")) {
          break;
        }
        try
        {
          paramContext = paramContext.getContentResolver().query(paramUri, new String[] { "_data" }, null, null, null);
          if (paramContext != null)
          {
            localObject1 = paramContext;
            localObject2 = paramContext;
            if (paramContext.getCount() != 0)
            {
              localObject1 = paramContext;
              localObject2 = paramContext;
              if (paramContext.moveToFirst()) {
                break label169;
              }
            }
          }
          localObject1 = paramContext;
          localObject2 = paramContext;
          throw new IllegalArgumentException("Given Uri could not be found in media store");
        }
        catch (SQLiteException paramContext)
        {
          localObject2 = localObject1;
          throw new IllegalArgumentException("Given Uri is not formatted in a way so that it can be found in media store.");
        }
        finally
        {
          if (localObject2 != null) {
            ((Cursor)localObject2).close();
          }
        }
        localObject1 = paramContext;
        localObject2 = paramContext;
        paramUri = paramContext.getString(paramContext.getColumnIndexOrThrow("_data"));
        localObject1 = paramUri;
        paramUri = (Uri)localObject1;
      } while (paramContext == null);
      paramContext.close();
      return (String)localObject1;
      throw new IllegalArgumentException("Given Uri scheme is not supported");
    }
    return null;
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = new String(paramArrayOfByte, "iso-8859-1");
      return paramArrayOfByte;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      Log.e("PduPersister", "ISO_8859_1 must be supported!", paramArrayOfByte);
    }
    return "";
  }
  
  private void a(int paramInt, HashSet<String> paramHashSet, SparseArray<adf[]> paramSparseArray, boolean paramBoolean)
  {
    adf[] arrayOfadf = (adf[])paramSparseArray.get(paramInt);
    if (arrayOfadf == null) {}
    while ((paramBoolean) && (arrayOfadf.length == 1)) {
      return;
    }
    if (paramBoolean) {}
    for (paramSparseArray = s.getLine1Number();; paramSparseArray = null)
    {
      int i1 = arrayOfadf.length;
      paramInt = 0;
      while (paramInt < i1)
      {
        Object localObject = arrayOfadf[paramInt];
        if (localObject != null)
        {
          localObject = ((adf)localObject).c();
          if (((paramSparseArray == null) || (!PhoneNumberUtils.compare((String)localObject, paramSparseArray))) && (!paramHashSet.contains(localObject))) {
            paramHashSet.add(localObject);
          }
        }
        paramInt += 1;
      }
      break;
    }
  }
  
  private void a(long paramLong, int paramInt, adf[] paramArrayOfadf)
  {
    ContentValues localContentValues = new ContentValues(3);
    int i2 = paramArrayOfadf.length;
    int i1 = 0;
    while (i1 < i2)
    {
      Object localObject = paramArrayOfadf[i1];
      localContentValues.clear();
      localContentValues.put("address", a(((adf)localObject).b()));
      localContentValues.put("charset", Integer.valueOf(((adf)localObject).a()));
      localContentValues.put("type", Integer.valueOf(paramInt));
      localObject = Uri.parse(39 + "content://mms/" + paramLong + "/addr");
      aal.b(r, (Uri)localObject, localContentValues);
      i1 += 1;
    }
  }
  
  private void a(long paramLong, adp paramadp)
  {
    Cursor localCursor = aal.a(r, Uri.parse(39 + "content://mms/" + paramLong + "/addr"), new String[] { "address", "charset", "type" }, null, null, null);
    if (localCursor != null) {}
    for (;;)
    {
      String str;
      int i1;
      try
      {
        if (!localCursor.moveToNext()) {
          break label253;
        }
        str = localCursor.getString(0);
        if (TextUtils.isEmpty(str)) {
          continue;
        }
        i1 = localCursor.getInt(2);
        switch (i1)
        {
        case 137: 
          Log.e("PduPersister", 33 + "Unknown address type: " + i1);
          continue;
          paramadp.a(new adf(localCursor.getInt(1), a(str)), i1);
        }
      }
      finally
      {
        localCursor.close();
      }
      continue;
      paramadp.b(new adf(localCursor.getInt(1), a(str)), i1);
      continue;
      label253:
      localCursor.close();
      return;
    }
  }
  
  /* Error */
  private void a(adr paramadr, Uri paramUri, String paramString, Map<Uri, InputStream> paramMap)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 34
    //   3: aconst_null
    //   4: astore 17
    //   6: aconst_null
    //   7: astore 28
    //   9: aconst_null
    //   10: astore 13
    //   12: aconst_null
    //   13: astore 27
    //   15: aconst_null
    //   16: astore 32
    //   18: aconst_null
    //   19: astore 16
    //   21: aconst_null
    //   22: astore 26
    //   24: aconst_null
    //   25: astore 33
    //   27: aconst_null
    //   28: astore 30
    //   30: aconst_null
    //   31: astore 25
    //   33: aconst_null
    //   34: astore 36
    //   36: aconst_null
    //   37: astore 31
    //   39: aconst_null
    //   40: astore 29
    //   42: aconst_null
    //   43: astore 15
    //   45: aconst_null
    //   46: astore 14
    //   48: aconst_null
    //   49: astore 22
    //   51: aconst_null
    //   52: astore 37
    //   54: aconst_null
    //   55: astore 9
    //   57: aconst_null
    //   58: astore 10
    //   60: aconst_null
    //   61: astore 39
    //   63: aconst_null
    //   64: astore 38
    //   66: aconst_null
    //   67: astore 35
    //   69: aload 35
    //   71: astore 11
    //   73: aload 22
    //   75: astore 18
    //   77: aload 25
    //   79: astore 19
    //   81: aload 27
    //   83: astore 23
    //   85: aload 37
    //   87: astore 12
    //   89: aload 29
    //   91: astore 20
    //   93: aload 26
    //   95: astore 21
    //   97: aload 28
    //   99: astore 24
    //   101: aload_1
    //   102: invokevirtual 285	adr:a	()[B
    //   105: astore 40
    //   107: aload 35
    //   109: astore 11
    //   111: aload 22
    //   113: astore 18
    //   115: aload 25
    //   117: astore 19
    //   119: aload 27
    //   121: astore 23
    //   123: aload 37
    //   125: astore 12
    //   127: aload 29
    //   129: astore 20
    //   131: aload 26
    //   133: astore 21
    //   135: aload 28
    //   137: astore 24
    //   139: aload_1
    //   140: invokevirtual 267	adr:d	()I
    //   143: istore 5
    //   145: aload 35
    //   147: astore 11
    //   149: aload 22
    //   151: astore 18
    //   153: aload 25
    //   155: astore 19
    //   157: aload 27
    //   159: astore 23
    //   161: aload 37
    //   163: astore 12
    //   165: aload 29
    //   167: astore 20
    //   169: aload 26
    //   171: astore 21
    //   173: aload 28
    //   175: astore 24
    //   177: ldc_w 280
    //   180: aload_3
    //   181: invokevirtual 276	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   184: ifne +87 -> 271
    //   187: aload 35
    //   189: astore 11
    //   191: aload 22
    //   193: astore 18
    //   195: aload 25
    //   197: astore 19
    //   199: aload 27
    //   201: astore 23
    //   203: aload 37
    //   205: astore 12
    //   207: aload 29
    //   209: astore 20
    //   211: aload 26
    //   213: astore 21
    //   215: aload 28
    //   217: astore 24
    //   219: ldc_w 309
    //   222: aload_3
    //   223: invokevirtual 276	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   226: ifne +45 -> 271
    //   229: aload 35
    //   231: astore 11
    //   233: aload 22
    //   235: astore 18
    //   237: aload 25
    //   239: astore 19
    //   241: aload 27
    //   243: astore 23
    //   245: aload 37
    //   247: astore 12
    //   249: aload 29
    //   251: astore 20
    //   253: aload 26
    //   255: astore 21
    //   257: aload 28
    //   259: astore 24
    //   261: ldc_w 505
    //   264: aload_3
    //   265: invokevirtual 276	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   268: ifeq +587 -> 855
    //   271: aload 38
    //   273: astore 4
    //   275: aload 14
    //   277: astore 9
    //   279: aload 30
    //   281: astore 10
    //   283: aload 13
    //   285: astore 15
    //   287: aload 40
    //   289: ifnull +2187 -> 2476
    //   292: aload 35
    //   294: astore 11
    //   296: aload 22
    //   298: astore 18
    //   300: aload 25
    //   302: astore 19
    //   304: aload 27
    //   306: astore 23
    //   308: aload 37
    //   310: astore 12
    //   312: aload 29
    //   314: astore 20
    //   316: aload 26
    //   318: astore 21
    //   320: aload 28
    //   322: astore 24
    //   324: new 261	android/content/ContentValues
    //   327: dup
    //   328: invokespecial 506	android/content/ContentValues:<init>	()V
    //   331: astore_1
    //   332: aload 35
    //   334: astore 11
    //   336: aload 22
    //   338: astore 18
    //   340: aload 25
    //   342: astore 19
    //   344: aload 27
    //   346: astore 23
    //   348: aload 37
    //   350: astore 12
    //   352: aload 29
    //   354: astore 20
    //   356: aload 26
    //   358: astore 21
    //   360: aload 28
    //   362: astore 24
    //   364: aload_1
    //   365: ldc 117
    //   367: new 282	adf
    //   370: dup
    //   371: iload 5
    //   373: aload 40
    //   375: invokespecial 288	adf:<init>	(I[B)V
    //   378: invokevirtual 290	adf:c	()Ljava/lang/String;
    //   381: invokevirtual 307	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   384: aload 35
    //   386: astore 11
    //   388: aload 22
    //   390: astore 18
    //   392: aload 25
    //   394: astore 19
    //   396: aload 27
    //   398: astore 23
    //   400: aload 37
    //   402: astore 12
    //   404: aload 29
    //   406: astore 20
    //   408: aload 26
    //   410: astore 21
    //   412: aload 28
    //   414: astore 24
    //   416: aload 38
    //   418: astore 4
    //   420: aload 14
    //   422: astore 9
    //   424: aload 30
    //   426: astore 10
    //   428: aload 13
    //   430: astore 15
    //   432: aload_0
    //   433: getfield 203	ads:r	Landroid/content/ContentResolver;
    //   436: aload_2
    //   437: aload_1
    //   438: aconst_null
    //   439: aconst_null
    //   440: invokevirtual 510	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   443: iconst_1
    //   444: if_icmpeq +2032 -> 2476
    //   447: aload 35
    //   449: astore 11
    //   451: aload 22
    //   453: astore 18
    //   455: aload 25
    //   457: astore 19
    //   459: aload 27
    //   461: astore 23
    //   463: aload 37
    //   465: astore 12
    //   467: aload 29
    //   469: astore 20
    //   471: aload 26
    //   473: astore 21
    //   475: aload 28
    //   477: astore 24
    //   479: aload_2
    //   480: invokevirtual 366	android/net/Uri:toString	()Ljava/lang/String;
    //   483: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   486: astore_1
    //   487: aload 35
    //   489: astore 11
    //   491: aload 22
    //   493: astore 18
    //   495: aload 25
    //   497: astore 19
    //   499: aload 27
    //   501: astore 23
    //   503: aload 37
    //   505: astore 12
    //   507: aload 29
    //   509: astore 20
    //   511: aload 26
    //   513: astore 21
    //   515: aload 28
    //   517: astore 24
    //   519: aload_1
    //   520: invokevirtual 516	java/lang/String:length	()I
    //   523: ifeq +233 -> 756
    //   526: aload 35
    //   528: astore 11
    //   530: aload 22
    //   532: astore 18
    //   534: aload 25
    //   536: astore 19
    //   538: aload 27
    //   540: astore 23
    //   542: aload 37
    //   544: astore 12
    //   546: aload 29
    //   548: astore 20
    //   550: aload 26
    //   552: astore 21
    //   554: aload 28
    //   556: astore 24
    //   558: ldc_w 518
    //   561: aload_1
    //   562: invokevirtual 522	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   565: astore_1
    //   566: aload 35
    //   568: astore 11
    //   570: aload 22
    //   572: astore 18
    //   574: aload 25
    //   576: astore 19
    //   578: aload 27
    //   580: astore 23
    //   582: aload 37
    //   584: astore 12
    //   586: aload 29
    //   588: astore 20
    //   590: aload 26
    //   592: astore 21
    //   594: aload 28
    //   596: astore 24
    //   598: new 333	adc
    //   601: dup
    //   602: aload_1
    //   603: invokespecial 338	adc:<init>	(Ljava/lang/String;)V
    //   606: athrow
    //   607: astore_1
    //   608: aload 11
    //   610: astore 9
    //   612: aload 18
    //   614: astore 15
    //   616: aload 19
    //   618: astore 16
    //   620: aload 23
    //   622: astore 17
    //   624: ldc_w 414
    //   627: ldc_w 524
    //   630: aload_1
    //   631: invokestatic 421	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   634: pop
    //   635: aload 11
    //   637: astore 9
    //   639: aload 18
    //   641: astore 15
    //   643: aload 19
    //   645: astore 16
    //   647: aload 23
    //   649: astore 17
    //   651: new 333	adc
    //   654: dup
    //   655: aload_1
    //   656: invokespecial 527	adc:<init>	(Ljava/lang/Throwable;)V
    //   659: athrow
    //   660: astore_1
    //   661: aload 9
    //   663: astore_2
    //   664: aload 17
    //   666: ifnull +8 -> 674
    //   669: aload 17
    //   671: invokevirtual 530	java/io/OutputStream:close	()V
    //   674: aload 16
    //   676: ifnull +8 -> 684
    //   679: aload 16
    //   681: invokevirtual 533	java/io/InputStream:close	()V
    //   684: aload 15
    //   686: ifnull +68 -> 754
    //   689: aload 15
    //   691: aload_2
    //   692: invokevirtual 537	aeb:a	(Ljava/lang/String;)I
    //   695: pop
    //   696: new 539	java/io/File
    //   699: dup
    //   700: aload_2
    //   701: invokespecial 540	java/io/File:<init>	(Ljava/lang/String;)V
    //   704: astore_2
    //   705: new 261	android/content/ContentValues
    //   708: dup
    //   709: iconst_0
    //   710: invokespecial 262	android/content/ContentValues:<init>	(I)V
    //   713: astore_3
    //   714: aload_0
    //   715: getfield 203	ads:r	Landroid/content/ContentResolver;
    //   718: astore 4
    //   720: aload_2
    //   721: invokevirtual 543	java/io/File:getName	()Ljava/lang/String;
    //   724: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   727: astore_2
    //   728: aload_2
    //   729: invokevirtual 516	java/lang/String:length	()I
    //   732: ifeq +2234 -> 2966
    //   735: ldc_w 545
    //   738: aload_2
    //   739: invokevirtual 522	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   742: astore_2
    //   743: aload 4
    //   745: aload_2
    //   746: invokestatic 259	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   749: aload_3
    //   750: invokestatic 548	aal:a	(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)I
    //   753: pop
    //   754: aload_1
    //   755: athrow
    //   756: aload 35
    //   758: astore 11
    //   760: aload 22
    //   762: astore 18
    //   764: aload 25
    //   766: astore 19
    //   768: aload 27
    //   770: astore 23
    //   772: aload 37
    //   774: astore 12
    //   776: aload 29
    //   778: astore 20
    //   780: aload 26
    //   782: astore 21
    //   784: aload 28
    //   786: astore 24
    //   788: new 41	java/lang/String
    //   791: dup
    //   792: ldc_w 518
    //   795: invokespecial 549	java/lang/String:<init>	(Ljava/lang/String;)V
    //   798: astore_1
    //   799: goto -233 -> 566
    //   802: astore_1
    //   803: aload 12
    //   805: astore 9
    //   807: aload 20
    //   809: astore 15
    //   811: aload 21
    //   813: astore 16
    //   815: aload 24
    //   817: astore 17
    //   819: ldc_w 414
    //   822: ldc_w 551
    //   825: aload_1
    //   826: invokestatic 421	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   829: pop
    //   830: aload 12
    //   832: astore 9
    //   834: aload 20
    //   836: astore 15
    //   838: aload 21
    //   840: astore 16
    //   842: aload 24
    //   844: astore 17
    //   846: new 333	adc
    //   849: dup
    //   850: aload_1
    //   851: invokespecial 527	adc:<init>	(Ljava/lang/Throwable;)V
    //   854: athrow
    //   855: aload 35
    //   857: astore 11
    //   859: aload 22
    //   861: astore 18
    //   863: aload 25
    //   865: astore 19
    //   867: aload 27
    //   869: astore 23
    //   871: aload 37
    //   873: astore 12
    //   875: aload 29
    //   877: astore 20
    //   879: aload 26
    //   881: astore 21
    //   883: aload 28
    //   885: astore 24
    //   887: ldc_w 553
    //   890: aload_3
    //   891: invokevirtual 276	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   894: istore 6
    //   896: aload 39
    //   898: astore 13
    //   900: aload 15
    //   902: astore 14
    //   904: iload 6
    //   906: ifeq +442 -> 1348
    //   909: aload_2
    //   910: ifnull +275 -> 1185
    //   913: aload 35
    //   915: astore 11
    //   917: aload 22
    //   919: astore 18
    //   921: aload 25
    //   923: astore 19
    //   925: aload 27
    //   927: astore 23
    //   929: aload 37
    //   931: astore 12
    //   933: aload 29
    //   935: astore 20
    //   937: aload 26
    //   939: astore 21
    //   941: aload 28
    //   943: astore 24
    //   945: aload 9
    //   947: astore 10
    //   949: aload_0
    //   950: getfield 195	ads:q	Landroid/content/Context;
    //   953: aload_2
    //   954: invokestatic 555	ads:a	(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    //   957: astore 13
    //   959: aload 13
    //   961: astore 11
    //   963: aload 22
    //   965: astore 18
    //   967: aload 25
    //   969: astore 19
    //   971: aload 27
    //   973: astore 23
    //   975: aload 13
    //   977: astore 9
    //   979: aload 36
    //   981: astore 15
    //   983: aload 32
    //   985: astore 16
    //   987: aload 34
    //   989: astore 17
    //   991: aload 13
    //   993: astore 12
    //   995: aload 29
    //   997: astore 20
    //   999: aload 26
    //   1001: astore 21
    //   1003: aload 28
    //   1005: astore 24
    //   1007: aload 13
    //   1009: astore 10
    //   1011: new 539	java/io/File
    //   1014: dup
    //   1015: aload 13
    //   1017: invokespecial 540	java/io/File:<init>	(Ljava/lang/String;)V
    //   1020: invokevirtual 558	java/io/File:length	()J
    //   1023: lstore 7
    //   1025: aload 13
    //   1027: astore 10
    //   1029: lload 7
    //   1031: lconst_0
    //   1032: lcmp
    //   1033: ifle +152 -> 1185
    //   1036: return
    //   1037: astore 13
    //   1039: aload 10
    //   1041: astore 11
    //   1043: aload 22
    //   1045: astore 18
    //   1047: aload 25
    //   1049: astore 19
    //   1051: aload 27
    //   1053: astore 23
    //   1055: aload 10
    //   1057: astore 9
    //   1059: aload 36
    //   1061: astore 15
    //   1063: aload 32
    //   1065: astore 16
    //   1067: aload 34
    //   1069: astore 17
    //   1071: aload 10
    //   1073: astore 12
    //   1075: aload 29
    //   1077: astore 20
    //   1079: aload 26
    //   1081: astore 21
    //   1083: aload 28
    //   1085: astore 24
    //   1087: aload_1
    //   1088: invokevirtual 561	adr:b	()Landroid/net/Uri;
    //   1091: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1094: astore 14
    //   1096: aload 10
    //   1098: astore 11
    //   1100: aload 22
    //   1102: astore 18
    //   1104: aload 25
    //   1106: astore 19
    //   1108: aload 27
    //   1110: astore 23
    //   1112: aload 10
    //   1114: astore 9
    //   1116: aload 36
    //   1118: astore 15
    //   1120: aload 32
    //   1122: astore 16
    //   1124: aload 34
    //   1126: astore 17
    //   1128: aload 10
    //   1130: astore 12
    //   1132: aload 29
    //   1134: astore 20
    //   1136: aload 26
    //   1138: astore 21
    //   1140: aload 28
    //   1142: astore 24
    //   1144: ldc_w 414
    //   1147: new 235	java/lang/StringBuilder
    //   1150: dup
    //   1151: aload 14
    //   1153: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1156: invokevirtual 516	java/lang/String:length	()I
    //   1159: bipush 25
    //   1161: iadd
    //   1162: invokespecial 238	java/lang/StringBuilder:<init>	(I)V
    //   1165: ldc_w 563
    //   1168: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1171: aload 14
    //   1173: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1176: invokevirtual 253	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1179: aload 13
    //   1181: invokestatic 421	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1184: pop
    //   1185: aload 10
    //   1187: astore 11
    //   1189: aload 22
    //   1191: astore 18
    //   1193: aload 25
    //   1195: astore 19
    //   1197: aload 27
    //   1199: astore 23
    //   1201: aload 10
    //   1203: astore 9
    //   1205: aload 36
    //   1207: astore 15
    //   1209: aload 32
    //   1211: astore 16
    //   1213: aload 34
    //   1215: astore 17
    //   1217: aload 10
    //   1219: astore 12
    //   1221: aload 29
    //   1223: astore 20
    //   1225: aload 26
    //   1227: astore 21
    //   1229: aload 28
    //   1231: astore 24
    //   1233: aload_0
    //   1234: getfield 195	ads:q	Landroid/content/Context;
    //   1237: aload_3
    //   1238: invokestatic 566	aeb:a	(Landroid/content/Context;Ljava/lang/String;)Laeb;
    //   1241: astore 22
    //   1243: aload 10
    //   1245: astore 13
    //   1247: aload 22
    //   1249: astore 14
    //   1251: aload 22
    //   1253: ifnonnull +95 -> 1348
    //   1256: aload 10
    //   1258: astore 11
    //   1260: aload 22
    //   1262: astore 18
    //   1264: aload 25
    //   1266: astore 19
    //   1268: aload 27
    //   1270: astore 23
    //   1272: aload 10
    //   1274: astore 9
    //   1276: aload 22
    //   1278: astore 15
    //   1280: aload 32
    //   1282: astore 16
    //   1284: aload 34
    //   1286: astore 17
    //   1288: aload 10
    //   1290: astore 12
    //   1292: aload 22
    //   1294: astore 20
    //   1296: aload 26
    //   1298: astore 21
    //   1300: aload 28
    //   1302: astore 24
    //   1304: new 333	adc
    //   1307: dup
    //   1308: new 235	java/lang/StringBuilder
    //   1311: dup
    //   1312: aload_3
    //   1313: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1316: invokevirtual 516	java/lang/String:length	()I
    //   1319: bipush 31
    //   1321: iadd
    //   1322: invokespecial 238	java/lang/StringBuilder:<init>	(I)V
    //   1325: ldc_w 568
    //   1328: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1331: aload_3
    //   1332: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1335: ldc_w 570
    //   1338: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1341: invokevirtual 253	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1344: invokespecial 338	adc:<init>	(Ljava/lang/String;)V
    //   1347: athrow
    //   1348: aload 13
    //   1350: astore 11
    //   1352: aload 14
    //   1354: astore 18
    //   1356: aload 25
    //   1358: astore 19
    //   1360: aload 27
    //   1362: astore 23
    //   1364: aload 13
    //   1366: astore 9
    //   1368: aload 14
    //   1370: astore 15
    //   1372: aload 32
    //   1374: astore 16
    //   1376: aload 34
    //   1378: astore 17
    //   1380: aload 13
    //   1382: astore 12
    //   1384: aload 14
    //   1386: astore 20
    //   1388: aload 26
    //   1390: astore 21
    //   1392: aload 28
    //   1394: astore 24
    //   1396: aload_0
    //   1397: getfield 203	ads:r	Landroid/content/ContentResolver;
    //   1400: aload_2
    //   1401: invokevirtual 574	android/content/ContentResolver:openOutputStream	(Landroid/net/Uri;)Ljava/io/OutputStream;
    //   1404: astore_3
    //   1405: aload_3
    //   1406: ifnonnull +136 -> 1542
    //   1409: aload 13
    //   1411: astore 11
    //   1413: aload 14
    //   1415: astore 18
    //   1417: aload 25
    //   1419: astore 19
    //   1421: aload_3
    //   1422: astore 23
    //   1424: aload 13
    //   1426: astore 9
    //   1428: aload 14
    //   1430: astore 15
    //   1432: aload 32
    //   1434: astore 16
    //   1436: aload_3
    //   1437: astore 17
    //   1439: aload 13
    //   1441: astore 12
    //   1443: aload 14
    //   1445: astore 20
    //   1447: aload 26
    //   1449: astore 21
    //   1451: aload_3
    //   1452: astore 24
    //   1454: aload_2
    //   1455: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1458: astore_1
    //   1459: aload 13
    //   1461: astore 11
    //   1463: aload 14
    //   1465: astore 18
    //   1467: aload 25
    //   1469: astore 19
    //   1471: aload_3
    //   1472: astore 23
    //   1474: aload 13
    //   1476: astore 9
    //   1478: aload 14
    //   1480: astore 15
    //   1482: aload 32
    //   1484: astore 16
    //   1486: aload_3
    //   1487: astore 17
    //   1489: aload 13
    //   1491: astore 12
    //   1493: aload 14
    //   1495: astore 20
    //   1497: aload 26
    //   1499: astore 21
    //   1501: aload_3
    //   1502: astore 24
    //   1504: new 333	adc
    //   1507: dup
    //   1508: new 235	java/lang/StringBuilder
    //   1511: dup
    //   1512: aload_1
    //   1513: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1516: invokevirtual 516	java/lang/String:length	()I
    //   1519: bipush 34
    //   1521: iadd
    //   1522: invokespecial 238	java/lang/StringBuilder:<init>	(I)V
    //   1525: ldc_w 576
    //   1528: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1531: aload_1
    //   1532: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1535: invokevirtual 253	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1538: invokespecial 338	adc:<init>	(Ljava/lang/String;)V
    //   1541: athrow
    //   1542: aload 40
    //   1544: ifnonnull +861 -> 2405
    //   1547: aload 13
    //   1549: astore 11
    //   1551: aload 14
    //   1553: astore 18
    //   1555: aload 25
    //   1557: astore 19
    //   1559: aload_3
    //   1560: astore 23
    //   1562: aload 13
    //   1564: astore 9
    //   1566: aload 14
    //   1568: astore 15
    //   1570: aload 32
    //   1572: astore 16
    //   1574: aload_3
    //   1575: astore 17
    //   1577: aload 13
    //   1579: astore 12
    //   1581: aload 14
    //   1583: astore 20
    //   1585: aload 26
    //   1587: astore 21
    //   1589: aload_3
    //   1590: astore 24
    //   1592: aload_1
    //   1593: invokevirtual 561	adr:b	()Landroid/net/Uri;
    //   1596: astore 10
    //   1598: aload 10
    //   1600: ifnull +9 -> 1609
    //   1603: aload 10
    //   1605: aload_2
    //   1606: if_acmpne +143 -> 1749
    //   1609: aload_3
    //   1610: ifnull +7 -> 1617
    //   1613: aload_3
    //   1614: invokevirtual 530	java/io/OutputStream:close	()V
    //   1617: aload 14
    //   1619: ifnull -583 -> 1036
    //   1622: aload 14
    //   1624: aload 13
    //   1626: invokevirtual 537	aeb:a	(Ljava/lang/String;)I
    //   1629: pop
    //   1630: new 539	java/io/File
    //   1633: dup
    //   1634: aload 13
    //   1636: invokespecial 540	java/io/File:<init>	(Ljava/lang/String;)V
    //   1639: astore_1
    //   1640: new 261	android/content/ContentValues
    //   1643: dup
    //   1644: iconst_0
    //   1645: invokespecial 262	android/content/ContentValues:<init>	(I)V
    //   1648: astore_2
    //   1649: aload_0
    //   1650: getfield 203	ads:r	Landroid/content/ContentResolver;
    //   1653: astore_3
    //   1654: aload_1
    //   1655: invokevirtual 543	java/io/File:getName	()Ljava/lang/String;
    //   1658: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1661: astore_1
    //   1662: aload_1
    //   1663: invokevirtual 516	java/lang/String:length	()I
    //   1666: ifeq +69 -> 1735
    //   1669: ldc_w 545
    //   1672: aload_1
    //   1673: invokevirtual 522	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   1676: astore_1
    //   1677: aload_3
    //   1678: aload_1
    //   1679: invokestatic 259	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   1682: aload_2
    //   1683: invokestatic 548	aal:a	(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)I
    //   1686: pop
    //   1687: return
    //   1688: astore_1
    //   1689: aload_3
    //   1690: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1693: astore_2
    //   1694: ldc_w 414
    //   1697: new 235	java/lang/StringBuilder
    //   1700: dup
    //   1701: aload_2
    //   1702: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1705: invokevirtual 516	java/lang/String:length	()I
    //   1708: bipush 27
    //   1710: iadd
    //   1711: invokespecial 238	java/lang/StringBuilder:<init>	(I)V
    //   1714: ldc_w 578
    //   1717: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1720: aload_2
    //   1721: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1724: invokevirtual 253	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1727: aload_1
    //   1728: invokestatic 421	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1731: pop
    //   1732: goto -115 -> 1617
    //   1735: new 41	java/lang/String
    //   1738: dup
    //   1739: ldc_w 545
    //   1742: invokespecial 549	java/lang/String:<init>	(Ljava/lang/String;)V
    //   1745: astore_1
    //   1746: goto -69 -> 1677
    //   1749: aload 33
    //   1751: astore_2
    //   1752: aload 4
    //   1754: ifnull +121 -> 1875
    //   1757: aload 13
    //   1759: astore 11
    //   1761: aload 14
    //   1763: astore 18
    //   1765: aload 25
    //   1767: astore 19
    //   1769: aload_3
    //   1770: astore 23
    //   1772: aload 13
    //   1774: astore 9
    //   1776: aload 14
    //   1778: astore 15
    //   1780: aload 32
    //   1782: astore 16
    //   1784: aload_3
    //   1785: astore 17
    //   1787: aload 13
    //   1789: astore 12
    //   1791: aload 14
    //   1793: astore 20
    //   1795: aload 26
    //   1797: astore 21
    //   1799: aload_3
    //   1800: astore 24
    //   1802: aload 33
    //   1804: astore_2
    //   1805: aload 4
    //   1807: aload 10
    //   1809: invokeinterface 583 2 0
    //   1814: ifeq +61 -> 1875
    //   1817: aload 13
    //   1819: astore 11
    //   1821: aload 14
    //   1823: astore 18
    //   1825: aload 25
    //   1827: astore 19
    //   1829: aload_3
    //   1830: astore 23
    //   1832: aload 13
    //   1834: astore 9
    //   1836: aload 14
    //   1838: astore 15
    //   1840: aload 32
    //   1842: astore 16
    //   1844: aload_3
    //   1845: astore 17
    //   1847: aload 13
    //   1849: astore 12
    //   1851: aload 14
    //   1853: astore 20
    //   1855: aload 26
    //   1857: astore 21
    //   1859: aload_3
    //   1860: astore 24
    //   1862: aload 4
    //   1864: aload 10
    //   1866: invokeinterface 586 2 0
    //   1871: checkcast 532	java/io/InputStream
    //   1874: astore_2
    //   1875: aload_2
    //   1876: astore_1
    //   1877: aload_2
    //   1878: ifnonnull +55 -> 1933
    //   1881: aload 13
    //   1883: astore 11
    //   1885: aload 14
    //   1887: astore 18
    //   1889: aload_2
    //   1890: astore 19
    //   1892: aload_3
    //   1893: astore 23
    //   1895: aload 13
    //   1897: astore 9
    //   1899: aload 14
    //   1901: astore 15
    //   1903: aload_2
    //   1904: astore 16
    //   1906: aload_3
    //   1907: astore 17
    //   1909: aload 13
    //   1911: astore 12
    //   1913: aload 14
    //   1915: astore 20
    //   1917: aload_2
    //   1918: astore 21
    //   1920: aload_3
    //   1921: astore 24
    //   1923: aload_0
    //   1924: getfield 203	ads:r	Landroid/content/ContentResolver;
    //   1927: aload 10
    //   1929: invokevirtual 590	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   1932: astore_1
    //   1933: aload_1
    //   1934: ifnonnull +131 -> 2065
    //   1937: aload 13
    //   1939: astore 11
    //   1941: aload 14
    //   1943: astore 18
    //   1945: aload_1
    //   1946: astore 19
    //   1948: aload_3
    //   1949: astore 23
    //   1951: aload 13
    //   1953: astore 9
    //   1955: aload 14
    //   1957: astore 15
    //   1959: aload_1
    //   1960: astore 16
    //   1962: aload_3
    //   1963: astore 17
    //   1965: aload 13
    //   1967: astore 12
    //   1969: aload 14
    //   1971: astore 20
    //   1973: aload_1
    //   1974: astore 21
    //   1976: aload_3
    //   1977: astore 24
    //   1979: aload 10
    //   1981: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1984: astore_2
    //   1985: aload 13
    //   1987: astore 11
    //   1989: aload 14
    //   1991: astore 18
    //   1993: aload_1
    //   1994: astore 19
    //   1996: aload_3
    //   1997: astore 23
    //   1999: aload 13
    //   2001: astore 9
    //   2003: aload 14
    //   2005: astore 15
    //   2007: aload_1
    //   2008: astore 16
    //   2010: aload_3
    //   2011: astore 17
    //   2013: aload 13
    //   2015: astore 12
    //   2017: aload 14
    //   2019: astore 20
    //   2021: aload_1
    //   2022: astore 21
    //   2024: aload_3
    //   2025: astore 24
    //   2027: new 333	adc
    //   2030: dup
    //   2031: new 235	java/lang/StringBuilder
    //   2034: dup
    //   2035: aload_2
    //   2036: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2039: invokevirtual 516	java/lang/String:length	()I
    //   2042: bipush 33
    //   2044: iadd
    //   2045: invokespecial 238	java/lang/StringBuilder:<init>	(I)V
    //   2048: ldc_w 592
    //   2051: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2054: aload_2
    //   2055: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2058: invokevirtual 253	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2061: invokespecial 338	adc:<init>	(Ljava/lang/String;)V
    //   2064: athrow
    //   2065: aload 13
    //   2067: astore 11
    //   2069: aload 14
    //   2071: astore 18
    //   2073: aload_1
    //   2074: astore 19
    //   2076: aload_3
    //   2077: astore 23
    //   2079: aload 13
    //   2081: astore 9
    //   2083: aload 14
    //   2085: astore 15
    //   2087: aload_1
    //   2088: astore 16
    //   2090: aload_3
    //   2091: astore 17
    //   2093: aload 13
    //   2095: astore 12
    //   2097: aload 14
    //   2099: astore 20
    //   2101: aload_1
    //   2102: astore 21
    //   2104: aload_3
    //   2105: astore 24
    //   2107: sipush 8192
    //   2110: newarray <illegal type>
    //   2112: astore_2
    //   2113: aload 13
    //   2115: astore 11
    //   2117: aload 14
    //   2119: astore 18
    //   2121: aload_1
    //   2122: astore 19
    //   2124: aload_3
    //   2125: astore 23
    //   2127: aload 13
    //   2129: astore 9
    //   2131: aload 14
    //   2133: astore 15
    //   2135: aload_1
    //   2136: astore 16
    //   2138: aload_3
    //   2139: astore 17
    //   2141: aload 13
    //   2143: astore 12
    //   2145: aload 14
    //   2147: astore 20
    //   2149: aload_1
    //   2150: astore 21
    //   2152: aload_3
    //   2153: astore 24
    //   2155: aload_1
    //   2156: aload_2
    //   2157: invokevirtual 595	java/io/InputStream:read	([B)I
    //   2160: istore 5
    //   2162: aload 13
    //   2164: astore 4
    //   2166: aload 14
    //   2168: astore 9
    //   2170: aload_1
    //   2171: astore 10
    //   2173: aload_3
    //   2174: astore 15
    //   2176: iload 5
    //   2178: iconst_m1
    //   2179: if_icmpeq +297 -> 2476
    //   2182: iload 6
    //   2184: ifne +56 -> 2240
    //   2187: aload 13
    //   2189: astore 11
    //   2191: aload 14
    //   2193: astore 18
    //   2195: aload_1
    //   2196: astore 19
    //   2198: aload_3
    //   2199: astore 23
    //   2201: aload 13
    //   2203: astore 9
    //   2205: aload 14
    //   2207: astore 15
    //   2209: aload_1
    //   2210: astore 16
    //   2212: aload_3
    //   2213: astore 17
    //   2215: aload 13
    //   2217: astore 12
    //   2219: aload 14
    //   2221: astore 20
    //   2223: aload_1
    //   2224: astore 21
    //   2226: aload_3
    //   2227: astore 24
    //   2229: aload_3
    //   2230: aload_2
    //   2231: iconst_0
    //   2232: iload 5
    //   2234: invokevirtual 599	java/io/OutputStream:write	([BII)V
    //   2237: goto -124 -> 2113
    //   2240: aload 13
    //   2242: astore 11
    //   2244: aload 14
    //   2246: astore 18
    //   2248: aload_1
    //   2249: astore 19
    //   2251: aload_3
    //   2252: astore 23
    //   2254: aload 13
    //   2256: astore 9
    //   2258: aload 14
    //   2260: astore 15
    //   2262: aload_1
    //   2263: astore 16
    //   2265: aload_3
    //   2266: astore 17
    //   2268: aload 13
    //   2270: astore 12
    //   2272: aload 14
    //   2274: astore 20
    //   2276: aload_1
    //   2277: astore 21
    //   2279: aload_3
    //   2280: astore 24
    //   2282: aload 14
    //   2284: aload_2
    //   2285: iload 5
    //   2287: invokevirtual 602	aeb:a	([BI)[B
    //   2290: astore 4
    //   2292: aload 4
    //   2294: ifnull +58 -> 2352
    //   2297: aload 13
    //   2299: astore 11
    //   2301: aload 14
    //   2303: astore 18
    //   2305: aload_1
    //   2306: astore 19
    //   2308: aload_3
    //   2309: astore 23
    //   2311: aload 13
    //   2313: astore 9
    //   2315: aload 14
    //   2317: astore 15
    //   2319: aload_1
    //   2320: astore 16
    //   2322: aload_3
    //   2323: astore 17
    //   2325: aload 13
    //   2327: astore 12
    //   2329: aload 14
    //   2331: astore 20
    //   2333: aload_1
    //   2334: astore 21
    //   2336: aload_3
    //   2337: astore 24
    //   2339: aload_3
    //   2340: aload 4
    //   2342: iconst_0
    //   2343: aload 4
    //   2345: arraylength
    //   2346: invokevirtual 599	java/io/OutputStream:write	([BII)V
    //   2349: goto -236 -> 2113
    //   2352: aload 13
    //   2354: astore 11
    //   2356: aload 14
    //   2358: astore 18
    //   2360: aload_1
    //   2361: astore 19
    //   2363: aload_3
    //   2364: astore 23
    //   2366: aload 13
    //   2368: astore 9
    //   2370: aload 14
    //   2372: astore 15
    //   2374: aload_1
    //   2375: astore 16
    //   2377: aload_3
    //   2378: astore 17
    //   2380: aload 13
    //   2382: astore 12
    //   2384: aload 14
    //   2386: astore 20
    //   2388: aload_1
    //   2389: astore 21
    //   2391: aload_3
    //   2392: astore 24
    //   2394: new 333	adc
    //   2397: dup
    //   2398: ldc_w 604
    //   2401: invokespecial 338	adc:<init>	(Ljava/lang/String;)V
    //   2404: athrow
    //   2405: iload 6
    //   2407: ifne +160 -> 2567
    //   2410: aload 13
    //   2412: astore 11
    //   2414: aload 14
    //   2416: astore 18
    //   2418: aload 25
    //   2420: astore 19
    //   2422: aload_3
    //   2423: astore 23
    //   2425: aload 13
    //   2427: astore 9
    //   2429: aload 14
    //   2431: astore 15
    //   2433: aload 32
    //   2435: astore 16
    //   2437: aload_3
    //   2438: astore 17
    //   2440: aload 13
    //   2442: astore 12
    //   2444: aload 14
    //   2446: astore 20
    //   2448: aload 26
    //   2450: astore 21
    //   2452: aload_3
    //   2453: astore 24
    //   2455: aload_3
    //   2456: aload 40
    //   2458: invokevirtual 606	java/io/OutputStream:write	([B)V
    //   2461: aload_3
    //   2462: astore 15
    //   2464: aload 30
    //   2466: astore 10
    //   2468: aload 14
    //   2470: astore 9
    //   2472: aload 13
    //   2474: astore 4
    //   2476: aload 15
    //   2478: ifnull +8 -> 2486
    //   2481: aload 15
    //   2483: invokevirtual 530	java/io/OutputStream:close	()V
    //   2486: aload 10
    //   2488: ifnull +8 -> 2496
    //   2491: aload 10
    //   2493: invokevirtual 533	java/io/InputStream:close	()V
    //   2496: aload 9
    //   2498: ifnull -1462 -> 1036
    //   2501: aload 9
    //   2503: aload 4
    //   2505: invokevirtual 537	aeb:a	(Ljava/lang/String;)I
    //   2508: pop
    //   2509: new 539	java/io/File
    //   2512: dup
    //   2513: aload 4
    //   2515: invokespecial 540	java/io/File:<init>	(Ljava/lang/String;)V
    //   2518: astore_1
    //   2519: new 261	android/content/ContentValues
    //   2522: dup
    //   2523: iconst_0
    //   2524: invokespecial 262	android/content/ContentValues:<init>	(I)V
    //   2527: astore_2
    //   2528: aload_0
    //   2529: getfield 203	ads:r	Landroid/content/ContentResolver;
    //   2532: astore_3
    //   2533: aload_1
    //   2534: invokevirtual 543	java/io/File:getName	()Ljava/lang/String;
    //   2537: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2540: astore_1
    //   2541: aload_1
    //   2542: invokevirtual 516	java/lang/String:length	()I
    //   2545: ifeq +305 -> 2850
    //   2548: ldc_w 545
    //   2551: aload_1
    //   2552: invokevirtual 522	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   2555: astore_1
    //   2556: aload_3
    //   2557: aload_1
    //   2558: invokestatic 259	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   2561: aload_2
    //   2562: invokestatic 548	aal:a	(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)I
    //   2565: pop
    //   2566: return
    //   2567: aload 13
    //   2569: astore 11
    //   2571: aload 14
    //   2573: astore 18
    //   2575: aload 25
    //   2577: astore 19
    //   2579: aload_3
    //   2580: astore 23
    //   2582: aload 13
    //   2584: astore 9
    //   2586: aload 14
    //   2588: astore 15
    //   2590: aload 32
    //   2592: astore 16
    //   2594: aload_3
    //   2595: astore 17
    //   2597: aload 13
    //   2599: astore 12
    //   2601: aload 14
    //   2603: astore 20
    //   2605: aload 26
    //   2607: astore 21
    //   2609: aload_3
    //   2610: astore 24
    //   2612: aload 14
    //   2614: aload 40
    //   2616: aload 40
    //   2618: arraylength
    //   2619: invokevirtual 602	aeb:a	([BI)[B
    //   2622: astore_1
    //   2623: aload_1
    //   2624: ifnull +74 -> 2698
    //   2627: aload 13
    //   2629: astore 11
    //   2631: aload 14
    //   2633: astore 18
    //   2635: aload 25
    //   2637: astore 19
    //   2639: aload_3
    //   2640: astore 23
    //   2642: aload 13
    //   2644: astore 9
    //   2646: aload 14
    //   2648: astore 15
    //   2650: aload 32
    //   2652: astore 16
    //   2654: aload_3
    //   2655: astore 17
    //   2657: aload 13
    //   2659: astore 12
    //   2661: aload 14
    //   2663: astore 20
    //   2665: aload 26
    //   2667: astore 21
    //   2669: aload_3
    //   2670: astore 24
    //   2672: aload_3
    //   2673: aload_1
    //   2674: iconst_0
    //   2675: aload_1
    //   2676: arraylength
    //   2677: invokevirtual 599	java/io/OutputStream:write	([BII)V
    //   2680: aload 13
    //   2682: astore 4
    //   2684: aload 14
    //   2686: astore 9
    //   2688: aload 30
    //   2690: astore 10
    //   2692: aload_3
    //   2693: astore 15
    //   2695: goto -219 -> 2476
    //   2698: aload 13
    //   2700: astore 11
    //   2702: aload 14
    //   2704: astore 18
    //   2706: aload 25
    //   2708: astore 19
    //   2710: aload_3
    //   2711: astore 23
    //   2713: aload 13
    //   2715: astore 9
    //   2717: aload 14
    //   2719: astore 15
    //   2721: aload 32
    //   2723: astore 16
    //   2725: aload_3
    //   2726: astore 17
    //   2728: aload 13
    //   2730: astore 12
    //   2732: aload 14
    //   2734: astore 20
    //   2736: aload 26
    //   2738: astore 21
    //   2740: aload_3
    //   2741: astore 24
    //   2743: new 333	adc
    //   2746: dup
    //   2747: ldc_w 604
    //   2750: invokespecial 338	adc:<init>	(Ljava/lang/String;)V
    //   2753: athrow
    //   2754: astore_1
    //   2755: aload 15
    //   2757: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2760: astore_2
    //   2761: ldc_w 414
    //   2764: new 235	java/lang/StringBuilder
    //   2767: dup
    //   2768: aload_2
    //   2769: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2772: invokevirtual 516	java/lang/String:length	()I
    //   2775: bipush 27
    //   2777: iadd
    //   2778: invokespecial 238	java/lang/StringBuilder:<init>	(I)V
    //   2781: ldc_w 578
    //   2784: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2787: aload_2
    //   2788: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2791: invokevirtual 253	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2794: aload_1
    //   2795: invokestatic 421	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   2798: pop
    //   2799: goto -313 -> 2486
    //   2802: astore_1
    //   2803: aload 10
    //   2805: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2808: astore_2
    //   2809: ldc_w 414
    //   2812: new 235	java/lang/StringBuilder
    //   2815: dup
    //   2816: aload_2
    //   2817: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2820: invokevirtual 516	java/lang/String:length	()I
    //   2823: bipush 27
    //   2825: iadd
    //   2826: invokespecial 238	java/lang/StringBuilder:<init>	(I)V
    //   2829: ldc_w 578
    //   2832: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2835: aload_2
    //   2836: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2839: invokevirtual 253	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2842: aload_1
    //   2843: invokestatic 421	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   2846: pop
    //   2847: goto -351 -> 2496
    //   2850: new 41	java/lang/String
    //   2853: dup
    //   2854: ldc_w 545
    //   2857: invokespecial 549	java/lang/String:<init>	(Ljava/lang/String;)V
    //   2860: astore_1
    //   2861: goto -305 -> 2556
    //   2864: astore_3
    //   2865: aload 17
    //   2867: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2870: astore 4
    //   2872: ldc_w 414
    //   2875: new 235	java/lang/StringBuilder
    //   2878: dup
    //   2879: aload 4
    //   2881: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2884: invokevirtual 516	java/lang/String:length	()I
    //   2887: bipush 27
    //   2889: iadd
    //   2890: invokespecial 238	java/lang/StringBuilder:<init>	(I)V
    //   2893: ldc_w 578
    //   2896: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2899: aload 4
    //   2901: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2904: invokevirtual 253	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2907: aload_3
    //   2908: invokestatic 421	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   2911: pop
    //   2912: goto -2238 -> 674
    //   2915: astore_3
    //   2916: aload 16
    //   2918: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2921: astore 4
    //   2923: ldc_w 414
    //   2926: new 235	java/lang/StringBuilder
    //   2929: dup
    //   2930: aload 4
    //   2932: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2935: invokevirtual 516	java/lang/String:length	()I
    //   2938: bipush 27
    //   2940: iadd
    //   2941: invokespecial 238	java/lang/StringBuilder:<init>	(I)V
    //   2944: ldc_w 578
    //   2947: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2950: aload 4
    //   2952: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2955: invokevirtual 253	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2958: aload_3
    //   2959: invokestatic 421	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   2962: pop
    //   2963: goto -2279 -> 684
    //   2966: new 41	java/lang/String
    //   2969: dup
    //   2970: ldc_w 545
    //   2973: invokespecial 549	java/lang/String:<init>	(Ljava/lang/String;)V
    //   2976: astore_2
    //   2977: goto -2234 -> 743
    //   2980: astore_1
    //   2981: aconst_null
    //   2982: astore_2
    //   2983: aload 31
    //   2985: astore 15
    //   2987: goto -2323 -> 664
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	2990	0	this	ads
    //   0	2990	1	paramadr	adr
    //   0	2990	2	paramUri	Uri
    //   0	2990	3	paramString	String
    //   0	2990	4	paramMap	Map<Uri, InputStream>
    //   143	2143	5	i1	int
    //   894	1512	6	bool	boolean
    //   1023	7	7	l1	long
    //   55	2661	9	localObject1	Object
    //   58	2746	10	localObject2	Object
    //   71	2630	11	localObject3	Object
    //   87	2644	12	localObject4	Object
    //   10	1016	13	localObject5	Object
    //   1037	143	13	localException	Exception
    //   1245	1484	13	localObject6	Object
    //   46	2687	14	localObject7	Object
    //   43	2943	15	localObject8	Object
    //   19	2898	16	localObject9	Object
    //   4	2862	17	localObject10	Object
    //   75	2630	18	localObject11	Object
    //   79	2630	19	localObject12	Object
    //   91	2644	20	localObject13	Object
    //   95	2644	21	localObject14	Object
    //   49	1244	22	localaeb	aeb
    //   83	2629	23	localObject15	Object
    //   99	2643	24	localObject16	Object
    //   31	2676	25	localObject17	Object
    //   22	2715	26	localObject18	Object
    //   13	1348	27	localObject19	Object
    //   7	1386	28	localObject20	Object
    //   40	1182	29	localObject21	Object
    //   28	2661	30	localObject22	Object
    //   37	2947	31	localObject23	Object
    //   16	2706	32	localObject24	Object
    //   25	1778	33	localObject25	Object
    //   1	1376	34	localObject26	Object
    //   67	847	35	localObject27	Object
    //   34	1172	36	localObject28	Object
    //   52	878	37	localObject29	Object
    //   64	353	38	localObject30	Object
    //   61	836	39	localObject31	Object
    //   105	2512	40	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   101	107	607	java/io/FileNotFoundException
    //   139	145	607	java/io/FileNotFoundException
    //   177	187	607	java/io/FileNotFoundException
    //   219	229	607	java/io/FileNotFoundException
    //   261	271	607	java/io/FileNotFoundException
    //   324	332	607	java/io/FileNotFoundException
    //   364	384	607	java/io/FileNotFoundException
    //   432	447	607	java/io/FileNotFoundException
    //   479	487	607	java/io/FileNotFoundException
    //   519	526	607	java/io/FileNotFoundException
    //   558	566	607	java/io/FileNotFoundException
    //   598	607	607	java/io/FileNotFoundException
    //   788	799	607	java/io/FileNotFoundException
    //   887	896	607	java/io/FileNotFoundException
    //   949	959	607	java/io/FileNotFoundException
    //   1011	1025	607	java/io/FileNotFoundException
    //   1087	1096	607	java/io/FileNotFoundException
    //   1144	1185	607	java/io/FileNotFoundException
    //   1233	1243	607	java/io/FileNotFoundException
    //   1304	1348	607	java/io/FileNotFoundException
    //   1396	1405	607	java/io/FileNotFoundException
    //   1454	1459	607	java/io/FileNotFoundException
    //   1504	1542	607	java/io/FileNotFoundException
    //   1592	1598	607	java/io/FileNotFoundException
    //   1805	1817	607	java/io/FileNotFoundException
    //   1862	1875	607	java/io/FileNotFoundException
    //   1923	1933	607	java/io/FileNotFoundException
    //   1979	1985	607	java/io/FileNotFoundException
    //   2027	2065	607	java/io/FileNotFoundException
    //   2107	2113	607	java/io/FileNotFoundException
    //   2155	2162	607	java/io/FileNotFoundException
    //   2229	2237	607	java/io/FileNotFoundException
    //   2282	2292	607	java/io/FileNotFoundException
    //   2339	2349	607	java/io/FileNotFoundException
    //   2394	2405	607	java/io/FileNotFoundException
    //   2455	2461	607	java/io/FileNotFoundException
    //   2612	2623	607	java/io/FileNotFoundException
    //   2672	2680	607	java/io/FileNotFoundException
    //   2743	2754	607	java/io/FileNotFoundException
    //   624	635	660	finally
    //   651	660	660	finally
    //   819	830	660	finally
    //   846	855	660	finally
    //   1011	1025	660	finally
    //   1087	1096	660	finally
    //   1144	1185	660	finally
    //   1233	1243	660	finally
    //   1304	1348	660	finally
    //   1396	1405	660	finally
    //   1454	1459	660	finally
    //   1504	1542	660	finally
    //   1592	1598	660	finally
    //   1805	1817	660	finally
    //   1862	1875	660	finally
    //   1923	1933	660	finally
    //   1979	1985	660	finally
    //   2027	2065	660	finally
    //   2107	2113	660	finally
    //   2155	2162	660	finally
    //   2229	2237	660	finally
    //   2282	2292	660	finally
    //   2339	2349	660	finally
    //   2394	2405	660	finally
    //   2455	2461	660	finally
    //   2612	2623	660	finally
    //   2672	2680	660	finally
    //   2743	2754	660	finally
    //   101	107	802	java/io/IOException
    //   139	145	802	java/io/IOException
    //   177	187	802	java/io/IOException
    //   219	229	802	java/io/IOException
    //   261	271	802	java/io/IOException
    //   324	332	802	java/io/IOException
    //   364	384	802	java/io/IOException
    //   432	447	802	java/io/IOException
    //   479	487	802	java/io/IOException
    //   519	526	802	java/io/IOException
    //   558	566	802	java/io/IOException
    //   598	607	802	java/io/IOException
    //   788	799	802	java/io/IOException
    //   887	896	802	java/io/IOException
    //   949	959	802	java/io/IOException
    //   1011	1025	802	java/io/IOException
    //   1087	1096	802	java/io/IOException
    //   1144	1185	802	java/io/IOException
    //   1233	1243	802	java/io/IOException
    //   1304	1348	802	java/io/IOException
    //   1396	1405	802	java/io/IOException
    //   1454	1459	802	java/io/IOException
    //   1504	1542	802	java/io/IOException
    //   1592	1598	802	java/io/IOException
    //   1805	1817	802	java/io/IOException
    //   1862	1875	802	java/io/IOException
    //   1923	1933	802	java/io/IOException
    //   1979	1985	802	java/io/IOException
    //   2027	2065	802	java/io/IOException
    //   2107	2113	802	java/io/IOException
    //   2155	2162	802	java/io/IOException
    //   2229	2237	802	java/io/IOException
    //   2282	2292	802	java/io/IOException
    //   2339	2349	802	java/io/IOException
    //   2394	2405	802	java/io/IOException
    //   2455	2461	802	java/io/IOException
    //   2612	2623	802	java/io/IOException
    //   2672	2680	802	java/io/IOException
    //   2743	2754	802	java/io/IOException
    //   949	959	1037	java/lang/Exception
    //   1011	1025	1037	java/lang/Exception
    //   1613	1617	1688	java/io/IOException
    //   2481	2486	2754	java/io/IOException
    //   2491	2496	2802	java/io/IOException
    //   669	674	2864	java/io/IOException
    //   679	684	2915	java/io/IOException
    //   101	107	2980	finally
    //   139	145	2980	finally
    //   177	187	2980	finally
    //   219	229	2980	finally
    //   261	271	2980	finally
    //   324	332	2980	finally
    //   364	384	2980	finally
    //   432	447	2980	finally
    //   479	487	2980	finally
    //   519	526	2980	finally
    //   558	566	2980	finally
    //   598	607	2980	finally
    //   788	799	2980	finally
    //   887	896	2980	finally
    //   949	959	2980	finally
  }
  
  private static void a(Cursor paramCursor, adp paramadp)
  {
    int i1 = h.size();
    int i2;
    int i3;
    String str;
    for (;;)
    {
      i2 = i1 - 1;
      if (i2 < 0) {
        break;
      }
      i1 = h.valueAt(i2);
      i3 = h.keyAt(i2);
      str = paramCursor.getString(i1);
      i1 = i2;
      if (str != null)
      {
        i1 = i2;
        if (str.length() > 0)
        {
          paramadp.a(new adf(paramCursor.getInt(g.get(i3)), a(str)), i3);
          i1 = i2;
        }
      }
    }
    i1 = i.size();
    for (;;)
    {
      i2 = i1 - 1;
      if (i2 < 0) {
        break;
      }
      i1 = i.valueAt(i2);
      i3 = i.keyAt(i2);
      str = paramCursor.getString(i1);
      i1 = i2;
      if (str != null)
      {
        paramadp.a(a(str), i3);
        i1 = i2;
      }
    }
    i1 = j.size();
    int i4;
    for (;;)
    {
      i2 = i1 - 1;
      if (i2 < 0) {
        break;
      }
      i3 = j.valueAt(i2);
      i4 = j.keyAt(i2);
      i1 = i2;
      if (!paramCursor.isNull(i3))
      {
        paramadp.a(paramCursor.getInt(i3), i4);
        i1 = i2;
      }
    }
    i1 = k.size();
    for (;;)
    {
      i2 = i1 - 1;
      if (i2 < 0) {
        break;
      }
      i3 = k.valueAt(i2);
      i4 = k.keyAt(i2);
      i1 = i2;
      if (!paramCursor.isNull(i3))
      {
        paramadp.a(paramCursor.getLong(i3), i4);
        i1 = i2;
      }
    }
  }
  
  private static byte[] a(Cursor paramCursor, int paramInt)
  {
    if (!paramCursor.isNull(paramInt)) {
      return a(paramCursor.getString(paramInt));
    }
    return null;
  }
  
  private static byte[] a(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("iso-8859-1");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      Log.e("PduPersister", "ISO_8859_1 must be supported!", paramString);
    }
    return new byte[0];
  }
  
  /* Error */
  private adr[] a(long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aconst_null
    //   4: astore 7
    //   6: aload_0
    //   7: getfield 203	ads:r	Landroid/content/ContentResolver;
    //   10: new 235	java/lang/StringBuilder
    //   13: dup
    //   14: bipush 39
    //   16: invokespecial 238	java/lang/StringBuilder:<init>	(I)V
    //   19: ldc -16
    //   21: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: lload_1
    //   25: invokevirtual 247	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   28: ldc -7
    //   30: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: invokevirtual 253	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   36: invokestatic 259	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   39: getstatic 119	ads:e	[Ljava/lang/String;
    //   42: aconst_null
    //   43: aconst_null
    //   44: aconst_null
    //   45: invokestatic 466	aal:a	(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore 9
    //   50: aload 9
    //   52: ifnull +15 -> 67
    //   55: aload 9
    //   57: invokeinterface 381 1 0
    //   62: istore_3
    //   63: iload_3
    //   64: ifne +17 -> 81
    //   67: aload 9
    //   69: ifnull +10 -> 79
    //   72: aload 9
    //   74: invokeinterface 395 1 0
    //   79: aconst_null
    //   80: areturn
    //   81: aload 9
    //   83: invokeinterface 381 1 0
    //   88: anewarray 264	adr
    //   91: astore 10
    //   93: iconst_0
    //   94: istore_3
    //   95: aload 9
    //   97: invokeinterface 469 1 0
    //   102: ifeq +577 -> 679
    //   105: new 264	adr
    //   108: dup
    //   109: invokespecial 639	adr:<init>	()V
    //   112: astore 11
    //   114: aload 9
    //   116: iconst_1
    //   117: invokeinterface 626 2 0
    //   122: ifne +607 -> 729
    //   125: aload 9
    //   127: iconst_1
    //   128: invokeinterface 479 2 0
    //   133: invokestatic 138	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   136: astore 5
    //   138: aload 5
    //   140: ifnull +13 -> 153
    //   143: aload 11
    //   145: aload 5
    //   147: invokevirtual 642	java/lang/Integer:intValue	()I
    //   150: invokevirtual 644	adr:a	(I)V
    //   153: aload 9
    //   155: iconst_2
    //   156: invokestatic 646	ads:a	(Landroid/database/Cursor;I)[B
    //   159: astore 6
    //   161: aload 6
    //   163: ifnull +10 -> 173
    //   166: aload 11
    //   168: aload 6
    //   170: invokevirtual 648	adr:d	([B)V
    //   173: aload 9
    //   175: iconst_3
    //   176: invokestatic 646	ads:a	(Landroid/database/Cursor;I)[B
    //   179: astore 6
    //   181: aload 6
    //   183: ifnull +10 -> 193
    //   186: aload 11
    //   188: aload 6
    //   190: invokevirtual 650	adr:b	([B)V
    //   193: aload 9
    //   195: iconst_4
    //   196: invokestatic 646	ads:a	(Landroid/database/Cursor;I)[B
    //   199: astore 6
    //   201: aload 6
    //   203: ifnull +10 -> 213
    //   206: aload 11
    //   208: aload 6
    //   210: invokevirtual 652	adr:c	([B)V
    //   213: aload 9
    //   215: iconst_5
    //   216: invokestatic 646	ads:a	(Landroid/database/Cursor;I)[B
    //   219: astore 12
    //   221: aload 12
    //   223: ifnull +234 -> 457
    //   226: aload 11
    //   228: aload 12
    //   230: invokevirtual 304	adr:e	([B)V
    //   233: aload 9
    //   235: bipush 6
    //   237: invokestatic 646	ads:a	(Landroid/database/Cursor;I)[B
    //   240: astore 6
    //   242: aload 6
    //   244: ifnull +10 -> 254
    //   247: aload 11
    //   249: aload 6
    //   251: invokevirtual 654	adr:h	([B)V
    //   254: aload 9
    //   256: bipush 7
    //   258: invokestatic 646	ads:a	(Landroid/database/Cursor;I)[B
    //   261: astore 6
    //   263: aload 6
    //   265: ifnull +10 -> 275
    //   268: aload 11
    //   270: aload 6
    //   272: invokevirtual 656	adr:g	([B)V
    //   275: aload 9
    //   277: iconst_0
    //   278: invokeinterface 632 2 0
    //   283: lstore_1
    //   284: new 235	java/lang/StringBuilder
    //   287: dup
    //   288: bipush 39
    //   290: invokespecial 238	java/lang/StringBuilder:<init>	(I)V
    //   293: ldc_w 658
    //   296: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   299: lload_1
    //   300: invokevirtual 247	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   303: invokevirtual 253	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   306: invokestatic 259	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   309: astore 6
    //   311: aload 11
    //   313: aload 6
    //   315: invokevirtual 346	adr:a	(Landroid/net/Uri;)V
    //   318: aload 12
    //   320: invokestatic 322	ads:a	([B)Ljava/lang/String;
    //   323: astore 13
    //   325: aload 13
    //   327: invokestatic 660	aal:b	(Ljava/lang/String;)Z
    //   330: ifne +386 -> 716
    //   333: aload 13
    //   335: invokestatic 662	aal:c	(Ljava/lang/String;)Z
    //   338: ifne +378 -> 716
    //   341: aload 13
    //   343: invokestatic 664	aal:d	(Ljava/lang/String;)Z
    //   346: ifne +370 -> 716
    //   349: new 666	java/io/ByteArrayOutputStream
    //   352: dup
    //   353: invokespecial 667	java/io/ByteArrayOutputStream:<init>	()V
    //   356: astore 12
    //   358: ldc_w 280
    //   361: aload 13
    //   363: invokevirtual 276	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   366: ifne +25 -> 391
    //   369: ldc_w 309
    //   372: aload 13
    //   374: invokevirtual 276	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   377: ifne +14 -> 391
    //   380: ldc_w 505
    //   383: aload 13
    //   385: invokevirtual 276	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   388: ifeq +112 -> 500
    //   391: aload 9
    //   393: bipush 8
    //   395: invokeinterface 403 2 0
    //   400: astore 6
    //   402: aload 5
    //   404: ifnull +81 -> 485
    //   407: aload 5
    //   409: invokevirtual 642	java/lang/Integer:intValue	()I
    //   412: istore 4
    //   414: goto +290 -> 704
    //   417: new 282	adf
    //   420: dup
    //   421: iload 4
    //   423: aload 5
    //   425: invokespecial 670	adf:<init>	(ILjava/lang/String;)V
    //   428: invokevirtual 454	adf:b	()[B
    //   431: astore 5
    //   433: aload 12
    //   435: aload 5
    //   437: iconst_0
    //   438: aload 5
    //   440: arraylength
    //   441: invokevirtual 671	java/io/ByteArrayOutputStream:write	([BII)V
    //   444: aload 11
    //   446: aload 12
    //   448: invokevirtual 674	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   451: invokevirtual 676	adr:a	([B)V
    //   454: goto +262 -> 716
    //   457: new 333	adc
    //   460: dup
    //   461: ldc_w 678
    //   464: invokespecial 338	adc:<init>	(Ljava/lang/String;)V
    //   467: athrow
    //   468: astore 5
    //   470: aload 9
    //   472: ifnull +10 -> 482
    //   475: aload 9
    //   477: invokeinterface 395 1 0
    //   482: aload 5
    //   484: athrow
    //   485: bipush 106
    //   487: istore 4
    //   489: goto +215 -> 704
    //   492: ldc_w 358
    //   495: astore 5
    //   497: goto -80 -> 417
    //   500: aload 8
    //   502: astore 5
    //   504: aload_0
    //   505: getfield 203	ads:r	Landroid/content/ContentResolver;
    //   508: aload 6
    //   510: invokevirtual 590	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   513: astore 6
    //   515: sipush 256
    //   518: newarray <illegal type>
    //   520: astore 5
    //   522: aload 6
    //   524: aload 5
    //   526: invokevirtual 595	java/io/InputStream:read	([B)I
    //   529: istore 4
    //   531: iload 4
    //   533: iflt +25 -> 558
    //   536: aload 12
    //   538: aload 5
    //   540: iconst_0
    //   541: iload 4
    //   543: invokevirtual 671	java/io/ByteArrayOutputStream:write	([BII)V
    //   546: aload 6
    //   548: aload 5
    //   550: invokevirtual 595	java/io/InputStream:read	([B)I
    //   553: istore 4
    //   555: goto -24 -> 531
    //   558: aload 6
    //   560: ifnull -116 -> 444
    //   563: aload 6
    //   565: invokevirtual 533	java/io/InputStream:close	()V
    //   568: goto -124 -> 444
    //   571: astore 5
    //   573: ldc_w 414
    //   576: ldc_w 680
    //   579: aload 5
    //   581: invokestatic 421	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   584: pop
    //   585: goto -141 -> 444
    //   588: astore 5
    //   590: aload 7
    //   592: astore 6
    //   594: aload 5
    //   596: astore 7
    //   598: aload 6
    //   600: astore 5
    //   602: ldc_w 414
    //   605: ldc_w 682
    //   608: aload 7
    //   610: invokestatic 421	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   613: pop
    //   614: aload 6
    //   616: astore 5
    //   618: aload 9
    //   620: invokeinterface 395 1 0
    //   625: aload 6
    //   627: astore 5
    //   629: new 333	adc
    //   632: dup
    //   633: aload 7
    //   635: invokespecial 527	adc:<init>	(Ljava/lang/Throwable;)V
    //   638: athrow
    //   639: astore 7
    //   641: aload 5
    //   643: astore 6
    //   645: aload 7
    //   647: astore 5
    //   649: aload 6
    //   651: ifnull +8 -> 659
    //   654: aload 6
    //   656: invokevirtual 533	java/io/InputStream:close	()V
    //   659: aload 5
    //   661: athrow
    //   662: astore 6
    //   664: ldc_w 414
    //   667: ldc_w 680
    //   670: aload 6
    //   672: invokestatic 421	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   675: pop
    //   676: goto -17 -> 659
    //   679: aload 9
    //   681: ifnull +10 -> 691
    //   684: aload 9
    //   686: invokeinterface 395 1 0
    //   691: aload 10
    //   693: areturn
    //   694: astore 5
    //   696: goto -47 -> 649
    //   699: astore 7
    //   701: goto -103 -> 598
    //   704: aload 6
    //   706: ifnull -214 -> 492
    //   709: aload 6
    //   711: astore 5
    //   713: goto -296 -> 417
    //   716: aload 10
    //   718: iload_3
    //   719: aload 11
    //   721: aastore
    //   722: iload_3
    //   723: iconst_1
    //   724: iadd
    //   725: istore_3
    //   726: goto -631 -> 95
    //   729: aconst_null
    //   730: astore 5
    //   732: goto -594 -> 138
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	735	0	this	ads
    //   0	735	1	paramLong	long
    //   62	664	3	i1	int
    //   412	142	4	i2	int
    //   136	303	5	localObject1	Object
    //   468	15	5	localObject2	Object
    //   495	54	5	localObject3	Object
    //   571	9	5	localIOException1	java.io.IOException
    //   588	7	5	localIOException2	java.io.IOException
    //   600	60	5	localObject4	Object
    //   694	1	5	localObject5	Object
    //   711	20	5	localObject6	Object
    //   159	496	6	localObject7	Object
    //   662	48	6	localIOException3	java.io.IOException
    //   4	630	7	localObject8	Object
    //   639	7	7	localObject9	Object
    //   699	1	7	localIOException4	java.io.IOException
    //   1	500	8	localObject10	Object
    //   48	637	9	localCursor	Cursor
    //   91	626	10	arrayOfadr	adr[]
    //   112	608	11	localadr	adr
    //   219	318	12	localObject11	Object
    //   323	61	13	str	String
    // Exception table:
    //   from	to	target	type
    //   55	63	468	finally
    //   81	93	468	finally
    //   95	138	468	finally
    //   143	153	468	finally
    //   153	161	468	finally
    //   166	173	468	finally
    //   173	181	468	finally
    //   186	193	468	finally
    //   193	201	468	finally
    //   206	213	468	finally
    //   213	221	468	finally
    //   226	242	468	finally
    //   247	254	468	finally
    //   254	263	468	finally
    //   268	275	468	finally
    //   275	391	468	finally
    //   391	402	468	finally
    //   407	414	468	finally
    //   417	444	468	finally
    //   444	454	468	finally
    //   457	468	468	finally
    //   563	568	468	finally
    //   573	585	468	finally
    //   654	659	468	finally
    //   659	662	468	finally
    //   664	676	468	finally
    //   563	568	571	java/io/IOException
    //   504	515	588	java/io/IOException
    //   504	515	639	finally
    //   602	614	639	finally
    //   618	625	639	finally
    //   629	639	639	finally
    //   654	659	662	java/io/IOException
    //   515	531	694	finally
    //   536	555	694	finally
    //   515	531	699	java/io/IOException
    //   536	555	699	java/io/IOException
  }
  
  /* Error */
  private adg b(Uri paramUri)
  {
    // Byte code:
    //   0: getstatic 190	ads:c	Laec;
    //   3: astore 9
    //   5: aload 9
    //   7: monitorenter
    //   8: getstatic 190	ads:c	Laec;
    //   11: aload_1
    //   12: invokevirtual 688	aec:a	(Landroid/net/Uri;)Z
    //   15: istore 4
    //   17: iload 4
    //   19: ifeq +125 -> 144
    //   22: getstatic 190	ads:c	Laec;
    //   25: invokevirtual 691	java/lang/Object:wait	()V
    //   28: getstatic 190	ads:c	Laec;
    //   31: aload_1
    //   32: invokevirtual 693	aec:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   35: checkcast 695	aed
    //   38: astore 10
    //   40: aload 10
    //   42: ifnull +102 -> 144
    //   45: aload 10
    //   47: invokevirtual 698	aed:a	()Ladg;
    //   50: astore 10
    //   52: aload 9
    //   54: monitorexit
    //   55: getstatic 190	ads:c	Laec;
    //   58: astore 9
    //   60: aload 9
    //   62: monitorenter
    //   63: getstatic 190	ads:c	Laec;
    //   66: aload_1
    //   67: iconst_0
    //   68: invokevirtual 701	aec:a	(Landroid/net/Uri;Z)V
    //   71: getstatic 190	ads:c	Laec;
    //   74: invokevirtual 704	java/lang/Object:notifyAll	()V
    //   77: aload 9
    //   79: monitorexit
    //   80: aload 10
    //   82: areturn
    //   83: astore 10
    //   85: ldc_w 414
    //   88: ldc_w 706
    //   91: aload 10
    //   93: invokestatic 421	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   96: pop
    //   97: goto -69 -> 28
    //   100: astore 10
    //   102: aload 9
    //   104: monitorexit
    //   105: aload 10
    //   107: athrow
    //   108: astore 10
    //   110: getstatic 190	ads:c	Laec;
    //   113: astore 9
    //   115: aload 9
    //   117: monitorenter
    //   118: getstatic 190	ads:c	Laec;
    //   121: aload_1
    //   122: iconst_0
    //   123: invokevirtual 701	aec:a	(Landroid/net/Uri;Z)V
    //   126: getstatic 190	ads:c	Laec;
    //   129: invokevirtual 704	java/lang/Object:notifyAll	()V
    //   132: aload 9
    //   134: monitorexit
    //   135: aload 10
    //   137: athrow
    //   138: astore_1
    //   139: aload 9
    //   141: monitorexit
    //   142: aload_1
    //   143: athrow
    //   144: getstatic 190	ads:c	Laec;
    //   147: aload_1
    //   148: iconst_1
    //   149: invokevirtual 701	aec:a	(Landroid/net/Uri;Z)V
    //   152: aload 9
    //   154: monitorexit
    //   155: aload_0
    //   156: getfield 203	ads:r	Landroid/content/ContentResolver;
    //   159: aload_1
    //   160: getstatic 101	ads:a	[Ljava/lang/String;
    //   163: aconst_null
    //   164: aconst_null
    //   165: aconst_null
    //   166: invokestatic 466	aal:a	(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   169: astore 9
    //   171: new 492	adp
    //   174: dup
    //   175: invokespecial 707	adp:<init>	()V
    //   178: astore 10
    //   180: aload_1
    //   181: invokestatic 713	android/content/ContentUris:parseId	(Landroid/net/Uri;)J
    //   184: lstore 5
    //   186: aload 9
    //   188: ifnull +24 -> 212
    //   191: aload 9
    //   193: invokeinterface 381 1 0
    //   198: iconst_1
    //   199: if_icmpne +13 -> 212
    //   202: aload 9
    //   204: invokeinterface 385 1 0
    //   209: ifne +66 -> 275
    //   212: aload_1
    //   213: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   216: astore 10
    //   218: new 333	adc
    //   221: dup
    //   222: new 235	java/lang/StringBuilder
    //   225: dup
    //   226: aload 10
    //   228: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   231: invokevirtual 516	java/lang/String:length	()I
    //   234: bipush 9
    //   236: iadd
    //   237: invokespecial 238	java/lang/StringBuilder:<init>	(I)V
    //   240: ldc_w 715
    //   243: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: aload 10
    //   248: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: invokevirtual 253	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   254: invokespecial 338	adc:<init>	(Ljava/lang/String;)V
    //   257: athrow
    //   258: astore 10
    //   260: aload 9
    //   262: ifnull +10 -> 272
    //   265: aload 9
    //   267: invokeinterface 395 1 0
    //   272: aload 10
    //   274: athrow
    //   275: aload 9
    //   277: iconst_1
    //   278: invokeinterface 479 2 0
    //   283: istore_2
    //   284: aload 9
    //   286: iconst_2
    //   287: invokeinterface 632 2 0
    //   292: lstore 7
    //   294: aload 9
    //   296: aload 10
    //   298: invokestatic 717	ads:a	(Landroid/database/Cursor;Ladp;)V
    //   301: aload 9
    //   303: ifnull +10 -> 313
    //   306: aload 9
    //   308: invokeinterface 395 1 0
    //   313: lload 5
    //   315: ldc2_w 718
    //   318: lcmp
    //   319: ifne +14 -> 333
    //   322: new 333	adc
    //   325: dup
    //   326: ldc_w 721
    //   329: invokespecial 338	adc:<init>	(Ljava/lang/String;)V
    //   332: athrow
    //   333: aload_0
    //   334: lload 5
    //   336: aload 10
    //   338: invokespecial 723	ads:a	(JLadp;)V
    //   341: aload 10
    //   343: sipush 140
    //   346: invokevirtual 725	adp:a	(I)I
    //   349: istore_3
    //   350: aload_0
    //   351: lload 5
    //   353: iload_3
    //   354: invokespecial 727	ads:a	(JI)Ladj;
    //   357: astore 9
    //   359: iload_3
    //   360: tableswitch	default:+397->757, 128:+263->623, 129:+324->684, 130:+149->509, 131:+294->654, 132:+247->607, 133:+279->639, 134:+218->578, 135:+309->669, 136:+233->593, 137:+324->684, 138:+324->684, 139:+324->684, 140:+324->684, 141:+324->684, 142:+324->684, 143:+324->684, 144:+324->684, 145:+324->684, 146:+324->684, 147:+324->684, 148:+324->684, 149:+324->684, 150:+324->684, 151:+324->684
    //   472: iload_3
    //   473: invokestatic 730	java/lang/Integer:toHexString	(I)Ljava/lang/String;
    //   476: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   479: astore 9
    //   481: aload 9
    //   483: invokevirtual 516	java/lang/String:length	()I
    //   486: ifeq +250 -> 736
    //   489: ldc_w 732
    //   492: aload 9
    //   494: invokevirtual 522	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   497: astore 9
    //   499: new 333	adc
    //   502: dup
    //   503: aload 9
    //   505: invokespecial 338	adc:<init>	(Ljava/lang/String;)V
    //   508: athrow
    //   509: new 734	adi
    //   512: dup
    //   513: aload 10
    //   515: invokespecial 737	adi:<init>	(Ladp;)V
    //   518: astore 9
    //   520: getstatic 190	ads:c	Laec;
    //   523: astore 10
    //   525: aload 10
    //   527: monitorenter
    //   528: new 695	aed
    //   531: dup
    //   532: aload 9
    //   534: iload_2
    //   535: lload 7
    //   537: invokespecial 740	aed:<init>	(Ladg;IJ)V
    //   540: astore 11
    //   542: getstatic 190	ads:c	Laec;
    //   545: aload_1
    //   546: aload 11
    //   548: invokevirtual 743	aec:a	(Landroid/net/Uri;Laed;)Z
    //   551: pop
    //   552: getstatic 190	ads:c	Laec;
    //   555: aload_1
    //   556: iconst_0
    //   557: invokevirtual 701	aec:a	(Landroid/net/Uri;Z)V
    //   560: getstatic 190	ads:c	Laec;
    //   563: invokevirtual 704	java/lang/Object:notifyAll	()V
    //   566: aload 10
    //   568: monitorexit
    //   569: aload 9
    //   571: areturn
    //   572: astore_1
    //   573: aload 10
    //   575: monitorexit
    //   576: aload_1
    //   577: athrow
    //   578: new 745	adg
    //   581: dup
    //   582: aload 10
    //   584: iconst_0
    //   585: invokespecial 748	adg:<init>	(Ladp;C)V
    //   588: astore 9
    //   590: goto -70 -> 520
    //   593: new 750	adv
    //   596: dup
    //   597: aload 10
    //   599: invokespecial 751	adv:<init>	(Ladp;)V
    //   602: astore 9
    //   604: goto -84 -> 520
    //   607: new 753	adw
    //   610: dup
    //   611: aload 10
    //   613: aload 9
    //   615: invokespecial 756	adw:<init>	(Ladp;Ladj;)V
    //   618: astore 9
    //   620: goto -100 -> 520
    //   623: new 758	ady
    //   626: dup
    //   627: aload 10
    //   629: aload 9
    //   631: invokespecial 759	ady:<init>	(Ladp;Ladj;)V
    //   634: astore 9
    //   636: goto -116 -> 520
    //   639: new 745	adg
    //   642: dup
    //   643: aload 10
    //   645: iconst_0
    //   646: invokespecial 762	adg:<init>	(Ladp;B)V
    //   649: astore 9
    //   651: goto -131 -> 520
    //   654: new 745	adg
    //   657: dup
    //   658: aload 10
    //   660: iconst_0
    //   661: invokespecial 765	adg:<init>	(Ladp;S)V
    //   664: astore 9
    //   666: goto -146 -> 520
    //   669: new 745	adg
    //   672: dup
    //   673: aload 10
    //   675: iconst_0
    //   676: invokespecial 768	adg:<init>	(Ladp;I)V
    //   679: astore 9
    //   681: goto -161 -> 520
    //   684: iload_3
    //   685: invokestatic 730	java/lang/Integer:toHexString	(I)Ljava/lang/String;
    //   688: invokestatic 513	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   691: astore 9
    //   693: aload 9
    //   695: invokevirtual 516	java/lang/String:length	()I
    //   698: ifeq +23 -> 721
    //   701: ldc_w 770
    //   704: aload 9
    //   706: invokevirtual 522	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   709: astore 9
    //   711: new 333	adc
    //   714: dup
    //   715: aload 9
    //   717: invokespecial 338	adc:<init>	(Ljava/lang/String;)V
    //   720: athrow
    //   721: new 41	java/lang/String
    //   724: dup
    //   725: ldc_w 770
    //   728: invokespecial 549	java/lang/String:<init>	(Ljava/lang/String;)V
    //   731: astore 9
    //   733: goto -22 -> 711
    //   736: new 41	java/lang/String
    //   739: dup
    //   740: ldc_w 732
    //   743: invokespecial 549	java/lang/String:<init>	(Ljava/lang/String;)V
    //   746: astore 9
    //   748: goto -249 -> 499
    //   751: astore_1
    //   752: aload 9
    //   754: monitorexit
    //   755: aload_1
    //   756: athrow
    //   757: goto -285 -> 472
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	760	0	this	ads
    //   0	760	1	paramUri	Uri
    //   283	252	2	i1	int
    //   349	336	3	i2	int
    //   15	3	4	bool	boolean
    //   184	168	5	l1	long
    //   292	244	7	l2	long
    //   38	43	10	localObject2	Object
    //   83	9	10	localInterruptedException	InterruptedException
    //   100	6	10	localObject3	Object
    //   108	28	10	localObject4	Object
    //   178	69	10	localObject5	Object
    //   258	256	10	localadp	adp
    //   540	7	11	localaed	aed
    // Exception table:
    //   from	to	target	type
    //   22	28	83	java/lang/InterruptedException
    //   8	17	100	finally
    //   22	28	100	finally
    //   28	40	100	finally
    //   45	55	100	finally
    //   85	97	100	finally
    //   102	105	100	finally
    //   144	155	100	finally
    //   0	8	108	finally
    //   105	108	108	finally
    //   155	186	108	finally
    //   265	272	108	finally
    //   272	275	108	finally
    //   306	313	108	finally
    //   322	333	108	finally
    //   333	359	108	finally
    //   472	499	108	finally
    //   499	509	108	finally
    //   509	520	108	finally
    //   578	590	108	finally
    //   593	604	108	finally
    //   607	620	108	finally
    //   623	636	108	finally
    //   639	651	108	finally
    //   654	666	108	finally
    //   669	681	108	finally
    //   684	711	108	finally
    //   711	721	108	finally
    //   721	733	108	finally
    //   736	748	108	finally
    //   63	80	138	finally
    //   139	142	138	finally
    //   191	212	258	finally
    //   212	258	258	finally
    //   275	301	258	finally
    //   528	569	572	finally
    //   573	576	572	finally
    //   118	135	751	finally
    //   752	755	751	finally
  }
  
  public adg a(Uri paramUri)
  {
    return b(paramUri);
  }
  
  public Uri a(boolean paramBoolean)
  {
    Uri localUri;
    boolean bool;
    return a(paramBoolean, localUri, true, bool, null, null);
  }
  
  public Uri a(adg paramadg, Uri paramUri, boolean paramBoolean1, boolean paramBoolean2, Map<Uri, InputStream> arg5, adt paramadt)
  {
    if (paramUri == null) {
      throw new adc("Uri may not be null.");
    }
    long l1 = -1L;
    try
    {
      l2 = ContentUris.parseId(paramUri);
      l1 = l2;
    }
    catch (NumberFormatException ???)
    {
      long l2;
      int i2;
      adp localadp;
      ContentValues localContentValues;
      int i1;
      int i3;
      SparseArray localSparseArray;
      int[] arrayOfInt;
      int i4;
      adf localadf;
      for (;;) {}
    }
    if (l1 != -1L) {}
    for (i2 = 1; (i2 == 0) && (f.get(paramUri) == null); i2 = 0) {
      throw new adc("Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp.");
    }
    synchronized (c)
    {
      paramBoolean1 = c.a(paramUri);
      if (paramBoolean1) {}
      try
      {
        c.wait();
        c.b(paramUri);
        localadp = paramadg.a();
        localContentValues = new ContentValues();
        i1 = m.size();
        for (;;)
        {
          i1 -= 1;
          if (i1 < 0) {
            break;
          }
          i3 = m.keyAt(i1);
          ??? = localadp.c(i3);
          if (??? != null)
          {
            String str = (String)l.get(i3);
            localContentValues.put((String)m.valueAt(i1), a(???.b()));
            localContentValues.put(str, Integer.valueOf(???.a()));
          }
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          Log.e("PduPersister", "persist1: ", localInterruptedException);
        }
      }
    }
    i1 = n.size();
    for (;;)
    {
      i1 -= 1;
      if (i1 < 0) {
        break;
      }
      ??? = localadp.b(n.keyAt(i1));
      if (??? != null) {
        localContentValues.put((String)n.valueAt(i1), a(???));
      }
    }
    i1 = o.size();
    for (;;)
    {
      i1 -= 1;
      if (i1 < 0) {
        break;
      }
      i3 = localadp.a(o.keyAt(i1));
      if (i3 != 0) {
        localContentValues.put((String)o.valueAt(i1), Integer.valueOf(i3));
      }
    }
    i1 = p.size();
    for (;;)
    {
      i1 -= 1;
      if (i1 < 0) {
        break;
      }
      l2 = localadp.e(p.keyAt(i1));
      if (l2 != -1L) {
        localContentValues.put((String)p.valueAt(i1), Long.valueOf(l2));
      }
    }
    localSparseArray = new SparseArray(d.length);
    arrayOfInt = d;
    i3 = arrayOfInt.length;
    i1 = 0;
    if (i1 < i3)
    {
      i4 = arrayOfInt[i1];
      ??? = null;
      if (i4 == 137)
      {
        localadf = localadp.c(i4);
        if (localadf != null)
        {
          ??? = new adf[1];
          ???[0] = localadf;
        }
      }
      for (;;)
      {
        localSparseArray.put(i4, ???);
        i1 += 1;
        break;
        ??? = localadp.d(i4);
      }
    }
    ??? = new HashSet();
    i1 = paramadg.b();
    if ((i1 == 130) || (i1 == 132) || (i1 == 128)) {
      switch (i1)
      {
      }
    }
    for (;;)
    {
      l2 = -1L;
      if (!???.isEmpty()) {
        l2 = aef.a(q, ???);
      }
      localContentValues.put("thread_id", Long.valueOf(l2));
      if (paramadt != null) {
        paramadt.a(l2);
      }
      l2 = System.currentTimeMillis();
      i3 = 1;
      i1 = 1;
      i4 = i3;
      if (!(paramadg instanceof adh)) {
        break;
      }
      paramadg = ((adh)paramadg).d();
      i4 = i3;
      if (paramadg == null) {
        break;
      }
      int i5 = paramadg.b();
      if (i5 > 2) {
        i1 = 0;
      }
      i3 = 0;
      for (;;)
      {
        i4 = i1;
        if (i3 >= i5) {
          break;
        }
        ??? = paramadg.a(i3);
        a(???, l2, null);
        ??? = a(???);
        i4 = i1;
        if (??? != null)
        {
          i4 = i1;
          if (!"application/smil".equals(???))
          {
            i4 = i1;
            if (!"text/plain".equals(???)) {
              i4 = 0;
            }
          }
        }
        i3 += 1;
        i1 = i4;
      }
      a(137, ???, localSparseArray, false);
      if (paramBoolean2)
      {
        a(151, ???, localSparseArray, true);
        a(130, ???, localSparseArray, true);
        continue;
        a(151, ???, localSparseArray, false);
      }
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      if (i4 != 0)
      {
        i1 = 1;
        localContentValues.put("text_only", Integer.valueOf(i1));
      }
    }
    else
    {
      if (i2 == 0) {
        break label1103;
      }
      aal.a(r, paramUri, localContentValues);
      paramadg = paramUri;
      label925:
      ??? = new ContentValues(1);
      ???.put("mid", Long.valueOf(l1));
      aal.a(r, Uri.parse(39 + "content://mms/" + l2 + "/part"), ???);
      if (i2 != 0) {
        break label1145;
      }
      paramadg = String.valueOf(paramUri);
      paramadg = Uri.parse(String.valueOf(paramadg).length() + 21 + paramadg + "/" + l1);
    }
    label1103:
    label1145:
    for (;;)
    {
      paramUri = d;
      i2 = paramUri.length;
      i1 = 0;
      for (;;)
      {
        if (i1 < i2)
        {
          i3 = paramUri[i1];
          ??? = (adf[])localSparseArray.get(i3);
          if (??? != null) {
            a(l1, i3, ???);
          }
          i1 += 1;
          continue;
          i1 = 0;
          break;
          paramadg = aal.b(r, paramUri, localContentValues);
          if (paramadg == null) {
            throw new adc("persist() failed: return null.");
          }
          l1 = ContentUris.parseId(paramadg);
          break label925;
        }
      }
      return paramadg;
    }
  }
}

/* Location:
 * Qualified Name:     ads
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */