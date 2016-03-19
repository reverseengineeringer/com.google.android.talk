import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.provider.Telephony.Mms;
import android.provider.Telephony.Sms;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class eny
{
  private static final ScheduledExecutorService B;
  private static final String[] C;
  private static List<String> D;
  static final boolean a;
  static final String b;
  static final String c;
  static final String d;
  static volatile long e;
  static final Uri f;
  static final Uri g;
  private static volatile int i;
  private static volatile int j;
  private static volatile int k;
  private static volatile long l;
  private static volatile long m;
  private static volatile int n;
  private static volatile int o;
  private static eyf[] p;
  private static final Map<String, List<eoj>> q;
  private final boolean A;
  volatile boolean h;
  private final Context r = aal.oJ;
  private final bfd s;
  private final bfz t;
  private final hu<String> u;
  private final hu<List<String>> v;
  private final hq<String, eoc> w;
  private final long x;
  private boolean y;
  private boolean z;
  
  static
  {
    Object localObject = ezi.r;
    a = false;
    b = String.format(Locale.US, "(%s IN (%d, %d))", new Object[] { "type", Integer.valueOf(1), Integer.valueOf(2) });
    c = String.format(Locale.US, "((%s IN (%d, %d)) AND (%s IN (%d, %d)))", new Object[] { "msg_box", Integer.valueOf(1), Integer.valueOf(2), "m_type", Integer.valueOf(128), Integer.valueOf(132) });
    d = String.format(Locale.US, "((%s=%d) AND (%s=%d OR %s=%d) AND (%s=%d))", new Object[] { "transport_type", Integer.valueOf(3), "sms_type", Integer.valueOf(0), "sms_type", Integer.valueOf(1), "status", Integer.valueOf(emc.e.ordinal()) });
    aal.a(new enz());
    if (Build.VERSION.SDK_INT >= 19)
    {
      localObject = Telephony.Mms.CONTENT_URI;
      f = (Uri)localObject;
      if (Build.VERSION.SDK_INT < 19) {
        break label282;
      }
    }
    label282:
    for (localObject = Telephony.Sms.CONTENT_URI;; localObject = Uri.parse("content://sms"))
    {
      g = (Uri)localObject;
      p = new eyf[] { new eyf(), new eyf() };
      q = new HashMap();
      B = Executors.newSingleThreadScheduledExecutor();
      C = new String[] { "count()" };
      D = null;
      return;
      localObject = Uri.parse("content://mms");
      break;
    }
  }
  
  eny(bfz parambfz, long paramLong, boolean paramBoolean)
  {
    t = parambfz;
    s = parambfz.g();
    x = paramLong;
    h = false;
    A = paramBoolean;
    u = new hu();
    v = new hu();
    w = new hq();
  }
  
  private static int a(Cursor paramCursor)
  {
    int i2 = 0;
    if (paramCursor != null) {}
    try
    {
      if (paramCursor.moveToFirst())
      {
        int i1 = paramCursor.getInt(0);
        i2 = i1;
        if (paramCursor != null)
        {
          paramCursor.close();
          i2 = i1;
        }
        return i2;
      }
      return 0;
    }
    finally
    {
      if (paramCursor != null) {
        paramCursor.close();
      }
    }
  }
  
  private int a(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    int i3 = paramArrayOfString.length;
    int i1 = 0;
    int i2 = 0;
    while (i1 < i3)
    {
      int i4 = Math.min(i1 + 128, i3);
      String str = String.format(Locale.US, "%s IN %s", new Object[] { paramString2, enn.a(i4 - i1) });
      String[] arrayOfString = (String[])Arrays.copyOfRange(paramArrayOfString, i1, i4);
      i2 += t.e().a(paramString1, str, arrayOfString);
      i1 += 128;
    }
    return i2;
  }
  
  static long a(Uri paramUri)
  {
    if (paramUri != null) {}
    try
    {
      long l1 = ContentUris.parseId(paramUri);
      return l1;
    }
    catch (UnsupportedOperationException paramUri)
    {
      return -1L;
    }
    catch (NumberFormatException paramUri)
    {
      for (;;) {}
    }
  }
  
  private long a(emu paramemu)
  {
    int i1;
    if (w.size() <= 0)
    {
      i1 = s.g();
      ezi.d("Babel_SMS", 53 + "SmsSyncManager A#" + i1 + ": MMS message has no part", new Object[0]);
    }
    Object localObject4 = a(r);
    if ((localObject4 == null) || (((List)localObject4).size() <= 0))
    {
      i1 = s.g();
      ezi.e("Babel_SMS", 58 + "SmsSyncManager A#" + i1 + ": MMS message has no recipient", new Object[0]);
      return -1L;
    }
    if (c(1, m)) {
      return -1L;
    }
    if (n != 1)
    {
      i1 = 1;
      if (i1 != 0) {
        break label1208;
      }
    }
    label329:
    label940:
    label979:
    label1208:
    for (Object localObject1 = enn.a(a(r), m);; localObject1 = null)
    {
      czb localczb = null;
      if (i1 != 0) {
        if (s != null) {
          localczb = s.b();
        }
      }
      int i2;
      for (;;)
      {
        if (localczb != null) {
          break label329;
        }
        i1 = s.g();
        l1 = m;
        i2 = n;
        long l2 = r;
        ezi.e("Babel_SMS", 124 + "SmsSyncManager A#" + i1 + ": found MMS has no From: id=" + l1 + " type=" + i2 + " thread_id=" + l2, new Object[0]);
        return -1L;
        i1 = 0;
        break;
        localczb = null;
        continue;
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          localczb = aal.l((String)localObject1);
        }
      }
      boolean bool = bft.a(localczb);
      long l1 = r;
      if (bool) {}
      String str1;
      for (Object localObject2 = localczb;; localObject2 = null)
      {
        str1 = a(l1, (czb)localObject2);
        if (str1 != null) {
          break;
        }
        i1 = s.g();
        l1 = r;
        ezi.e("Babel_SMS", 95 + "SmsSyncManager A#" + i1 + ": failed to create conversation for mms thread " + l1, new Object[0]);
        return -1L;
      }
      String str2 = bfz.i();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("message_id", str2);
      localContentValues.put("conversation_id", str1);
      localContentValues.put("transport_type", Integer.valueOf(3));
      Object localObject3;
      if (i1 != 0)
      {
        i2 = emd.b.ordinal();
        localContentValues.put("type", Integer.valueOf(i2));
        localContentValues.put("author_chat_id", b);
        localContentValues.put("author_gaia_id", a);
        localObject3 = paramemu.e();
        localObject2 = localObject3;
        if (localObject3 != null)
        {
          localObject2 = localObject3;
          if (((String)localObject3).length() > o) {
            localObject2 = ((String)localObject3).substring(0, o);
          }
        }
        localContentValues.put("text", (String)localObject2);
        localContentValues.put("local_url", paramemu.f());
        localContentValues.put("attachment_content_type", paramemu.g());
        localContentValues.put("width_pixels", Integer.valueOf(0));
        localContentValues.put("height_pixels", Integer.valueOf(0));
        localContentValues.put("status", Integer.valueOf(emc.e.ordinal()));
        localContentValues.put("timestamp", Long.valueOf(q));
        localContentValues.put("notification_level", Integer.valueOf(-1));
        localContentValues.put("expiration_timestamp", Long.valueOf(Long.MAX_VALUE));
        localObject3 = String.valueOf(f);
        l1 = m;
        localContentValues.put("external_ids", aal.a(new String[] { Uri.parse(String.valueOf(localObject3).length() + 21 + (String)localObject3 + "/" + l1).toString() }));
        if (i1 == 0) {
          break label940;
        }
        localContentValues.put("sms_raw_recipients", TextUtils.join(",", (Iterable)localObject4));
      }
      for (;;)
      {
        localContentValues.put("sms_priority", Integer.valueOf(s));
        localContentValues.put("mms_subject", o);
        localContentValues.put("sms_message_status", Integer.valueOf(-1));
        localContentValues.put("sms_type", Integer.valueOf(1));
        localContentValues.put("sms_message_size", Long.valueOf(paramemu.h()));
        localContentValues.put("persisted", Boolean.valueOf(true));
        l1 = t.e().a("messages", localContentValues);
        if (l1 != -1L) {
          break label979;
        }
        i1 = s.g();
        ezi.e("Babel_SMS", 65 + "SmsSyncManager A#" + i1 + ": failed to insert message into table", new Object[0]);
        return -1L;
        i2 = emd.c.ordinal();
        break;
        localContentValues.put("sms_raw_sender", (String)localObject1);
        if (((List)localObject4).size() > 1) {
          localContentValues.put("sms_raw_recipients", enn.a((List)localObject4, (String)localObject1));
        }
      }
      if (paramemu.k() > 1)
      {
        localObject1 = paramemu.d().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject3 = (emv)((Iterator)localObject1).next();
          if (((emv)localObject3).b())
          {
            localObject4 = new bgp();
            a = str1;
            b = str2;
            c = ((emv)localObject3).d().toString();
            d = i;
            e = 0;
            f = 0;
            t.a((bgp)localObject4);
          }
        }
      }
      z |= v;
      i1 = 2;
      if ((paramemu.j() <= 1) && (paramemu.k() == 1) && (aal.b(paramemu.g()))) {}
      for (i1 = 3;; i1 = 9) {
        do
        {
          a(str1, localczb, (String)localObject2, paramemu.f(), q, l1, i1, paramemu.g(), 1, u, r);
          return l1;
        } while ((w.size() <= 1) && (!aen.a(paramemu.g())));
      }
    }
  }
  
  static Uri a(String paramString)
  {
    paramString = aal.g(paramString);
    if ((!TextUtils.isEmpty(paramString)) && (paramString.startsWith("content://"))) {
      return Uri.parse(paramString);
    }
    return null;
  }
  
  private String a(long paramLong, czb paramczb)
  {
    boolean bool = false;
    Object localObject1 = null;
    Object localObject2 = (String)u.a(paramLong);
    if (localObject2 != null)
    {
      paramczb = (czb)localObject2;
      return paramczb;
    }
    Object localObject3 = a(paramLong);
    if ((localObject3 == null) || (((List)localObject3).size() <= 0))
    {
      i1 = s.g();
      ezi.e("Babel_SMS", 89 + "SmsSyncManager A#" + i1 + ": could not find recipients for threadId " + paramLong, new Object[0]);
      return null;
    }
    localObject2 = new ArrayList();
    Iterator localIterator = ((List)localObject3).iterator();
    while (localIterator.hasNext())
    {
      Object localObject4 = (String)localIterator.next();
      localObject4 = aal.a(aal.oJ, (String)localObject4, null, null);
      if ((paramczb != null) && (paramczb.a(b))) {
        i = Boolean.TRUE;
      }
      ((ArrayList)localObject2).add(localObject4);
    }
    if (((List)localObject3).size() > 1) {}
    for (int i1 = 2;; i1 = 1)
    {
      localObject3 = t;
      if (paramczb != null) {
        bool = true;
      }
      localObject2 = bft.b((bfz)localObject3, bool, null, (List)localObject2, null, null, bfw.b, i1, 3, true, null, null);
      paramczb = (czb)localObject1;
      if (localObject2 == null) {
        break;
      }
      u.a(paramLong, localObject2);
      return (String)localObject2;
    }
  }
  
  private List<String> a(long paramLong)
  {
    Object localObject2 = (List)v.a(paramLong);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = enn.a(paramLong);
      localObject1 = localObject2;
      if (localObject2 != null)
      {
        localObject1 = localObject2;
        if (((List)localObject2).size() > 0)
        {
          v.a(paramLong, localObject2);
          localObject1 = localObject2;
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null)
    {
      if (D == null)
      {
        localObject1 = new ArrayList();
        D = (List)localObject1;
        ((List)localObject1).add(gc);
      }
      localObject2 = D;
    }
    return (List<String>)localObject2;
  }
  
  static void a()
  {
    i = aal.a(aal.oJ, "babel_sms_sync_first_batch_size", 100);
    j = aal.a(aal.oJ, "babel_sms_sync_subsequent_batch_size_min", 100);
    k = aal.a(aal.oJ, "babel_sms_sync_subsequent_batch_size_max", 1000);
    l = aal.a(aal.oJ, "babel_sms_sync_subsequent_batch_time_limit", 2000L);
    m = aal.a(aal.oJ, "babel_sms_incremental_sync_batch_interval_in_millis", 1000L);
    n = aal.a(aal.oJ, "babel_sms_sync_batch_max_messages_to_scan", 2000);
    e = aal.a(aal.oJ, "babel_sms_full_sync_backoff_time_millis", 3600000L);
    o = aal.a(aal.oJ, "babel_mms_text_limit", 2000);
  }
  
  public static void a(int paramInt, long paramLong)
  {
    hbs.a(paramInt, 0, 1);
    eyf[] arrayOfeyf = p;
    if (paramLong >= 0L) {}
    try
    {
      p[paramInt].b(paramLong);
      return;
    }
    finally {}
  }
  
  public static void a(bfd parambfd)
  {
    hbs.b("Expected non-null", parambfd);
    if (!parambfd.e()) {
      return;
    }
    if (a)
    {
      int i1 = parambfd.g();
      new StringBuilder(47).append("SmsSyncManager A#").append(i1).append(": scheduled cleanse");
    }
    B.execute(new eob(parambfd));
  }
  
  public static void a(bfd parambfd, boolean paramBoolean, long paramLong)
  {
    hbs.b("Expected non-null", parambfd);
    if (!parambfd.e()) {
      return;
    }
    Object localObject = parambfd.a();
    localObject = (List)q.get(localObject);
    int i1;
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        if (nexta) {
          i1 = 1;
        }
      }
    }
    while (i1 == 0)
    {
      eoj localeoj;
      String str;
      if (a)
      {
        i1 = parambfd.g();
        if (paramBoolean)
        {
          localObject = " full";
          new StringBuilder(String.valueOf(localObject).length() + 81).append("SmsSyncManager A#").append(i1).append(": scheduled").append((String)localObject).append(" sync in ").append(paramLong).append(" milliseconds");
        }
      }
      else
      {
        localeoj = new eoj(parambfd, paramBoolean);
        str = parambfd.a();
      }
      synchronized (q)
      {
        List localList = (List)q.get(str);
        localObject = localList;
        if (localList == null)
        {
          localObject = new ArrayList();
          q.put(str, localObject);
        }
        ((List)localObject).add(localeoj);
        b(parambfd.a());
        B.schedule(localeoj, paramLong, TimeUnit.MILLISECONDS);
        return;
        i1 = 0;
        continue;
        localObject = "";
      }
    }
  }
  
  private void a(hu<emu> paramhu)
  {
    int i3 = paramhu.a();
    int i1 = 0;
    while (i1 < i3)
    {
      int i4 = Math.min(i1 + 128, i3) - i1;
      Object localObject1 = String.format(Locale.US, "%s != '%s' AND %s IN %s", new Object[] { "ct", "application/smil", "mid", enn.a(i4) });
      Object localObject2 = new String[i4];
      int i2 = 0;
      while (i2 < i4)
      {
        localObject2[i2] = Long.toString(bm);
        i2 += 1;
      }
      localObject1 = aal.a(r.getContentResolver(), enn.c, emv.a, (String)localObject1, (String[])localObject2, null);
      if (localObject1 != null) {
        try
        {
          while (((Cursor)localObject1).moveToNext())
          {
            localObject2 = emv.a((Cursor)localObject1, false);
            emu localemu = (emu)paramhu.a(h);
            if (localemu != null) {
              localemu.a((emv)localObject2);
            }
          }
        }
        finally
        {
          ((Cursor)localObject1).close();
        }
      }
      i1 += 128;
    }
  }
  
  private void a(String paramString1, czb paramczb, String paramString2, String paramString3, long paramLong1, long paramLong2, int paramInt1, String paramString4, int paramInt2, boolean paramBoolean, long paramLong3)
  {
    eoc localeoc2 = (eoc)w.get(paramString1);
    eoc localeoc1 = localeoc2;
    if (localeoc2 == null)
    {
      localeoc1 = new eoc();
      w.put(paramString1, localeoc1);
    }
    if (paramLong1 >= c) {
      localeoc1.a(paramczb, paramString2, paramString3, paramLong1, paramLong2, paramInt1, paramString4, paramInt2, paramLong3);
    }
    if ((paramBoolean) && (paramLong1 >= i)) {
      localeoc1.a(paramLong1);
    }
  }
  
  static void a(String paramString, eoj parameoj)
  {
    synchronized (q)
    {
      paramString = (List)q.get(paramString);
      if (paramString != null) {
        paramString.remove(parameoj);
      }
      return;
    }
  }
  
  private static void a(List<emw> paramList, hu<emu> paramhu, ems paramems)
  {
    if (paramems.a() == 1)
    {
      paramhu.b(paramems.b(), (emu)paramems);
      return;
    }
    paramList.add((emw)paramems);
  }
  
  /* Error */
  private boolean a(int paramInt, long paramLong, eoi parameoi)
  {
    // Byte code:
    //   0: ldc_w 653
    //   3: aload 4
    //   5: invokestatic 656	hbs:b	(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    //   8: pop
    //   9: aload 4
    //   11: invokevirtual 789	eoi:a	()V
    //   14: getstatic 63	eny:a	Z
    //   17: ifne +10 -> 27
    //   20: aload_0
    //   21: getfield 198	eny:A	Z
    //   24: ifeq +53 -> 77
    //   27: aload_0
    //   28: getfield 192	eny:s	Lbfd;
    //   31: invokevirtual 278	bfd:g	()I
    //   34: istore 5
    //   36: new 282	java/lang/StringBuilder
    //   39: dup
    //   40: bipush 99
    //   42: invokespecial 285	java/lang/StringBuilder:<init>	(I)V
    //   45: ldc_w 287
    //   48: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: iload 5
    //   53: invokevirtual 294	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   56: ldc_w 791
    //   59: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: iload_1
    //   63: invokevirtual 294	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   66: ldc_w 793
    //   69: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: lload_2
    //   73: invokevirtual 330	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   76: pop
    //   77: invokestatic 798	android/os/SystemClock:elapsedRealtime	()J
    //   80: lstore 11
    //   82: iconst_1
    //   83: istore 18
    //   85: iconst_0
    //   86: istore 5
    //   88: iconst_0
    //   89: istore 10
    //   91: iconst_0
    //   92: istore 6
    //   94: new 559	java/util/ArrayList
    //   97: dup
    //   98: invokespecial 560	java/util/ArrayList:<init>	()V
    //   101: astore 27
    //   103: new 200	hu
    //   106: dup
    //   107: invokespecial 201	hu:<init>	()V
    //   110: astore 25
    //   112: new 559	java/util/ArrayList
    //   115: dup
    //   116: invokespecial 560	java/util/ArrayList:<init>	()V
    //   119: astore 26
    //   121: new 800	java/util/HashSet
    //   124: dup
    //   125: invokespecial 801	java/util/HashSet:<init>	()V
    //   128: astore 28
    //   130: new 800	java/util/HashSet
    //   133: dup
    //   134: invokespecial 801	java/util/HashSet:<init>	()V
    //   137: astore 29
    //   139: new 803	eoe
    //   142: dup
    //   143: aload_0
    //   144: getfield 185	eny:t	Lbfz;
    //   147: aload_0
    //   148: getfield 194	eny:x	J
    //   151: lload_2
    //   152: invokespecial 806	eoe:<init>	(Lbfz;JJ)V
    //   155: astore 19
    //   157: new 808	eoh
    //   160: dup
    //   161: aload_0
    //   162: getfield 194	eny:x	J
    //   165: lload_2
    //   166: invokespecial 811	eoh:<init>	(JJ)V
    //   169: astore 22
    //   171: aload 22
    //   173: invokeinterface 816 1 0
    //   178: astore 21
    //   180: aload 19
    //   182: invokeinterface 816 1 0
    //   187: astore 20
    //   189: iconst_0
    //   190: istore 8
    //   192: iconst_0
    //   193: istore 7
    //   195: iload 18
    //   197: istore 17
    //   199: iload 7
    //   201: iload 8
    //   203: iadd
    //   204: getstatic 633	eny:n	I
    //   207: if_icmpge +29 -> 236
    //   210: iload 18
    //   212: istore 17
    //   214: iload 5
    //   216: iload 6
    //   218: iadd
    //   219: iload_1
    //   220: if_icmpge +16 -> 236
    //   223: aload 21
    //   225: ifnonnull +244 -> 469
    //   228: aload 20
    //   230: ifnonnull +239 -> 469
    //   233: iconst_0
    //   234: istore 17
    //   236: aload_0
    //   237: aload 25
    //   239: invokespecial 818	eny:a	(Lhu;)V
    //   242: aload 19
    //   244: invokeinterface 820 1 0
    //   249: aload 22
    //   251: invokeinterface 820 1 0
    //   256: invokestatic 798	android/os/SystemClock:elapsedRealtime	()J
    //   259: lstore 13
    //   261: aload_0
    //   262: getfield 185	eny:t	Lbfz;
    //   265: invokevirtual 821	bfz:a	()V
    //   268: aload 27
    //   270: invokeinterface 494 1 0
    //   275: astore 21
    //   277: iload 10
    //   279: istore_1
    //   280: aload 21
    //   282: invokeinterface 499 1 0
    //   287: ifeq +1964 -> 2251
    //   290: aload 21
    //   292: invokeinterface 503 1 0
    //   297: checkcast 781	emw
    //   300: astore 22
    //   302: aload 22
    //   304: getfield 823	emw:n	Ljava/lang/String;
    //   307: ifnonnull +59 -> 366
    //   310: aload_0
    //   311: getfield 192	eny:s	Lbfd;
    //   314: invokevirtual 278	bfd:g	()I
    //   317: istore 9
    //   319: ldc_w 280
    //   322: new 282	java/lang/StringBuilder
    //   325: dup
    //   326: bipush 45
    //   328: invokespecial 285	java/lang/StringBuilder:<init>	(I)V
    //   331: ldc_w 287
    //   334: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   337: iload 9
    //   339: invokevirtual 294	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   342: ldc_w 825
    //   345: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: invokevirtual 300	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   351: iconst_0
    //   352: anewarray 4	java/lang/Object
    //   355: invokestatic 303	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   358: aload 22
    //   360: ldc_w 711
    //   363: putfield 823	emw:n	Ljava/lang/String;
    //   366: aload 22
    //   368: getfield 827	emw:m	Ljava/lang/String;
    //   371: invokestatic 340	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   374: ifeq +62 -> 436
    //   377: aload_0
    //   378: getfield 192	eny:s	Lbfd;
    //   381: invokevirtual 278	bfd:g	()I
    //   384: istore 9
    //   386: ldc_w 280
    //   389: new 282	java/lang/StringBuilder
    //   392: dup
    //   393: bipush 48
    //   395: invokespecial 285	java/lang/StringBuilder:<init>	(I)V
    //   398: ldc_w 287
    //   401: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   404: iload 9
    //   406: invokevirtual 294	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   409: ldc_w 829
    //   412: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: invokevirtual 300	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   418: iconst_0
    //   419: anewarray 4	java/lang/Object
    //   422: invokestatic 303	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   425: aload 22
    //   427: invokestatic 597	enn:g	()Lcyx;
    //   430: getfield 598	cyx:c	Ljava/lang/String;
    //   433: putfield 827	emw:m	Ljava/lang/String;
    //   436: iconst_0
    //   437: aload 22
    //   439: getfield 831	emw:o	J
    //   442: invokestatic 317	eny:c	(IJ)Z
    //   445: istore 18
    //   447: iload 18
    //   449: ifeq +668 -> 1117
    //   452: ldc2_w 263
    //   455: lstore_2
    //   456: lload_2
    //   457: lconst_0
    //   458: lcmp
    //   459: ifle +1696 -> 2155
    //   462: iload_1
    //   463: iconst_1
    //   464: iadd
    //   465: istore_1
    //   466: goto -186 -> 280
    //   469: aload 21
    //   471: ifnonnull +8 -> 479
    //   474: aload 20
    //   476: ifnonnull +27 -> 503
    //   479: aload 20
    //   481: ifnull +1698 -> 2179
    //   484: aload 21
    //   486: ifnull +1693 -> 2179
    //   489: aload 20
    //   491: invokevirtual 833	ems:c	()J
    //   494: aload 21
    //   496: invokevirtual 833	ems:c	()J
    //   499: lcmp
    //   500: ifle +1679 -> 2179
    //   503: aload 26
    //   505: aload 20
    //   507: checkcast 835	eof
    //   510: invokeinterface 599 2 0
    //   515: pop
    //   516: aload 4
    //   518: aload 20
    //   520: invokevirtual 833	ems:c	()J
    //   523: invokevirtual 836	eoi:a	(J)V
    //   526: aload 19
    //   528: invokeinterface 816 1 0
    //   533: astore 20
    //   535: iload 6
    //   537: iconst_1
    //   538: iadd
    //   539: istore 6
    //   541: iload 7
    //   543: iconst_1
    //   544: iadd
    //   545: istore 7
    //   547: goto -352 -> 195
    //   550: aload 20
    //   552: ifnull +65 -> 617
    //   555: aload 21
    //   557: ifnull +60 -> 617
    //   560: aload 20
    //   562: invokevirtual 833	ems:c	()J
    //   565: aload 21
    //   567: invokevirtual 833	ems:c	()J
    //   570: lcmp
    //   571: ifge +46 -> 617
    //   574: aload 27
    //   576: aload 25
    //   578: aload 21
    //   580: invokestatic 838	eny:a	(Ljava/util/List;Lhu;Lems;)V
    //   583: aload 4
    //   585: aload 21
    //   587: invokevirtual 833	ems:c	()J
    //   590: invokevirtual 836	eoi:a	(J)V
    //   593: aload 22
    //   595: invokeinterface 816 1 0
    //   600: astore 21
    //   602: iload 5
    //   604: iconst_1
    //   605: iadd
    //   606: istore 5
    //   608: iload 8
    //   610: iconst_1
    //   611: iadd
    //   612: istore 8
    //   614: goto -419 -> 195
    //   617: aload 20
    //   619: invokevirtual 833	ems:c	()J
    //   622: lstore_2
    //   623: aload 4
    //   625: lload_2
    //   626: invokevirtual 836	eoi:a	(J)V
    //   629: aload 22
    //   631: invokeinterface 816 1 0
    //   636: astore 24
    //   638: aload 19
    //   640: invokeinterface 816 1 0
    //   645: astore 23
    //   647: aload 24
    //   649: ifnull +13 -> 662
    //   652: aload 24
    //   654: invokevirtual 833	ems:c	()J
    //   657: lload_2
    //   658: lcmp
    //   659: ifeq +73 -> 732
    //   662: aload 23
    //   664: ifnull +13 -> 677
    //   667: aload 23
    //   669: invokevirtual 833	ems:c	()J
    //   672: lload_2
    //   673: lcmp
    //   674: ifeq +58 -> 732
    //   677: aload 21
    //   679: aload 20
    //   681: invokevirtual 841	ems:equals	(Ljava/lang/Object;)Z
    //   684: ifne +1480 -> 2164
    //   687: aload 26
    //   689: aload 20
    //   691: checkcast 835	eof
    //   694: invokeinterface 599 2 0
    //   699: pop
    //   700: iload 6
    //   702: iconst_1
    //   703: iadd
    //   704: istore 6
    //   706: aload 27
    //   708: aload 25
    //   710: aload 21
    //   712: invokestatic 838	eny:a	(Ljava/util/List;Lhu;Lems;)V
    //   715: iload 5
    //   717: iconst_1
    //   718: iadd
    //   719: istore 9
    //   721: iload 6
    //   723: istore 5
    //   725: iload 9
    //   727: istore 6
    //   729: goto +1463 -> 2192
    //   732: aload 29
    //   734: invokeinterface 846 1 0
    //   739: aload 29
    //   741: aload 21
    //   743: invokeinterface 847 2 0
    //   748: pop
    //   749: aload 24
    //   751: astore 21
    //   753: iload 8
    //   755: iconst_1
    //   756: iadd
    //   757: istore 8
    //   759: aload 21
    //   761: ifnull +41 -> 802
    //   764: aload 21
    //   766: invokevirtual 833	ems:c	()J
    //   769: lload_2
    //   770: lcmp
    //   771: ifne +31 -> 802
    //   774: aload 29
    //   776: aload 21
    //   778: invokeinterface 847 2 0
    //   783: pop
    //   784: aload 22
    //   786: invokeinterface 816 1 0
    //   791: astore 21
    //   793: iload 8
    //   795: iconst_1
    //   796: iadd
    //   797: istore 8
    //   799: goto -40 -> 759
    //   802: aload 28
    //   804: invokeinterface 846 1 0
    //   809: aload 28
    //   811: aload 20
    //   813: invokeinterface 847 2 0
    //   818: pop
    //   819: aload 23
    //   821: astore 20
    //   823: iload 7
    //   825: iconst_1
    //   826: iadd
    //   827: istore 7
    //   829: aload 20
    //   831: ifnull +41 -> 872
    //   834: aload 20
    //   836: invokevirtual 833	ems:c	()J
    //   839: lload_2
    //   840: lcmp
    //   841: ifne +31 -> 872
    //   844: aload 28
    //   846: aload 20
    //   848: invokeinterface 847 2 0
    //   853: pop
    //   854: aload 19
    //   856: invokeinterface 816 1 0
    //   861: astore 20
    //   863: iload 7
    //   865: iconst_1
    //   866: iadd
    //   867: istore 7
    //   869: goto -40 -> 829
    //   872: aload 28
    //   874: invokeinterface 848 1 0
    //   879: astore 23
    //   881: aload 23
    //   883: invokeinterface 499 1 0
    //   888: ifeq +49 -> 937
    //   891: aload 23
    //   893: invokeinterface 503 1 0
    //   898: checkcast 774	ems
    //   901: astore 24
    //   903: aload 29
    //   905: aload 24
    //   907: invokeinterface 851 2 0
    //   912: ifne +1249 -> 2161
    //   915: aload 26
    //   917: aload 24
    //   919: checkcast 835	eof
    //   922: invokeinterface 599 2 0
    //   927: pop
    //   928: iload 6
    //   930: iconst_1
    //   931: iadd
    //   932: istore 6
    //   934: goto +1293 -> 2227
    //   937: aload 29
    //   939: invokeinterface 848 1 0
    //   944: astore 23
    //   946: aload 23
    //   948: invokeinterface 499 1 0
    //   953: ifeq +45 -> 998
    //   956: aload 23
    //   958: invokeinterface 503 1 0
    //   963: checkcast 774	ems
    //   966: astore 24
    //   968: aload 28
    //   970: aload 24
    //   972: invokeinterface 851 2 0
    //   977: ifne +1181 -> 2158
    //   980: aload 27
    //   982: aload 25
    //   984: aload 24
    //   986: invokestatic 838	eny:a	(Ljava/util/List;Lhu;Lems;)V
    //   989: iload 5
    //   991: iconst_1
    //   992: iadd
    //   993: istore 5
    //   995: goto -49 -> 946
    //   998: goto -803 -> 195
    //   1001: astore 20
    //   1003: aconst_null
    //   1004: astore 19
    //   1006: aconst_null
    //   1007: astore 4
    //   1009: aload 20
    //   1011: invokestatic 430	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1014: astore 21
    //   1016: ldc_w 280
    //   1019: new 282	java/lang/StringBuilder
    //   1022: dup
    //   1023: aload 21
    //   1025: invokestatic 430	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1028: invokevirtual 389	java/lang/String:length	()I
    //   1031: bipush 47
    //   1033: iadd
    //   1034: invokespecial 285	java/lang/StringBuilder:<init>	(I)V
    //   1037: ldc_w 853
    //   1040: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1043: aload 21
    //   1045: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1048: invokevirtual 300	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1051: aload 20
    //   1053: invokestatic 856	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1056: aload 4
    //   1058: ifnull +10 -> 1068
    //   1061: aload 4
    //   1063: invokeinterface 820 1 0
    //   1068: aload 19
    //   1070: ifnull +10 -> 1080
    //   1073: aload 19
    //   1075: invokeinterface 820 1 0
    //   1080: iconst_0
    //   1081: ireturn
    //   1082: astore 19
    //   1084: aconst_null
    //   1085: astore 20
    //   1087: aconst_null
    //   1088: astore 4
    //   1090: aload 4
    //   1092: ifnull +10 -> 1102
    //   1095: aload 4
    //   1097: invokeinterface 820 1 0
    //   1102: aload 20
    //   1104: ifnull +10 -> 1114
    //   1107: aload 20
    //   1109: invokeinterface 820 1 0
    //   1114: aload 19
    //   1116: athrow
    //   1117: aload 22
    //   1119: getfield 858	emw:r	I
    //   1122: iconst_1
    //   1123: if_icmpeq +1110 -> 2233
    //   1126: iconst_1
    //   1127: istore 9
    //   1129: aconst_null
    //   1130: astore 19
    //   1132: iload 9
    //   1134: ifeq +128 -> 1262
    //   1137: aload_0
    //   1138: getfield 192	eny:s	Lbfd;
    //   1141: ifnull +1098 -> 2239
    //   1144: aload_0
    //   1145: getfield 192	eny:s	Lbfd;
    //   1148: invokevirtual 325	bfd:b	()Lczb;
    //   1151: astore 19
    //   1153: goto +1077 -> 2230
    //   1156: aload 19
    //   1158: ifnonnull +128 -> 1286
    //   1161: aload_0
    //   1162: getfield 192	eny:s	Lbfd;
    //   1165: invokevirtual 278	bfd:g	()I
    //   1168: istore 9
    //   1170: aload 22
    //   1172: getfield 831	emw:o	J
    //   1175: lstore_2
    //   1176: aload 22
    //   1178: getfield 858	emw:r	I
    //   1181: istore 10
    //   1183: aload 22
    //   1185: getfield 860	emw:s	J
    //   1188: lstore 15
    //   1190: ldc_w 280
    //   1193: new 282	java/lang/StringBuilder
    //   1196: dup
    //   1197: bipush 127
    //   1199: invokespecial 285	java/lang/StringBuilder:<init>	(I)V
    //   1202: ldc_w 287
    //   1205: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1208: iload 9
    //   1210: invokevirtual 294	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1213: ldc_w 862
    //   1216: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1219: lload_2
    //   1220: invokevirtual 330	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1223: ldc_w 332
    //   1226: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1229: iload 10
    //   1231: invokevirtual 294	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1234: ldc_w 334
    //   1237: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1240: lload 15
    //   1242: invokevirtual 330	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1245: invokevirtual 300	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1248: iconst_0
    //   1249: anewarray 4	java/lang/Object
    //   1252: invokestatic 312	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   1255: ldc2_w 263
    //   1258: lstore_2
    //   1259: goto -803 -> 456
    //   1262: aload 22
    //   1264: getfield 827	emw:m	Ljava/lang/String;
    //   1267: invokestatic 340	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1270: ifne -114 -> 1156
    //   1273: aload 22
    //   1275: getfield 827	emw:m	Ljava/lang/String;
    //   1278: invokestatic 343	aal:l	(Ljava/lang/String;)Lczb;
    //   1281: astore 19
    //   1283: goto -127 -> 1156
    //   1286: aload 19
    //   1288: invokestatic 348	bft:a	(Lczb;)Z
    //   1291: istore 18
    //   1293: aload 22
    //   1295: getfield 860	emw:s	J
    //   1298: lstore_2
    //   1299: iload 18
    //   1301: ifeq +944 -> 2245
    //   1304: aload 19
    //   1306: astore 20
    //   1308: aload_0
    //   1309: lload_2
    //   1310: aload 20
    //   1312: invokespecial 351	eny:a	(JLczb;)Ljava/lang/String;
    //   1315: astore 20
    //   1317: aload 20
    //   1319: ifnonnull +68 -> 1387
    //   1322: aload_0
    //   1323: getfield 192	eny:s	Lbfd;
    //   1326: invokevirtual 278	bfd:g	()I
    //   1329: istore 9
    //   1331: aload 22
    //   1333: getfield 860	emw:s	J
    //   1336: lstore_2
    //   1337: ldc_w 280
    //   1340: new 282	java/lang/StringBuilder
    //   1343: dup
    //   1344: bipush 95
    //   1346: invokespecial 285	java/lang/StringBuilder:<init>	(I)V
    //   1349: ldc_w 287
    //   1352: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1355: iload 9
    //   1357: invokevirtual 294	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1360: ldc_w 864
    //   1363: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1366: lload_2
    //   1367: invokevirtual 330	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1370: invokevirtual 300	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1373: iconst_0
    //   1374: anewarray 4	java/lang/Object
    //   1377: invokestatic 312	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   1380: ldc2_w 263
    //   1383: lstore_2
    //   1384: goto -928 -> 456
    //   1387: new 357	android/content/ContentValues
    //   1390: dup
    //   1391: invokespecial 358	android/content/ContentValues:<init>	()V
    //   1394: astore 23
    //   1396: aload 23
    //   1398: ldc_w 360
    //   1401: invokestatic 355	bfz:i	()Ljava/lang/String;
    //   1404: invokevirtual 364	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1407: aload 23
    //   1409: ldc_w 366
    //   1412: aload 20
    //   1414: invokevirtual 364	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1417: aload 23
    //   1419: ldc 99
    //   1421: iconst_3
    //   1422: invokestatic 79	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1425: invokevirtual 369	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1428: iload 9
    //   1430: ifeq +350 -> 1780
    //   1433: getstatic 374	emd:b	Lemd;
    //   1436: invokevirtual 375	emd:ordinal	()I
    //   1439: istore 10
    //   1441: aload 23
    //   1443: ldc 73
    //   1445: iload 10
    //   1447: invokestatic 79	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1450: invokevirtual 369	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1453: aload 23
    //   1455: ldc_w 377
    //   1458: aload 19
    //   1460: getfield 380	czb:b	Ljava/lang/String;
    //   1463: invokevirtual 364	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1466: aload 23
    //   1468: ldc_w 382
    //   1471: aload 19
    //   1473: getfield 384	czb:a	Ljava/lang/String;
    //   1476: invokevirtual 364	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1479: aload 22
    //   1481: getfield 823	emw:n	Ljava/lang/String;
    //   1484: astore 24
    //   1486: aload 23
    //   1488: ldc_w 397
    //   1491: aload 24
    //   1493: invokevirtual 364	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1496: aload 23
    //   1498: ldc 103
    //   1500: getstatic 108	emc:e	Lemc;
    //   1503: invokevirtual 112	emc:ordinal	()I
    //   1506: invokestatic 79	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1509: invokevirtual 369	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1512: aload 23
    //   1514: ldc_w 411
    //   1517: aload 22
    //   1519: getfield 866	emw:p	J
    //   1522: invokestatic 418	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1525: invokevirtual 421	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   1528: aload 23
    //   1530: ldc_w 423
    //   1533: iconst_m1
    //   1534: invokestatic 79	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1537: invokevirtual 369	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1540: aload 23
    //   1542: ldc_w 425
    //   1545: ldc2_w 426
    //   1548: invokestatic 418	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1551: invokevirtual 421	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   1554: getstatic 141	eny:g	Landroid/net/Uri;
    //   1557: invokestatic 430	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1560: astore 27
    //   1562: aload 22
    //   1564: getfield 831	emw:o	J
    //   1567: lstore_2
    //   1568: aload 23
    //   1570: ldc_w 432
    //   1573: iconst_1
    //   1574: anewarray 81	java/lang/String
    //   1577: dup
    //   1578: iconst_0
    //   1579: new 282	java/lang/StringBuilder
    //   1582: dup
    //   1583: aload 27
    //   1585: invokestatic 430	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1588: invokevirtual 389	java/lang/String:length	()I
    //   1591: bipush 21
    //   1593: iadd
    //   1594: invokespecial 285	java/lang/StringBuilder:<init>	(I)V
    //   1597: aload 27
    //   1599: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1602: ldc_w 434
    //   1605: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1608: lload_2
    //   1609: invokevirtual 330	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1612: invokevirtual 300	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1615: invokestatic 173	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   1618: invokevirtual 435	android/net/Uri:toString	()Ljava/lang/String;
    //   1621: aastore
    //   1622: invokestatic 438	aal:a	([Ljava/lang/String;)Ljava/lang/String;
    //   1625: invokevirtual 364	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1628: aload 23
    //   1630: ldc_w 868
    //   1633: aload 22
    //   1635: getfield 869	emw:q	J
    //   1638: invokestatic 418	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1641: invokevirtual 421	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   1644: iload 9
    //   1646: ifeq +145 -> 1791
    //   1649: aload 23
    //   1651: ldc_w 440
    //   1654: aload 22
    //   1656: getfield 827	emw:m	Ljava/lang/String;
    //   1659: invokevirtual 364	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1662: aload 23
    //   1664: ldc_w 456
    //   1667: aload 22
    //   1669: getfield 871	emw:t	I
    //   1672: invokestatic 79	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1675: invokevirtual 369	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1678: aload 23
    //   1680: ldc 101
    //   1682: iconst_0
    //   1683: invokestatic 79	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1686: invokevirtual 369	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1689: aload 23
    //   1691: ldc_w 463
    //   1694: iconst_1
    //   1695: invokestatic 468	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   1698: invokevirtual 471	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   1701: aload_0
    //   1702: getfield 185	eny:t	Lbfz;
    //   1705: invokevirtual 248	bfz:e	()Lbha;
    //   1708: ldc_w 473
    //   1711: aload 23
    //   1713: invokevirtual 476	bha:a	(Ljava/lang/String;Landroid/content/ContentValues;)J
    //   1716: lstore_2
    //   1717: lload_2
    //   1718: ldc2_w 263
    //   1721: lcmp
    //   1722: ifne +97 -> 1819
    //   1725: aload_0
    //   1726: getfield 192	eny:s	Lbfd;
    //   1729: invokevirtual 278	bfd:g	()I
    //   1732: istore 9
    //   1734: ldc_w 280
    //   1737: new 282	java/lang/StringBuilder
    //   1740: dup
    //   1741: bipush 61
    //   1743: invokespecial 285	java/lang/StringBuilder:<init>	(I)V
    //   1746: ldc_w 287
    //   1749: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1752: iload 9
    //   1754: invokevirtual 294	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1757: ldc_w 873
    //   1760: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1763: invokevirtual 300	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1766: iconst_0
    //   1767: anewarray 4	java/lang/Object
    //   1770: invokestatic 312	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   1773: ldc2_w 263
    //   1776: lstore_2
    //   1777: goto -1321 -> 456
    //   1780: getstatic 480	emd:c	Lemd;
    //   1783: invokevirtual 375	emd:ordinal	()I
    //   1786: istore 10
    //   1788: goto -347 -> 1441
    //   1791: aload 23
    //   1793: ldc_w 482
    //   1796: aload 22
    //   1798: getfield 827	emw:m	Ljava/lang/String;
    //   1801: invokevirtual 364	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1804: goto -142 -> 1662
    //   1807: astore 4
    //   1809: aload_0
    //   1810: getfield 185	eny:t	Lbfz;
    //   1813: invokevirtual 875	bfz:c	()V
    //   1816: aload 4
    //   1818: athrow
    //   1819: aload_0
    //   1820: aload_0
    //   1821: getfield 877	eny:y	Z
    //   1824: aload 22
    //   1826: getfield 878	emw:v	Z
    //   1829: ior
    //   1830: putfield 877	eny:y	Z
    //   1833: aload_0
    //   1834: aload 20
    //   1836: aload 19
    //   1838: aload 24
    //   1840: aconst_null
    //   1841: aload 22
    //   1843: getfield 866	emw:p	J
    //   1846: lload_2
    //   1847: iconst_2
    //   1848: aconst_null
    //   1849: iconst_0
    //   1850: aload 22
    //   1852: getfield 879	emw:u	Z
    //   1855: aload 22
    //   1857: getfield 860	emw:s	J
    //   1860: invokespecial 540	eny:a	(Ljava/lang/String;Lczb;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;IZJ)V
    //   1863: goto -1407 -> 456
    //   1866: iload 9
    //   1868: aload 25
    //   1870: invokevirtual 714	hu:a	()I
    //   1873: if_icmpge +29 -> 1902
    //   1876: aload_0
    //   1877: aload 25
    //   1879: iload 9
    //   1881: invokevirtual 725	hu:b	(I)Ljava/lang/Object;
    //   1884: checkcast 267	emu
    //   1887: invokespecial 881	eny:a	(Lemu;)J
    //   1890: lconst_0
    //   1891: lcmp
    //   1892: ifle +260 -> 2152
    //   1895: iload_1
    //   1896: iconst_1
    //   1897: iadd
    //   1898: istore_1
    //   1899: goto +358 -> 2257
    //   1902: aload_0
    //   1903: ldc_w 473
    //   1906: ldc_w 883
    //   1909: aload 26
    //   1911: invokestatic 886	eny:a	(Ljava/util/List;)[Ljava/lang/String;
    //   1914: invokespecial 887	eny:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   1917: istore 9
    //   1919: aload_0
    //   1920: invokespecial 888	eny:c	()V
    //   1923: aload_0
    //   1924: getfield 185	eny:t	Lbfz;
    //   1927: invokevirtual 889	bfz:b	()V
    //   1930: aload_0
    //   1931: getfield 185	eny:t	Lbfz;
    //   1934: invokevirtual 875	bfz:c	()V
    //   1937: aload_0
    //   1938: getfield 185	eny:t	Lbfz;
    //   1941: invokestatic 892	bft:d	(Lbfz;)V
    //   1944: aload 4
    //   1946: iload 7
    //   1948: putfield 894	eoi:c	I
    //   1951: aload 4
    //   1953: iload 8
    //   1955: putfield 896	eoi:d	I
    //   1958: aload 4
    //   1960: iload 5
    //   1962: putfield 897	eoi:e	I
    //   1965: aload 4
    //   1967: iload_1
    //   1968: putfield 898	eoi:f	I
    //   1971: aload 4
    //   1973: iload 6
    //   1975: putfield 900	eoi:g	I
    //   1978: aload 4
    //   1980: iload 9
    //   1982: putfield 902	eoi:h	I
    //   1985: invokestatic 798	android/os/SystemClock:elapsedRealtime	()J
    //   1988: lstore_2
    //   1989: aload 4
    //   1991: lload_2
    //   1992: lload 11
    //   1994: lsub
    //   1995: putfield 904	eoi:a	J
    //   1998: aload 4
    //   2000: lload_2
    //   2001: lload 13
    //   2003: lsub
    //   2004: putfield 906	eoi:b	J
    //   2007: getstatic 63	eny:a	Z
    //   2010: ifne +10 -> 2020
    //   2013: aload_0
    //   2014: getfield 198	eny:A	Z
    //   2017: ifeq +61 -> 2078
    //   2020: aload_0
    //   2021: getfield 192	eny:s	Lbfd;
    //   2024: invokevirtual 278	bfd:g	()I
    //   2027: istore_1
    //   2028: aload 4
    //   2030: invokevirtual 907	eoi:toString	()Ljava/lang/String;
    //   2033: invokestatic 430	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2036: astore 4
    //   2038: new 282	java/lang/StringBuilder
    //   2041: dup
    //   2042: aload 4
    //   2044: invokestatic 430	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2047: invokevirtual 389	java/lang/String:length	()I
    //   2050: bipush 42
    //   2052: iadd
    //   2053: invokespecial 285	java/lang/StringBuilder:<init>	(I)V
    //   2056: ldc_w 287
    //   2059: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2062: iload_1
    //   2063: invokevirtual 294	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   2066: ldc_w 909
    //   2069: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2072: aload 4
    //   2074: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2077: pop
    //   2078: iload 17
    //   2080: ireturn
    //   2081: astore 21
    //   2083: aconst_null
    //   2084: astore 20
    //   2086: aload 19
    //   2088: astore 4
    //   2090: aload 21
    //   2092: astore 19
    //   2094: goto -1004 -> 1090
    //   2097: astore 20
    //   2099: aload 19
    //   2101: astore 4
    //   2103: aload 20
    //   2105: astore 19
    //   2107: aload 22
    //   2109: astore 20
    //   2111: goto -1021 -> 1090
    //   2114: astore 21
    //   2116: aload 19
    //   2118: astore 20
    //   2120: aload 21
    //   2122: astore 19
    //   2124: goto -1034 -> 1090
    //   2127: astore 20
    //   2129: aload 19
    //   2131: astore 4
    //   2133: aconst_null
    //   2134: astore 19
    //   2136: goto -1127 -> 1009
    //   2139: astore 20
    //   2141: aload 19
    //   2143: astore 4
    //   2145: aload 22
    //   2147: astore 19
    //   2149: goto -1140 -> 1009
    //   2152: goto +105 -> 2257
    //   2155: goto -1689 -> 466
    //   2158: goto -1163 -> 995
    //   2161: goto +66 -> 2227
    //   2164: iload 5
    //   2166: istore 9
    //   2168: iload 6
    //   2170: istore 5
    //   2172: iload 9
    //   2174: istore 6
    //   2176: goto +16 -> 2192
    //   2179: aload 20
    //   2181: ifnonnull -1631 -> 550
    //   2184: aload 21
    //   2186: ifnonnull -1612 -> 574
    //   2189: goto -1639 -> 550
    //   2192: aload 24
    //   2194: astore 21
    //   2196: iload 6
    //   2198: istore 9
    //   2200: iload 8
    //   2202: iconst_1
    //   2203: iadd
    //   2204: istore 8
    //   2206: iload 7
    //   2208: iconst_1
    //   2209: iadd
    //   2210: istore 7
    //   2212: aload 23
    //   2214: astore 20
    //   2216: iload 5
    //   2218: istore 6
    //   2220: iload 9
    //   2222: istore 5
    //   2224: goto -2029 -> 195
    //   2227: goto -1346 -> 881
    //   2230: goto -1074 -> 1156
    //   2233: iconst_0
    //   2234: istore 9
    //   2236: goto -1107 -> 1129
    //   2239: aconst_null
    //   2240: astore 19
    //   2242: goto -12 -> 2230
    //   2245: aconst_null
    //   2246: astore 20
    //   2248: goto -940 -> 1308
    //   2251: iconst_0
    //   2252: istore 9
    //   2254: goto -388 -> 1866
    //   2257: iload 9
    //   2259: iconst_1
    //   2260: iadd
    //   2261: istore 9
    //   2263: goto -397 -> 1866
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	2266	0	this	eny
    //   0	2266	1	paramInt	int
    //   0	2266	2	paramLong	long
    //   0	2266	4	parameoi	eoi
    //   34	2189	5	i1	int
    //   92	2127	6	i2	int
    //   193	2018	7	i3	int
    //   190	2015	8	i4	int
    //   317	1945	9	i5	int
    //   89	1698	10	i6	int
    //   80	1913	11	l1	long
    //   259	1743	13	l2	long
    //   1188	53	15	l3	long
    //   197	1882	17	bool1	boolean
    //   83	1217	18	bool2	boolean
    //   155	919	19	localeoe	eoe
    //   1082	33	19	localObject1	Object
    //   1130	1111	19	localObject2	Object
    //   187	675	20	localObject3	Object
    //   1001	51	20	localSQLiteException1	SQLiteException
    //   1085	1000	20	localObject4	Object
    //   2097	7	20	localObject5	Object
    //   2109	10	20	localObject6	Object
    //   2127	1	20	localSQLiteException2	SQLiteException
    //   2139	41	20	localSQLiteException3	SQLiteException
    //   2214	33	20	localObject7	Object
    //   178	866	21	localObject8	Object
    //   2081	10	21	localObject9	Object
    //   2114	71	21	localObject10	Object
    //   2194	1	21	localObject11	Object
    //   169	1977	22	localObject12	Object
    //   645	1568	23	localObject13	Object
    //   636	1557	24	localObject14	Object
    //   110	1768	25	localhu	hu
    //   119	1791	26	localArrayList	ArrayList
    //   101	1497	27	localObject15	Object
    //   128	841	28	localHashSet1	java.util.HashSet
    //   137	801	29	localHashSet2	java.util.HashSet
    // Exception table:
    //   from	to	target	type
    //   139	157	1001	android/database/sqlite/SQLiteException
    //   139	157	1082	finally
    //   268	277	1807	finally
    //   280	366	1807	finally
    //   366	436	1807	finally
    //   436	447	1807	finally
    //   1117	1126	1807	finally
    //   1137	1153	1807	finally
    //   1161	1255	1807	finally
    //   1262	1283	1807	finally
    //   1286	1299	1807	finally
    //   1308	1317	1807	finally
    //   1322	1380	1807	finally
    //   1387	1428	1807	finally
    //   1433	1441	1807	finally
    //   1441	1644	1807	finally
    //   1649	1662	1807	finally
    //   1662	1717	1807	finally
    //   1725	1773	1807	finally
    //   1780	1788	1807	finally
    //   1791	1804	1807	finally
    //   1819	1863	1807	finally
    //   1866	1895	1807	finally
    //   1902	1930	1807	finally
    //   157	171	2081	finally
    //   171	189	2097	finally
    //   199	210	2097	finally
    //   236	242	2097	finally
    //   489	503	2097	finally
    //   503	535	2097	finally
    //   560	574	2097	finally
    //   574	602	2097	finally
    //   617	647	2097	finally
    //   652	662	2097	finally
    //   667	677	2097	finally
    //   677	700	2097	finally
    //   706	715	2097	finally
    //   732	749	2097	finally
    //   764	793	2097	finally
    //   802	819	2097	finally
    //   834	863	2097	finally
    //   872	881	2097	finally
    //   881	928	2097	finally
    //   937	946	2097	finally
    //   946	989	2097	finally
    //   1009	1056	2114	finally
    //   157	171	2127	android/database/sqlite/SQLiteException
    //   171	189	2139	android/database/sqlite/SQLiteException
    //   199	210	2139	android/database/sqlite/SQLiteException
    //   236	242	2139	android/database/sqlite/SQLiteException
    //   489	503	2139	android/database/sqlite/SQLiteException
    //   503	535	2139	android/database/sqlite/SQLiteException
    //   560	574	2139	android/database/sqlite/SQLiteException
    //   574	602	2139	android/database/sqlite/SQLiteException
    //   617	647	2139	android/database/sqlite/SQLiteException
    //   652	662	2139	android/database/sqlite/SQLiteException
    //   667	677	2139	android/database/sqlite/SQLiteException
    //   677	700	2139	android/database/sqlite/SQLiteException
    //   706	715	2139	android/database/sqlite/SQLiteException
    //   732	749	2139	android/database/sqlite/SQLiteException
    //   764	793	2139	android/database/sqlite/SQLiteException
    //   802	819	2139	android/database/sqlite/SQLiteException
    //   834	863	2139	android/database/sqlite/SQLiteException
    //   872	881	2139	android/database/sqlite/SQLiteException
    //   881	928	2139	android/database/sqlite/SQLiteException
    //   937	946	2139	android/database/sqlite/SQLiteException
    //   946	989	2139	android/database/sqlite/SQLiteException
  }
  
  static boolean a(bfz parambfz)
  {
    Object localObject = aal.oJ;
    for (;;)
    {
      try
      {
        int i1 = a(parambfz.e().a("messages", C, d, null, null));
        int i2 = a(aal.a(((Context)localObject).getContentResolver(), g, C, b, null, null)) + a(aal.a(((Context)localObject).getContentResolver(), f, C, c, null, null));
        if (i1 == i2)
        {
          bool1 = true;
          boolean bool2;
          if (!a)
          {
            bool2 = bool1;
            if (bool1) {}
          }
          else
          {
            int i3 = parambfz.g().g();
            if (bool1)
            {
              localObject = ": ";
              new StringBuilder(String.valueOf(localObject).length() + 69).append("SmsSyncManager A#").append(i3).append((String)localObject).append("local = ").append(i1).append(", remote = ").append(i2);
              return bool1;
            }
            localObject = ": NOT IN SYNC, ";
            continue;
          }
          return bool2;
        }
      }
      catch (SQLiteException localSQLiteException)
      {
        i1 = parambfz.g().g();
        parambfz = String.valueOf(localSQLiteException);
        ezi.d("Babel_SMS", String.valueOf(parambfz).length() + 53 + "SmsSyncManager A#" + i1 + ": failed to query counts " + parambfz, localSQLiteException);
        bool2 = true;
      }
      boolean bool1 = false;
    }
  }
  
  private static String[] a(List<eof> paramList)
  {
    String[] arrayOfString = new String[paramList.size()];
    int i1 = 0;
    while (i1 < arrayOfString.length)
    {
      arrayOfString[i1] = Long.toString(((eof)paramList.get(i1)).d());
      i1 += 1;
    }
    return arrayOfString;
  }
  
  private static String b(String paramString1, String paramString2, long paramLong1, long paramLong2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString1);
    if (paramLong1 > 0L) {
      localStringBuilder.append(" AND ").append(paramString2).append(">=").append(paramLong1);
    }
    if (paramLong2 > 0L) {
      localStringBuilder.append(" AND ").append(paramString2).append("<=").append(paramLong2);
    }
    return localStringBuilder.toString();
  }
  
  public static void b(int paramInt, long paramLong)
  {
    hbs.a(paramInt, 0, 1);
    eyf[] arrayOfeyf = p;
    if (paramLong >= 0L) {}
    try
    {
      p[paramInt].c(paramLong);
      return;
    }
    finally {}
  }
  
  public static void b(bfd parambfd)
  {
    a(parambfd, false, 0L);
  }
  
  private static void b(String paramString)
  {
    synchronized (q)
    {
      Iterator localIterator = q.keySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (String)localIterator.next();
        if (!TextUtils.equals(paramString, (CharSequence)localObject))
        {
          localObject = (List)q.get(localObject);
          if (localObject != null)
          {
            localObject = ((List)localObject).iterator();
            if (((Iterator)localObject).hasNext()) {
              ((eoj)((Iterator)localObject).next()).a();
            }
          }
        }
      }
    }
  }
  
  private void c()
  {
    Iterator localIterator = w.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      eoc localeoc = (eoc)w.get(str);
      if (!k)
      {
        t.a(str, c, -1L, f, g, a, b, e, d, h, 0);
        t.j(str, c);
        t.a(str, i, false, "smssync");
        t.n(str, j);
        k = true;
      }
    }
  }
  
  public static void c(bfd parambfd)
  {
    a(parambfd, true, 0L);
  }
  
  private static boolean c(int paramInt, long paramLong)
  {
    hbs.a(paramInt, 0, 1);
    synchronized (p)
    {
      boolean bool = p[paramInt].a(paramLong);
      return bool;
    }
  }
  
  int b()
  {
    if ((a) || (A))
    {
      i1 = s.g();
      l1 = x;
      new StringBuilder(60).append("SmsSyncManager A#").append(i1).append(": sync from ").append(l1);
    }
    long l3 = System.currentTimeMillis();
    long l4 = SystemClock.elapsedRealtime();
    eoi localeoi = new eoi();
    int i6 = i;
    int i2 = 0;
    int i3 = 0;
    int i4 = 0;
    int i5 = 0;
    long l1 = -1L;
    y = false;
    z = false;
    int i14 = 1;
    int i1 = i5;
    int i11 = i4;
    int i12 = i3;
    int i13 = i2;
    if (!h)
    {
      boolean bool = a(i6, l1, localeoi);
      int i7 = i2 + c;
      int i8 = i3 + d;
      int i9 = i4 + f;
      int i10 = i5 + h;
      i14 = bool;
      i1 = i10;
      i11 = i9;
      i12 = i8;
      i13 = i7;
      if (bool)
      {
        if (b <= 0L) {
          i1 = i;
        }
        for (;;)
        {
          long l2 = i / 1000L;
          i14 = bool;
          i5 = i10;
          l1 = l2;
          i4 = i9;
          i3 = i8;
          i2 = i7;
          i6 = i1;
          if (m <= 0L) {
            break;
          }
          try
          {
            Thread.sleep(m);
            i14 = bool;
            i5 = i10;
            l1 = l2;
            i4 = i9;
            i3 = i8;
            i2 = i7;
            i6 = i1;
          }
          catch (InterruptedException localInterruptedException)
          {
            i14 = bool;
            i5 = i10;
            l1 = l2;
            i4 = i9;
            i3 = i8;
            i2 = i7;
            i6 = i1;
          }
          break;
          i2 = (int)((h + f) / b * l);
          if (i2 < j)
          {
            i1 = j;
          }
          else
          {
            i1 = i2;
            if (i2 > k) {
              i1 = k;
            }
          }
        }
      }
    }
    if (i14 == 0)
    {
      if (y) {
        enn.d(g);
      }
      if (z) {
        enn.d(f);
      }
      if ((a) || (A))
      {
        i2 = s.g();
        l1 = SystemClock.elapsedRealtime();
        new StringBuilder(168).append("SmsSyncManager A#").append(i2).append(": sync done in ").append(l1 - l4).append(" millis, scanned ").append(i13).append(" local msgs, ").append(i12).append(" remote msgs, ").append(i11).append(" added, ").append(i1).append(" deleted.");
      }
      ((hpz)ilh.a(aal.oJ, hpz.class)).b(s.g()).b("sms_last_sync_time_millis", l3).d();
      return i11 + i1;
    }
    if ((a) || (A))
    {
      i1 = s.g();
      new StringBuilder(42).append("SmsSyncManager A#").append(i1).append(": sync aborted");
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     eny
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */