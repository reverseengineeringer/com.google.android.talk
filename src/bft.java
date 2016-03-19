import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Telephony.Sms.Inbox;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import android.text.util.Rfc822Token;
import android.text.util.Rfc822Tokenizer;
import android.util.Pair;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public final class bft
{
  public static final boolean a;
  public static final Object b = new Object();
  public static int c = 0;
  private static final Uri d;
  private static CharSequence e;
  private static final HashSet<Uri> f = new HashSet();
  
  static
  {
    Object localObject = ezi.d;
    a = false;
    localObject = EsProvider.a;
    d = Uri.parse(String.valueOf(localObject).length() + 12 + "receiver://" + (String)localObject + "/");
  }
  
  public static int a(bfz parambfz, exn paramexn)
  {
    int i = 0;
    parambfz.a();
    if (paramexn == null) {}
    for (;;)
    {
      try
      {
        i = parambfz.v(null);
        parambfz.b();
        parambfz.c();
        if (i > 0)
        {
          parambfz = parambfz.g();
          if (parambfz != null) {
            a(aal.oJ, parambfz.g());
          }
        }
        return i;
      }
      finally
      {
        int j;
        parambfz.c();
      }
      paramexn = paramexn.iterator();
      if (paramexn.hasNext())
      {
        j = parambfz.v((String)paramexn.next());
        i += j;
      }
    }
  }
  
  public static long a(bfz parambfz, String paramString, dyy paramdyy, long paramLong, boolean paramBoolean)
  {
    Object localObject;
    if (ezi.a("Babel_ConversationsData", 3))
    {
      localObject = String.valueOf(paramString);
      if (((String)localObject).length() == 0) {
        break label194;
      }
      localObject = "updateConversationWatermark conversationId: ".concat((String)localObject);
    }
    for (;;)
    {
      ezi.a("Babel_ConversationsData", (String)localObject, new Object[0]);
      parambfz.a();
      try
      {
        localObject = parambfz.N(paramString);
        long l;
        if (localObject != null)
        {
          l = Math.max(a, parambfz.m(paramString));
          if (paramLong == 0L) {
            paramLong = l;
          }
        }
        for (;;)
        {
          if (paramLong > b)
          {
            parambfz.a(paramString, paramLong, true, "useraction");
            localObject = parambfz.g();
            ((cyh)ilh.a(aal.oJ, cyh.class)).a(((bfd)localObject).g(), true);
            a(aal.oJ, ((bfd)localObject).g());
            if ((paramdyy != null) && (!bfz.a(paramString)))
            {
              if (paramBoolean) {
                paramdyy.a(new dqc(paramString, paramLong));
              }
              paramdyy.a(((bfd)localObject).g());
            }
          }
          for (;;)
          {
            parambfz.b();
            parambfz.c();
            d(parambfz, paramString);
            return paramLong;
            label194:
            localObject = new String("updateConversationWatermark conversationId: ");
            break;
            if (paramLong <= l) {
              break label310;
            }
            ezi.e("Babel_ConversationsData", 72 + "New watermark: " + paramLong + "; max watermark: " + l, new Object[0]);
            hbs.a("New watermark greater than maximum possible watermark");
            break label310;
            if (bfz.b(paramString))
            {
              l = parambfz.W(paramString);
              if (l != -1L) {
                enn.a(l, paramLong / 1000L);
              }
            }
            paramLong = -1L;
          }
        }
      }
      finally
      {
        parambfz.c();
      }
    }
  }
  
  public static String a(bfz parambfz, boolean paramBoolean1, String paramString1, List<cyx> paramList, List<axn> paramList1, List<dtt> paramList2, bfw parambfw, int paramInt1, int paramInt2, boolean paramBoolean2, dyy paramdyy, String paramString2)
  {
    parambfz.a();
    try
    {
      paramString1 = b(parambfz, paramBoolean1, paramString1, paramList, paramList1, paramList2, parambfw, paramInt1, paramInt2, paramBoolean2, paramdyy, paramString2);
      parambfz.b();
      return paramString1;
    }
    finally
    {
      parambfz.c();
    }
  }
  
  public static List<cyx> a(bfd parambfd, String paramString)
  {
    return new bfz(aal.oJ, parambfd.g()).a(paramString, parambfd.b());
  }
  
  public static void a()
  {
    synchronized (b)
    {
      if (c <= 0)
      {
        i = c;
        throw new IllegalStateException(47 + "sPendingChangeNotificationsCount is " + i);
      }
    }
    int i = c - 1;
    c = i;
    if (i == 0)
    {
      ContentResolver localContentResolver = aal.oJ.getContentResolver();
      Iterator localIterator = f.iterator();
      while (localIterator.hasNext())
      {
        Uri localUri = (Uri)localIterator.next();
        if (c(localUri)) {
          a(aal.oJ, Integer.parseInt(localUri.getQueryParameter("account_id")));
        } else {
          localContentResolver.notifyChange(localUri, null);
        }
      }
      f.clear();
    }
  }
  
  public static void a(int paramInt)
  {
    a(EsProvider.a(EsProvider.g, paramInt));
    a(EsProvider.a(EsProvider.h, paramInt));
    a(EsProvider.a(EsProvider.i, paramInt));
    a(b(paramInt));
  }
  
  public static void a(int paramInt, adi paramadi)
  {
    bfd localbfd = dvd.e(paramInt);
    if (localbfd == null)
    {
      ezi.e("Babel_ConversationsData", "EsConversationsData.processMmsNotification: no account", new Object[0]);
      return;
    }
    bfz localbfz = new bfz(aal.oJ, localbfd.g());
    String str1 = enn.a(paramadi.d(), "UTF-8");
    byte[] arrayOfByte = paramadi.g();
    String str2 = enn.a(arrayOfByte, "UTF-8");
    Object localObject1 = paramadi.c();
    Object localObject2;
    if (localObject1 != null)
    {
      localObject1 = ((adf)localObject1).c();
      localObject2 = localObject1;
      if (localObject1 != null)
      {
        localObject2 = localObject1;
        if (((String)localObject1).contains("@"))
        {
          if (((String)localObject1).contains("<")) {
            break label244;
          }
          localObject2 = localObject1;
        }
      }
    }
    long l1;
    long l2;
    boolean bool;
    label244:
    Rfc822Token[] arrayOfRfc822Token;
    do
    {
      l1 = paramadi.f();
      l2 = paramadi.e();
      bool = a(aal.l((String)localObject2));
      if ((!enn.d()) || (bool)) {
        break label315;
      }
      paramadi = new ContentValues();
      paramadi.put("content_location", str1);
      paramadi.put("transaction_id", str2);
      paramadi.put("from_address", (String)localObject2);
      paramadi.put("message_size", Long.valueOf(l1));
      paramadi.put("expiry", Long.valueOf(l2));
      l1 = localbfz.a(paramadi);
      RealTimeChatService.a(localbfd.g(), str1, arrayOfByte, l1, true);
      return;
      localObject1 = null;
      break;
      arrayOfRfc822Token = Rfc822Tokenizer.tokenize((CharSequence)localObject1);
      localObject2 = localObject1;
    } while (arrayOfRfc822Token.length <= 0);
    int i = arrayOfRfc822Token.length;
    paramInt = 0;
    for (;;)
    {
      localObject2 = localObject1;
      if (paramInt >= i) {
        break;
      }
      localObject2 = arrayOfRfc822Token[paramInt];
      if ((localObject2 != null) && (!TextUtils.isEmpty(((Rfc822Token)localObject2).getAddress())))
      {
        localObject2 = ((Rfc822Token)localObject2).getAddress();
        break;
      }
      paramInt += 1;
    }
    label315:
    a(localbfz, str1, str2, (String)localObject2, bool, l1, l2, 0, StressMode.gn);
  }
  
  public static void a(long paramLong)
  {
    paramLong = System.currentTimeMillis() - paramLong;
    int i = enn.c(paramLong);
    ezi.c("Babel_ConversationsData", 70 + "Message purging: deleted " + i + " old sms/mms messages in telephony", new Object[0]);
    if (i > 0)
    {
      Object localObject = dvd.l();
      if (localObject != null)
      {
        localObject = new bfz(aal.oJ, ((bfd)localObject).g());
        i = ((bfz)localObject).l(paramLong * 1000L);
        ezi.c("Babel_ConversationsData", 69 + "Message purging: deleted " + i + " old sms/mms messages in Hangouts", new Object[0]);
        c((bfz)localObject);
      }
    }
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    Intent localIntent = new Intent("com.google.android.apps.hangouts.intent.action.ACTION_NOTIFY_DATASET_CHANGED");
    if (paramInt != -1) {
      localIntent.putExtra("account_id", paramInt);
    }
    paramContext.sendBroadcast(localIntent);
  }
  
  private static void a(Uri paramUri)
  {
    for (;;)
    {
      synchronized (b)
      {
        if (c == 0)
        {
          if (c(paramUri))
          {
            a(aal.oJ, Integer.parseInt(paramUri.getQueryParameter("account_id")));
            return;
          }
          aal.oJ.getContentResolver().notifyChange(paramUri, null);
        }
      }
      f.add(paramUri);
    }
  }
  
  public static void a(bfd parambfd)
  {
    a(EsProvider.a(EsProvider.h, parambfd.g()));
    a(EsProvider.a(EsProvider.g, parambfd.g()));
    a(b(parambfd.g()));
  }
  
  public static void a(bfd parambfd, long paramLong, boolean paramBoolean, int paramInt)
  {
    if (paramLong < 0L) {
      ezi.e("Babel_ConversationsData", 75 + "displayMmsDownloadFailure: invalid notification row id " + paramLong, new Object[0]);
    }
    Object localObject2;
    String str;
    do
    {
      return;
      parambfd = new bfz(aal.oJ, parambfd.g());
      if (!paramBoolean) {
        break;
      }
      localObject1 = parambfd.e();
      localObject2 = bfx.a;
      str = String.valueOf("_id=");
      localObject1 = ((bha)localObject1).a("mms_notification_inds", (String[])localObject2, String.valueOf(str).length() + 20 + str + paramLong, null, null);
    } while (localObject1 == null);
    try
    {
      if (((Cursor)localObject1).moveToFirst())
      {
        a(parambfd, ((Cursor)localObject1).getString(0), ((Cursor)localObject1).getString(1), ((Cursor)localObject1).getString(2), false, ((Cursor)localObject1).getLong(3), ((Cursor)localObject1).getLong(4), paramInt, StressMode.gn);
        parambfd.m(paramLong);
      }
      return;
    }
    finally
    {
      ((Cursor)localObject1).close();
    }
    Object localObject1 = new ContentValues();
    if (paramInt == 0) {}
    for (int i = emc.e.ordinal();; i = emc.d.ordinal())
    {
      ((ContentValues)localObject1).put("status", Integer.valueOf(i));
      ((ContentValues)localObject1).put("sending_error", Integer.valueOf(paramInt));
      localObject2 = parambfd.e();
      str = String.valueOf("_id=");
      ((bha)localObject2).a("messages", (ContentValues)localObject1, String.valueOf(str).length() + 20 + str + paramLong, null);
      b(parambfd, paramLong);
      return;
    }
  }
  
  /* Error */
  public static void a(bfd parambfd, Intent paramIntent)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 520	android/provider/Telephony$Sms$Intents:getMessagesFromIntent	(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    //   4: astore 8
    //   6: aload_1
    //   7: ldc_w 522
    //   10: invokevirtual 525	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   13: astore 7
    //   15: aload 8
    //   17: ifnull +9 -> 26
    //   20: aload 8
    //   22: arraylength
    //   23: ifgt +16 -> 39
    //   26: ldc -128
    //   28: ldc_w 527
    //   31: iconst_0
    //   32: anewarray 4	java/lang/Object
    //   35: invokestatic 206	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   38: return
    //   39: aload 8
    //   41: arraylength
    //   42: istore_3
    //   43: iconst_0
    //   44: istore_2
    //   45: iload_2
    //   46: iload_3
    //   47: if_icmpge +36 -> 83
    //   50: aload 8
    //   52: iload_2
    //   53: aaload
    //   54: astore 6
    //   56: aload 6
    //   58: invokevirtual 532	android/telephony/SmsMessage:getDisplayMessageBody	()Ljava/lang/String;
    //   61: pop
    //   62: iload_2
    //   63: iconst_1
    //   64: iadd
    //   65: istore_2
    //   66: goto -21 -> 45
    //   69: astore_0
    //   70: ldc -128
    //   72: ldc_w 534
    //   75: iconst_0
    //   76: anewarray 4	java/lang/Object
    //   79: invokestatic 206	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   82: return
    //   83: invokestatic 536	enn:h	()Z
    //   86: ifeq +129 -> 215
    //   89: aload 8
    //   91: iconst_0
    //   92: aaload
    //   93: invokevirtual 539	android/telephony/SmsMessage:getTimestampMillis	()J
    //   96: lstore 4
    //   98: aload_1
    //   99: ldc_w 541
    //   102: invokevirtual 545	android/content/Intent:getSerializableExtra	(Ljava/lang/String;)Ljava/io/Serializable;
    //   105: checkcast 547	[Ljava/lang/Object;
    //   108: astore 9
    //   110: ldc_w 549
    //   113: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   116: astore 6
    //   118: lload 4
    //   120: invokestatic 552	java/lang/Long:toString	(J)Ljava/lang/String;
    //   123: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   126: astore 10
    //   128: aload 10
    //   130: invokevirtual 43	java/lang/String:length	()I
    //   133: ifeq +157 -> 290
    //   136: aload 6
    //   138: aload 10
    //   140: invokevirtual 137	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   143: astore 6
    //   145: new 554	java/io/File
    //   148: dup
    //   149: invokestatic 560	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   152: aload 6
    //   154: invokespecial 563	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   157: astore 6
    //   159: aload 6
    //   161: invokevirtual 566	java/io/File:exists	()Z
    //   164: ifeq +9 -> 173
    //   167: aload 6
    //   169: invokevirtual 569	java/io/File:delete	()Z
    //   172: pop
    //   173: new 571	java/io/ObjectOutputStream
    //   176: dup
    //   177: new 573	java/io/BufferedOutputStream
    //   180: dup
    //   181: new 575	java/io/FileOutputStream
    //   184: dup
    //   185: aload 6
    //   187: invokespecial 578	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   190: invokespecial 581	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   193: invokespecial 582	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   196: astore 6
    //   198: aload 6
    //   200: aload 9
    //   202: invokevirtual 586	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   205: aload 6
    //   207: invokevirtual 589	java/io/ObjectOutputStream:flush	()V
    //   210: aload 6
    //   212: invokevirtual 590	java/io/ObjectOutputStream:close	()V
    //   215: aload 8
    //   217: iconst_0
    //   218: aaload
    //   219: invokevirtual 594	android/telephony/SmsMessage:getMessageClass	()Landroid/telephony/SmsMessage$MessageClass;
    //   222: getstatic 600	android/telephony/SmsMessage$MessageClass:CLASS_0	Landroid/telephony/SmsMessage$MessageClass;
    //   225: if_acmpne +141 -> 366
    //   228: aload 8
    //   230: iconst_0
    //   231: aaload
    //   232: astore_1
    //   233: getstatic 102	aal:oJ	Landroid/content/Context;
    //   236: astore 6
    //   238: aload 6
    //   240: new 427	android/content/Intent
    //   243: dup
    //   244: aload 6
    //   246: ldc_w 602
    //   249: invokespecial 605	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   252: ldc_w 607
    //   255: aload_1
    //   256: invokevirtual 610	android/telephony/SmsMessage:getPdu	()[B
    //   259: invokevirtual 613	android/content/Intent:putExtra	(Ljava/lang/String;[B)Landroid/content/Intent;
    //   262: ldc_w 522
    //   265: aload 7
    //   267: invokevirtual 616	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   270: ldc_w 261
    //   273: aload_0
    //   274: invokevirtual 106	bfd:g	()I
    //   277: invokevirtual 434	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   280: ldc_w 617
    //   283: invokevirtual 621	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   286: invokevirtual 624	android/content/Context:startActivity	(Landroid/content/Intent;)V
    //   289: return
    //   290: new 35	java/lang/String
    //   293: dup
    //   294: aload 6
    //   296: invokespecial 197	java/lang/String:<init>	(Ljava/lang/String;)V
    //   299: astore 6
    //   301: goto -156 -> 145
    //   304: astore 6
    //   306: aload 6
    //   308: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   311: astore 9
    //   313: ldc_w 626
    //   316: new 33	java/lang/StringBuilder
    //   319: dup
    //   320: aload 9
    //   322: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   325: invokevirtual 43	java/lang/String:length	()I
    //   328: bipush 9
    //   330: iadd
    //   331: invokespecial 47	java/lang/StringBuilder:<init>	(I)V
    //   334: ldc_w 628
    //   337: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   340: aload 9
    //   342: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   348: aload 6
    //   350: invokestatic 631	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   353: goto -138 -> 215
    //   356: astore 9
    //   358: aload 6
    //   360: invokevirtual 590	java/io/ObjectOutputStream:close	()V
    //   363: aload 9
    //   365: athrow
    //   366: aload 8
    //   368: aload_0
    //   369: aload_1
    //   370: ldc_w 633
    //   373: iconst_0
    //   374: invokevirtual 637	android/content/Intent:getIntExtra	(Ljava/lang/String;I)I
    //   377: aconst_null
    //   378: invokestatic 640	bft:a	([Landroid/telephony/SmsMessage;Lbfd;ILjava/lang/Boolean;)V
    //   381: getstatic 102	aal:oJ	Landroid/content/Context;
    //   384: aload_0
    //   385: invokevirtual 106	bfd:g	()I
    //   388: ldc_w 642
    //   391: invokestatic 647	bff:a	(Landroid/content/Context;ILjava/lang/String;)V
    //   394: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	395	0	parambfd	bfd
    //   0	395	1	paramIntent	Intent
    //   44	22	2	i	int
    //   42	6	3	j	int
    //   96	23	4	l	long
    //   54	246	6	localObject1	Object
    //   304	55	6	localIOException	java.io.IOException
    //   13	253	7	str1	String
    //   4	363	8	arrayOfSmsMessage	SmsMessage[]
    //   108	233	9	localObject2	Object
    //   356	8	9	localObject3	Object
    //   126	13	10	str2	String
    // Exception table:
    //   from	to	target	type
    //   56	62	69	java/lang/NullPointerException
    //   110	145	304	java/io/IOException
    //   145	173	304	java/io/IOException
    //   173	198	304	java/io/IOException
    //   210	215	304	java/io/IOException
    //   290	301	304	java/io/IOException
    //   358	366	304	java/io/IOException
    //   198	210	356	finally
  }
  
  public static void a(bfd parambfd, Intent paramIntent, boolean paramBoolean)
  {
    a(parambfd, (Uri)paramIntent.getParcelableExtra("uri"), paramIntent.getLongExtra("notification_row_id", -1L), null, paramBoolean, false);
  }
  
  private static void a(bfd parambfd, Uri paramUri, long paramLong, Boolean paramBoolean, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramUri == null) {
      return;
    }
    bfz localbfz = new bfz(aal.oJ, parambfd.g());
    String str1;
    if (paramLong > 0L) {
      if (paramBoolean1)
      {
        localbfz.m(paramLong);
        str1 = null;
      }
    }
    for (;;)
    {
      emu localemu = enn.e(paramUri);
      if (localemu == null)
      {
        ezi.e("Babel_ConversationsData", "EsConversationsData.processReceivedMms: failed to load mms", new Object[0]);
        return;
        str1 = localbfz.n(paramLong);
        localbfz.f(paramLong);
      }
      else
      {
        if (w.size() <= 0)
        {
          ezi.e("Babel_ConversationsData", "EsConversationsData.processReceivedMms: MMS message has no part", new Object[0]);
          return;
        }
        List localList1 = enn.a(r);
        if ((localList1 == null) || (localList1.size() <= 0))
        {
          ezi.e("Babel_ConversationsData", "EsConversationsData.processReceivedMms: MMS message has no recipient", new Object[0]);
          return;
        }
        Object localObject1;
        Object localObject2;
        if (paramBoolean2)
        {
          localObject1 = localbfz.g().b();
          localObject2 = null;
        }
        while (localObject1 == null)
        {
          parambfd = String.valueOf("EsConversationsData.processReceivedMms: MMS has no From: id=");
          paramLong = m;
          i = n;
          l1 = r;
          ezi.e("Babel_ConversationsData", String.valueOf(parambfd).length() + 68 + parambfd + paramLong + " type=" + i + " thread_id=" + l1, new Object[0]);
          return;
          localObject1 = enn.a(localList1, m);
          if (!TextUtils.isEmpty((CharSequence)localObject1))
          {
            localObject3 = aal.l((String)localObject1);
            localObject2 = localObject1;
            localObject1 = localObject3;
          }
          else
          {
            localObject3 = null;
            localObject2 = localObject1;
            localObject1 = localObject3;
          }
        }
        long l1 = q;
        paramBoolean2 = a((czb)localObject1);
        if (paramBoolean2) {}
        String str2;
        for (Object localObject3 = localObject1;; localObject3 = null)
        {
          str2 = enn.a(localbfz, (czb)localObject3, localList1);
          if (!TextUtils.isEmpty(str2)) {
            break;
          }
          ezi.e("Babel_ConversationsData", "EsConversationsData.processNewMms: empty conversation id", new Object[0]);
          return;
        }
        boolean bool1 = RealTimeChatService.d(parambfd, str2);
        localObject3 = paramBoolean;
        if (paramBoolean == null) {
          localObject3 = Boolean.valueOf(bool1);
        }
        enn.a(paramUri, aal.a((Boolean)localObject3, false));
        int i = localemu.k();
        boolean bool2 = localemu.i();
        if ((i > 1) || ((i > 0) && (!bool2)))
        {
          i = 1;
          label437:
          paramBoolean = new dyy();
          String str3 = bfz.i();
          String str4 = localemu.e();
          List localList2 = localemu.l();
          emc localemc = emc.e;
          String str5 = aal.a(new String[] { paramUri.toString() });
          int j = s;
          long l2 = localemu.h();
          String str6 = o;
          if (i == 0) {
            break label759;
          }
          i = 9;
          label516:
          new edn(str2, (czb)localObject1, l1, str3, null, str4, localList2, false, localemc, 0, 3, null, str5, 0L, j, l2, str6, i, null, 0, 0L).a(1).a((String)localObject2).b(enn.a(localList1, (String)localObject2)).a(localbfz, paramBoolean);
          localbfz.a();
        }
        try
        {
          localbfz.i(str2, l1);
          localbfz.n(str2, r);
          if ((!paramBoolean2) && (!bool1)) {
            ((cyh)ilh.a(aal.oJ, cyh.class)).a(parambfd.g(), false);
          }
          if (aal.a((Boolean)localObject3, false)) {
            localbfz.a(str2, l1, false, "processnewsms");
          }
          for (;;)
          {
            localbfz.b();
            localbfz.c();
            d(localbfz, str2);
            if ((!TextUtils.equals(str2, str1)) && (paramLong > 0L) && (!paramBoolean1))
            {
              paramBoolean = new bfu((String)localObject2);
              RealTimeChatService.i.post(new dzl(parambfd, str1, paramBoolean));
            }
            b(paramUri);
            if (localObject2 == null) {
              break;
            }
            bff.a(aal.oJ, parambfd.g(), "received_mms_count_since_last_upload");
            return;
            i = 0;
            break label437;
            label759:
            if (bool2)
            {
              i = 3;
              break label516;
            }
            i = 2;
            break label516;
            if (paramBoolean2) {
              localbfz.v(str2);
            }
          }
          str1 = null;
        }
        finally
        {
          localbfz.c();
        }
      }
    }
  }
  
  public static void a(bfd parambfd, dyy paramdyy, String paramString)
  {
    parambfd = new bfz(aal.oJ, parambfd.g());
    parambfd.e(paramString, 0);
    a(paramdyy, parambfd, paramString);
  }
  
  public static void a(bfd parambfd, String paramString, int paramInt)
  {
    new bfz(aal.oJ, parambfd.g()).e(paramString, paramInt);
  }
  
  public static void a(bfd parambfd, String paramString1, String paramString2)
  {
    if (paramString2 != null)
    {
      parambfd = new bfz(aal.oJ, parambfd.g());
      parambfd.a();
      try
      {
        parambfd.c(paramString1, paramString2);
        parambfd.b();
        return;
      }
      finally
      {
        parambfd.c();
      }
    }
    ezi.e("Babel_ConversationsData", "revertConversationName: empty name", new Object[0]);
  }
  
  public static void a(bfd parambfd, String paramString1, String paramString2, String paramString3)
  {
    hbs.b("Expected condition to be false", TextUtils.isEmpty(paramString2));
    if ((aal.c(paramString3)) || ("hangouts/gv_voicemail".equals(paramString3))) {
      RealTimeChatService.p(parambfd, paramString2);
    }
    while (!aal.d(paramString3)) {
      return;
    }
    RealTimeChatService.f(parambfd, paramString1, paramString2);
  }
  
  public static void a(bfz parambfz)
  {
    parambfz.y();
    d(parambfz);
  }
  
  public static void a(bfz parambfz, long paramLong)
  {
    parambfz.a();
    try
    {
      String str = (String)cfirst;
      if (str != null)
      {
        parambfz.f(paramLong);
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("snippet_type", Integer.valueOf(7));
        localContentValues.putNull("snippet_author_chat_id");
        localContentValues.putNull("snippet_text");
        localContentValues.putNull("snippet_image_url");
        localContentValues.putNull("snippet_message_row_id");
        localContentValues.putNull("snippet_status");
        localContentValues.putNull("previous_latest_timestamp");
        localContentValues.putNull("snippet_new_conversation_name");
        localContentValues.putNull("snippet_participant_keys");
        localContentValues.putNull("snippet_sms_type");
        parambfz.e().a("conversations", localContentValues, "conversation_id=? AND snippet_message_row_id=?", new String[] { str, String.valueOf(paramLong) });
        parambfz.b();
      }
      parambfz.c();
      if (str != null)
      {
        d(parambfz, str);
        return;
      }
    }
    finally
    {
      parambfz.c();
    }
    d(parambfz);
  }
  
  private static void a(bfz parambfz, long paramLong, dyy paramdyy, bgo parambgo)
  {
    Object localObject = f(parambfz, b);
    long l1 = parambfz.b(b, 1000);
    String str1;
    if (z == 1)
    {
      str1 = o;
      if (!"hangouts/location".equals(str1)) {
        break label346;
      }
      str1 = "image/jpeg";
    }
    label346:
    for (;;)
    {
      paramdyy.a(new ecb(b, a, l1).a((String[])((List)localObject).toArray(new String[((List)localObject).size()])).a(C).b(parambgo.a()).c(j).d(str1).a(A).b(B).c(D).e(G).d(H).a(paramLong).a());
      for (;;)
      {
        parambfz.a(paramLong, emc.c, l1);
        return;
        if (z != 0) {
          break;
        }
        long l2 = enn.a(aal.oJ, (List)localObject);
        str1 = parambfz.V(b);
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          String str2 = (String)((Iterator)localObject).next();
          paramdyy.a(new ecf(b, a, l1).a(str2).b(parambgo.a()).a(l2).c(str1).b(paramLong).a());
        }
      }
      int i = z;
      ezi.e("Babel_ConversationsData", 50 + "Resending unknown type of SMS message: " + i, new Object[0]);
      return;
    }
  }
  
  private static void a(bfz parambfz, bgd parambgd, long paramLong, boolean paramBoolean, dyy paramdyy)
  {
    bgo localbgo = parambfz.b(paramLong);
    if ((localbgo == null) || (b == null))
    {
      ezi.d("Babel_ConversationsData", 36 + "No such message " + paramLong, new Object[0]);
      return;
    }
    long l;
    if (a)
    {
      String str1 = String.valueOf("sending queued message type: ");
      String str2 = String.valueOf(g);
      String str3 = b;
      l = h;
      new StringBuilder(String.valueOf(str1).length() + 49 + String.valueOf(str2).length() + String.valueOf(str3).length()).append(str1).append(str2).append(" conversationId: ").append(str3).append(" timestamp: ").append(l);
    }
    switch (bfv.a[g.ordinal()])
    {
    default: 
      parambfz = String.valueOf(g);
      ezi.e("Babel", String.valueOf(parambfz).length() + 30 + "unknown message type to send: " + parambfz, new Object[0]);
      return;
    case 1: 
      if (aal.e(x))
      {
        a(parambfz, paramLong, paramdyy, localbgo);
        return;
      }
      if (f == emc.e)
      {
        parambfz = String.valueOf(a);
        if (parambfz.length() != 0) {}
        for (parambfz = "Skip sending message since it is already on server:".concat(parambfz);; parambfz = new String("Skip sending message since it is already on server:"))
        {
          ezi.d("Babel_ConversationsData", parambfz, new Object[0]);
          return;
        }
      }
      ebx.a(parambfz, paramdyy, localbgo, parambgd);
      l = 1000L * System.currentTimeMillis();
      if (paramBoolean)
      {
        paramdyy = j;
        parambgd = paramdyy;
        if (paramdyy == null) {
          parambgd = k;
        }
        parambfz.a(b, l, i, 6, o, parambfz.g().b(), e, parambgd, paramLong, z, 0);
      }
      parambgd = emc.b;
      if (paramBoolean) {}
      for (;;)
      {
        parambfz.a(paramLong, parambgd, l);
        return;
        l = -1L;
      }
    case 2: 
      a(paramdyy, localbgo, true);
      return;
    case 3: 
      a(paramdyy, localbgo, false);
      return;
    case 4: 
    case 5: 
      parambfz = parambfz.I(F);
      paramdyy.a(new dop(a, b, parambfz, h));
      return;
    }
    paramdyy.a(new dpl(a, b, E, null));
  }
  
  public static void a(bfz parambfz, dqf paramdqf, dyy paramdyy)
  {
    String str;
    if (ezi.a("Babel_ConversationsData", 3))
    {
      str = String.valueOf(paramdqf.getClass().getSimpleName());
      if (str.length() != 0)
      {
        str = "processServerResponse of type ".concat(str);
        ezi.a("Babel_ConversationsData", str, new Object[0]);
      }
    }
    else
    {
      f = false;
      paramdqf.a(parambfz, paramdyy);
      if (f) {
        return;
      }
      parambfz = String.valueOf(paramdqf.getClass().getSimpleName());
      if (parambfz.length() == 0) {
        break label112;
      }
    }
    label112:
    for (parambfz = "did not call through to super -- ".concat(parambfz);; parambfz = new String("did not call through to super -- "))
    {
      throw new IllegalStateException(parambfz);
      str = new String("processServerResponse of type ");
      break;
    }
  }
  
  public static void a(bfz parambfz, dyy paramdyy, int paramInt)
  {
    exr localexr = null;
    if (exo.b) {
      localexr = new exr().a("request_more_conversations").b(22 + "filterMode=" + paramInt).a(parambfz.g());
    }
    parambfz.a();
    for (;;)
    {
      long l3;
      long l1;
      try
      {
        long l2 = parambfz.b(paramInt);
        if (l2 == -2L)
        {
          if (localexr != null) {
            localexr.b("continuationEndTimeStamp=exhausted").b("notifyExhausted").b();
          }
          parambfz.b();
          parambfz.c();
          if (localexr != null) {}
          return;
        }
        l3 = bff.a(aal.oJ, parambfz.g().g(), "last_successful_sync_time", 0L);
        l1 = l2;
        if (l2 == -1L) {
          l1 = parambfz.a(paramInt);
        }
        if (a) {
          new StringBuilder(52).append("requesting conversations before ").append(l1);
        }
        if (ezi.a("Babel_ConversationsData", 3)) {
          ezi.a("Babel_ConversationsData", 124 + "create SRC from scroll back, filter=" + paramInt + ", oldestConversationTimestamp=" + l1 + ", suppressNotification=true", new Object[0]);
        }
        if (localexr == null) {
          break label347;
        }
        localexr.b(45 + "continuationEndTimeStamp=" + l1);
      }
      finally
      {
        label272:
        parambfz.c();
      }
      if (localexr != null) {
        localexr.b("calledSRC");
      }
      paramdyy.a(new dpz(l1, paramInt));
      continue;
      label347:
      do
      {
        if (localexr != null) {
          localexr.b("empty");
        }
        if (!ezi.a("Babel_ConversationsData", 3)) {
          break;
        }
        ezi.a("Babel_ConversationsData", "requestMoreConversations - db empty, warm sync executing doing nothing", new Object[0]);
        break;
        if ((l1 > 0L) || (l3 != 0L)) {
          break label272;
        }
      } while (paramInt == 1);
    }
  }
  
  public static void a(bfz parambfz, dyy paramdyy, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    ezi.a("Babel_ConversationsData", "requestWarmSync", new Object[0]);
    parambfz.a();
    for (;;)
    {
      Object localObject3;
      try
      {
        long l = bff.a(aal.oJ, parambfz.g().g(), "last_successful_sync_time", 0L);
        if (l == 0L)
        {
          if (a)
          {
            paramString = String.valueOf(parambfz.g().a());
            new StringBuilder(String.valueOf(paramString).length() + 58).append("Warm sync fall back to cold sync for: ").append(paramString).append(", create SRC request");
          }
          paramdyy.a(new dpz(5, null));
          paramdyy.a(new dpz(6, null));
          parambfz.b();
          parambfz.c();
          paramdyy = parambfz.f();
          if ((aal.a(paramdyy, "babel_gsi_atwarmsync", true)) && (!((eot)ilh.a(paramdyy, eot.class)).a(parambfz.h()))) {
            RealTimeChatService.a(parambfz.g());
          }
          return;
        }
        localObject2 = parambfz.d(l);
        LinkedList localLinkedList = new LinkedList();
        localObject1 = new LinkedList();
        Iterator localIterator = ((List)localObject2).iterator();
        localObject2 = null;
        if (localIterator.hasNext())
        {
          Object localObject4 = (Pair)localIterator.next();
          localObject3 = (String)first;
          localObject4 = (String)second;
          if (a) {
            ezi.a("Babel_ConversationsData", String.valueOf(localObject3).length() + 38 + String.valueOf(localObject4).length() + "Warm sync new event since last sync: " + (String)localObject3 + " " + (String)localObject4, new Object[0]);
          }
          if ((localObject2 == null) || (!((String)localObject2).equals(localObject3)))
          {
            if (localObject2 != null) {
              localLinkedList.add(new dpg((String)localObject2, (List)localObject1));
            }
            localObject2 = new LinkedList();
            localObject1 = localObject3;
            ((List)localObject2).add(localObject4);
            localObject3 = localObject2;
            localObject2 = localObject1;
            localObject1 = localObject3;
          }
        }
        else
        {
          if (localObject2 != null) {
            localLinkedList.add(new dpg((String)localObject2, (List)localObject1));
          }
          paramString = new dpy(l, localLinkedList, parambfz.n(), paramBoolean1, paramBoolean2, paramString);
          if (ezi.a("Babel_ConversationsData", 3)) {
            ezi.a("Babel_ConversationsData", 101 + "SyncAllNewEventsRequest " + l + " noMissedEventsExpected=" + paramBoolean1 + " suppressNotifications=" + paramBoolean2, new Object[0]);
          }
          paramdyy.a(paramString);
          continue;
        }
        localObject3 = localObject1;
      }
      finally
      {
        parambfz.c();
      }
      Object localObject1 = localObject2;
      Object localObject2 = localObject3;
    }
  }
  
  public static void a(bfz parambfz, efr paramefr)
  {
    if (!parambfz.g().b().equals(paramefr.b()))
    {
      parambfz = new egy(paramefr.a(), paramefr.b(), paramefr.c());
      ((biw)ilh.a(aal.oJ, biw.class)).a(parambfz);
      RealTimeChatService.a(parambfz);
    }
  }
  
  public static void a(bfz parambfz, egf paramegf, dyy paramdyy, long paramLong1, long paramLong2, long paramLong3)
  {
    if ((paramegf instanceof egl))
    {
      paramdyy = (egl)paramegf;
      paramegf = paramdyy.a();
      paramdyy = paramdyy.d();
      parambfz.a(paramegf, paramdyy, 1);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("MEO sync: conid: ").append(paramegf).append(" msgid: ").append(paramdyy);
      int i = parambfz.g().g();
      if (dvp.V.b(i)) {
        aal.a(parambfz.g().g(), 2906, localStringBuilder.toString());
      }
      d(parambfz, paramegf);
    }
    do
    {
      return;
      if ((paramegf instanceof efr))
      {
        paramegf = (efr)paramegf;
        new edn(paramegf, false, paramLong1, 0L, paramLong2, paramLong3).b(parambfz, paramdyy);
        a(parambfz, paramegf);
        return;
      }
      if ((paramegf instanceof egj))
      {
        a(parambfz, (egj)paramegf, paramdyy, false);
        return;
      }
      if ((paramegf instanceof egb))
      {
        new edl((egb)paramegf).b(parambfz, paramdyy);
        return;
      }
      if ((paramegf instanceof egg))
      {
        a(parambfz, (egg)paramegf, paramdyy);
        return;
      }
    } while (!(paramegf instanceof egm));
    new edp((egm)paramegf).c(parambfz);
  }
  
  @Deprecated
  private static void a(bfz parambfz, egh paramegh, dyy paramdyy)
  {
    parambfz.a();
    try
    {
      int i = parambfz.g().g();
      if ((dvp.v.b(i)) && (dvp.x.b(i))) {
        paramdyy.a(i);
      }
      parambfz.a(paramegh.e());
      if (dvp.V.b(i)) {
        aal.a(i, 2678, paramegh.d());
      }
      parambfz.b();
      parambfz.c();
      paramegh = paramegh.f().iterator();
      while (paramegh.hasNext()) {
        d(parambfz, (String)paramegh.next());
      }
      return;
    }
    finally
    {
      parambfz.c();
    }
  }
  
  public static void a(bfz parambfz, egj paramegj, dyy paramdyy, boolean paramBoolean)
  {
    long l = paramegj.c();
    String str = paramegj.a();
    czb localczb = paramegj.b();
    Object localObject2;
    if (a)
    {
      i = paramegj.d();
      localObject2 = String.valueOf(localczb);
      if (paramegj.g() == null)
      {
        localObject1 = "(null)";
        label49:
        localObject1 = String.valueOf(localObject1);
        new StringBuilder(String.valueOf(str).length() + 119 + String.valueOf(localObject2).length() + String.valueOf(localObject1).length()).append("processMembershipChange conversationId: ").append(str).append(" type: ").append(i).append(" sender: ").append((String)localObject2).append(" participant count: ").append((String)localObject1).append(" timestamp: ").append(l);
      }
    }
    else if (paramegj.g().size() == 0)
    {
      localObject1 = String.valueOf(str);
      if (((String)localObject1).length() == 0) {
        break label254;
      }
    }
    label254:
    for (Object localObject1 = "empty participants in membership change ".concat((String)localObject1);; localObject1 = new String("empty participants in membership change "))
    {
      ezi.e("Babel_ConversationsData", (String)localObject1, new Object[0]);
      switch (paramegj.d())
      {
      default: 
        ezi.d("Babel_ConversationsData", "Ignoring unsupported membership change event", new Object[0]);
        return;
        localObject1 = Integer.valueOf(paramegj.g().size());
        break label49;
      }
    }
    if ((RealTimeChatService.d(parambfz.g(), str)) || (localczb.a(parambfz.g().b()))) {}
    for (int i = 0;; i = 1)
    {
      if (paramBoolean)
      {
        localObject1 = paramegj.g().iterator();
        while (((Iterator)localObject1).hasNext()) {
          parambfz.a(str, (czb)((Iterator)localObject1).next(), true);
        }
      }
      localObject1 = parambfz.a(str, paramegj.g());
      l = parambfz.a(str, paramegj.j(), emc.e, localczb, emd.m, l, paramegj.k(), paramegj.l(), null, (String)localObject1);
      parambfz.a(str, paramegj.c(), paramegj.k(), 4, localczb, l, emc.e, null, (String)localObject1);
      if (i == 0) {
        break;
      }
      paramdyy.a(paramegj.c(), parambfz.g().g());
      return;
      paramdyy = null;
      if (paramegj.g().size() > 0)
      {
        localObject1 = (czb)paramegj.g().get(0);
        if (localObject1 != null) {
          if ((paramBoolean) && (parambfz.g().b().equals(localObject1))) {
            if (str != null)
            {
              parambfz.j(str);
              i = 1;
            }
          }
        }
      }
      while (i == 0)
      {
        localObject2 = emc.e;
        if (paramegj.e() == 1) {}
        for (localObject1 = emd.o;; localObject1 = emd.l)
        {
          parambfz.a(str, String.valueOf(l), (emc)localObject2, localczb, (emd)localObject1, l, paramegj.k(), paramegj.l(), null, paramdyy);
          return;
          ezi.d("Babel_ConversationsData", "attempt to process presence for a nonexistant conversation id [null]", new Object[0]);
          i = 0;
          break;
          if (paramBoolean) {
            parambfz.a(str, (czb)localObject1, false);
          }
          paramdyy = new ArrayList();
          paramdyy.add(localObject1);
          paramdyy = parambfz.a(str, paramdyy);
          i = 0;
          break;
        }
        i = 0;
      }
      break;
    }
  }
  
  public static void a(bfz parambfz, egs paramegs, dyy paramdyy, long paramLong1, long paramLong2, long paramLong3)
  {
    Object localObject2;
    Object localObject1;
    long l;
    if ((paramegs instanceof egf))
    {
      localObject2 = (egf)paramegs;
      localObject1 = ((egf)localObject2).a();
      l = ((egf)localObject2).c();
      if (((egf)localObject2).r())
      {
        if (a(parambfz, (String)localObject1, l, paramdyy, (egf)localObject2)) {
          break label552;
        }
        if (a)
        {
          parambfz = String.valueOf(((egf)localObject2).j());
          new StringBuilder(String.valueOf(localObject1).length() + 68 + String.valueOf(parambfz).length()).append("processEvent saving event ").append((String)localObject1).append(" eventId: ").append(parambfz).append(" timestamp: ").append(l);
        }
      }
    }
    Object localObject3;
    int i;
    label552:
    label859:
    boolean bool;
    for (;;)
    {
      return;
      localObject3 = parambfz.g().b();
      paramegs = ((egf)localObject2).a();
      Object localObject4 = ((egf)localObject2).b();
      if (((czb)localObject4).a()) {
        ezi.e("Babel_ConversationsData", "Sender id for unpersisted event should not be empty", new Object[0]);
      }
      Object localObject5;
      do
      {
        i = 0;
        if (i != 0) {
          break label552;
        }
        if (!a) {
          break;
        }
        parambfz = String.valueOf(((egf)localObject2).j());
        new StringBuilder(String.valueOf(localObject1).length() + 78 + String.valueOf(parambfz).length()).append("Unable to process unpersisted event ").append((String)localObject1).append(" eventId: ").append(parambfz).append(" timestamp: ").append(l);
        return;
        if (!((czb)localObject4).equals(localObject3))
        {
          localObject5 = parambfz.a((czb)localObject4, false, 1);
          if ((localObject5 != null) && (!bfz.a(a)))
          {
            if (a)
            {
              localObject3 = a;
              new StringBuilder(String.valueOf(paramegs).length() + 43 + String.valueOf(localObject3).length()).append("unpersisted conversation ").append(paramegs).append(" exists locally as").append((String)localObject3);
            }
            ((egf)localObject2).a(a);
          }
          for (;;)
          {
            i = 1;
            break;
            if (ezi.a("Babel_ConversationsData", 3)) {
              ezi.a("Babel_ConversationsData", String.valueOf(paramegs).length() + 36 + "conversation " + paramegs + " does not exist locally", new Object[0]);
            }
            parambfz.a(paramegs, ((egf)localObject2).c(), (czb)localObject4);
            parambfz.C(paramegs);
            parambfz.a(paramegs, aal.a((czb)localObject4, null, null, null, null, null));
            localObject5 = new ArrayList();
            ((List)localObject5).add(localObject4);
            ((List)localObject5).add(localObject3);
            paramdyy.a(aal.oJ, parambfz, paramegs, (List)localObject5);
            b(parambfz, paramegs);
          }
        }
      } while (!ezi.a("Babel_ConversationsData", 3));
      paramegs = String.valueOf(paramegs);
      if (paramegs.length() != 0) {}
      for (paramegs = "Only self user Id is present, cannot determine conversation for ".concat(paramegs);; paramegs = new String("Only self user Id is present, cannot determine conversation for "))
      {
        ezi.a("Babel_ConversationsData", paramegs, new Object[0]);
        break;
      }
      paramdyy.a(aal.oJ, parambfz, (String)localObject1, ((egf)localObject2).f());
      if ((localObject2 instanceof efr))
      {
        paramegs = (efr)localObject2;
        if (a)
        {
          localObject3 = paramegs.g();
          if (localObject3 != null)
          {
            localObject4 = String.valueOf(parambfz.g().a());
            new StringBuilder(String.valueOf(localObject4).length() + 34 + String.valueOf(localObject3).length()).append("Received stress message push for ").append((String)localObject4).append(":").append((String)localObject3);
          }
        }
        new edn(paramegs, true, paramLong1, paramLong2, paramLong3, 0L).a(parambfz, paramdyy);
        a(parambfz, paramegs);
        if (!parambfz.g().b().equals(paramegs.b())) {
          ((con)ilh.a(aal.oJ, con.class)).a(parambfz.g().g(), coo.b);
        }
      }
      while (n)
      {
        parambfz.h((String)localObject1, l);
        return;
        if ((localObject2 instanceof egj))
        {
          paramegs = (egj)localObject2;
          localObject3 = paramegs.a();
          if (a)
          {
            localObject4 = String.valueOf("processMembershipChange conversationId: ");
            localObject5 = String.valueOf(localObject3);
            if (((String)localObject5).length() == 0) {
              break label859;
            }
            ((String)localObject4).concat((String)localObject5);
          }
          for (;;)
          {
            parambfz.a();
            try
            {
              a(parambfz, paramegs, paramdyy, true);
              parambfz.b();
              parambfz.c();
              ezi.a("Babel_ConversationsData", "updating conversation (name/avatars) because of a memebership change.", new Object[0]);
              b(parambfz, (String)localObject3);
              d(parambfz);
              d(parambfz, (String)localObject3);
              c(parambfz, (String)localObject3);
            }
            finally
            {
              parambfz.c();
            }
            new String((String)localObject4);
          }
        }
        new edl((egb)localObject2).a(parambfz, paramdyy);
        continue;
        if ((localObject2 instanceof egg))
        {
          paramegs = (egg)localObject2;
          parambfz.a();
        }
        try
        {
          bool = a(parambfz, paramegs, paramdyy);
          parambfz.b();
          parambfz.c();
          if (bool) {
            d(parambfz, paramegs.a());
          }
          new edo((egg)localObject2).b(parambfz);
        }
        finally
        {
          parambfz.c();
        }
        new edp((egm)localObject2).b(parambfz);
        continue;
        if ((localObject2 instanceof egw)) {
          new edo((egw)localObject2).b(parambfz);
        }
      }
      continue;
      if ((paramegs instanceof egy))
      {
        localObject1 = (egy)paramegs;
        if (a)
        {
          paramegs = String.valueOf("processWatermarkNotification ConversationId: ");
          localObject2 = String.valueOf(((egy)localObject1).a());
          paramLong1 = ((egy)localObject1).c();
          new StringBuilder(String.valueOf(paramegs).length() + 32 + String.valueOf(localObject2).length()).append(paramegs).append((String)localObject2).append(" Timestamp: ").append(paramLong1);
        }
        localObject2 = ((egy)localObject1).a();
        parambfz.a();
        try
        {
          if (a)
          {
            if (parambfz.g().b().equals(((egy)localObject1).b()))
            {
              paramegs = "self";
              localObject3 = String.valueOf("processWatermarkNotificationInTransaction  conversationId: ");
              localObject4 = String.valueOf(((egy)localObject1).a());
              paramLong1 = ((egy)localObject1).c();
              localObject5 = String.valueOf(new Date(((egy)localObject1).c() / 1000L));
              new StringBuilder(String.valueOf(localObject3).length() + 45 + String.valueOf(localObject4).length() + String.valueOf(paramegs).length() + String.valueOf(localObject5).length()).append((String)localObject3).append((String)localObject4).append(" chatId: ").append(paramegs).append(" timestamp: ").append(paramLong1).append("  (").append((String)localObject5).append(")");
            }
          }
          else
          {
            if (!parambfz.g().b().equals(((egy)localObject1).b())) {
              break label1392;
            }
            parambfz.a(((egy)localObject1).a(), ((egy)localObject1).c(), false, "WatermarkNotification");
            i = parambfz.g().g();
            if (!dvp.x.b(i)) {
              paramdyy.a(parambfz.g().g());
            }
          }
          for (;;)
          {
            parambfz.b();
            parambfz.c();
            d(parambfz, (String)localObject2);
            return;
            paramegs = bb;
            break;
            label1392:
            ((biw)ilh.a(aal.oJ, biw.class)).a((egy)localObject1);
            RealTimeChatService.a((egy)localObject1);
          }
          if (!(paramegs instanceof egh)) {
            break label1461;
          }
        }
        finally
        {
          parambfz.c();
        }
      }
      i = parambfz.g().g();
      if (dvp.v.b(i))
      {
        a(parambfz, (egh)paramegs, paramdyy);
        return;
      }
      label1461:
      if ((paramegs instanceof ega))
      {
        if (!a(parambfz.g(), (ega)paramegs))
        {
          aal.a(parambfz.g(), 1839);
          return;
        }
        paramegs = (ega)paramegs;
        parambfz.a();
        try
        {
          bool = a(parambfz, paramegs, 0L, null, paramdyy, null, false);
          parambfz.b();
          parambfz.c();
          if (bool)
          {
            d(parambfz);
            return;
          }
        }
        finally
        {
          parambfz.c();
        }
      }
    }
    if ((paramegs instanceof egu))
    {
      paramegs = (egu)paramegs;
      if (a)
      {
        paramdyy = String.valueOf("processFocus conversationId: ");
        localObject1 = String.valueOf(paramegs.a());
        localObject2 = String.valueOf(paramegs.b());
        i = paramegs.d();
        paramLong1 = paramegs.c();
        localObject3 = String.valueOf(new Date(paramegs.c() / 1000L));
        new StringBuilder(String.valueOf(paramdyy).length() + 68 + String.valueOf(localObject1).length() + String.valueOf(localObject2).length() + String.valueOf(localObject3).length()).append(paramdyy).append((String)localObject1).append(" senderId: ").append((String)localObject2).append(" type: ").append(i).append(" and timestamp ").append(paramLong1).append("  (").append((String)localObject3).append(")");
      }
      parambfz.a();
      for (;;)
      {
        try
        {
          if (paramegs.a() == null)
          {
            ezi.e("Babel_ConversationsData", "Received a Presence message without conversation id", new Object[0]);
            parambfz.b();
            return;
          }
          paramdyy = paramegs.a();
          if (!parambfz.g().b().equals(paramegs.b()))
          {
            localObject1 = paramegs.b();
            if (1 == paramegs.d())
            {
              bool = true;
              RealTimeChatService.a(paramdyy, (czb)localObject1, bool);
            }
            else
            {
              bool = false;
            }
          }
        }
        finally
        {
          parambfz.c();
        }
      }
    }
    if ((paramegs instanceof egv))
    {
      paramegs = (egv)paramegs;
      if (a)
      {
        paramdyy = String.valueOf("processTyping senderId: ");
        localObject1 = String.valueOf(paramegs.b());
        localObject2 = String.valueOf(paramegs.a());
        i = paramegs.d();
        paramLong1 = paramegs.c();
        localObject3 = String.valueOf(new Date(paramegs.c() / 1000L));
        new StringBuilder(String.valueOf(paramdyy).length() + 70 + String.valueOf(localObject1).length() + String.valueOf(localObject2).length() + String.valueOf(localObject3).length()).append(paramdyy).append((String)localObject1).append(" conversationId: ").append((String)localObject2).append(" type: ").append(i).append(" timestamp ").append(paramLong1).append("  (").append((String)localObject3).append(")");
      }
      parambfz.a();
      for (;;)
      {
        try
        {
          paramdyy = parambfz.g();
          if (!paramdyy.b().equals(paramegs.b()))
          {
            localObject1 = paramegs.a();
            if (localObject1 == null) {
              ezi.d("Babel_ConversationsData", "attempt to process typing for a nonexistent conversation id [null]", new Object[0]);
            }
          }
          else
          {
            parambfz.b();
            return;
          }
          localObject2 = parambfz.a(paramegs.b());
          localObject3 = paramegs.b();
          paramLong1 = paramegs.c();
          if (paramegs.d() == 1)
          {
            bool = true;
            RealTimeChatService.a(paramdyy, (String)localObject1, (czb)localObject3, (String)localObject2, paramLong1, bool);
          }
          else
          {
            bool = false;
          }
        }
        finally
        {
          parambfz.c();
        }
      }
    }
    parambfz = String.valueOf(paramegs.getClass());
    ezi.d("Babel_ConversationsData", String.valueOf(parambfz).length() + 41 + "Unexpected update type from babel server " + parambfz, new Object[0]);
  }
  
  public static void a(bfz parambfz, String paramString)
  {
    parambfz.ab(paramString);
    d(parambfz);
  }
  
  public static void a(bfz parambfz, String paramString, long paramLong)
  {
    parambfz.l(paramString, -1L);
    if ((0x4 & paramLong) != 0L) {
      new dva(paramString).a(parambfz);
    }
    if ((0x2 & paramLong) != 0L) {
      RealTimeChatService.a(parambfz, paramString, null);
    }
    d(parambfz);
  }
  
  public static void a(bfz parambfz, String paramString, bgd parambgd, long paramLong1, dyy paramdyy, long paramLong2, long paramLong3)
  {
    if (ezi.a("Babel_ConversationsData", 3)) {
      ezi.a("Babel_ConversationsData", 55 + "resendMessageLocally messageRowId: " + paramLong1, new Object[0]);
    }
    parambfz.a();
    long l = SystemClock.elapsedRealtime();
    for (;;)
    {
      bgo localbgo;
      try
      {
        localbgo = parambfz.b(paramLong1);
        a(parambfz, parambgd, paramLong1, true, paramdyy);
        parambfz.b();
        parambfz.c();
        if ((localbgo != null) && (a != null))
        {
          paramLong1 = SystemClock.elapsedRealtime();
          int i = parambfz.g().g();
          parambgd = new csn().a(paramString);
          if (bfz.a(a))
          {
            parambgd.b(a);
            aen.a(i, paramLong2 / 1000L, 10, parambgd.a(302));
            aen.a(i, paramLong3 / 1000L, 10, parambgd.a(205));
            aen.a(i, l, 10, parambgd.a(105));
            aen.a(i, paramLong1, 10, parambgd.a(106));
          }
        }
        else
        {
          d(parambfz, paramString);
          return;
        }
      }
      finally
      {
        parambfz.c();
      }
      parambgd.c(a);
    }
  }
  
  /* Error */
  public static void a(bfz parambfz, String paramString, dyy paramdyy)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 84	bfz:a	()V
    //   4: aload_0
    //   5: aload_1
    //   6: invokevirtual 1586	bfz:f	(Ljava/lang/String;)Lbgd;
    //   9: astore 5
    //   11: aload 5
    //   13: ifnonnull +126 -> 139
    //   16: ldc_w 1588
    //   19: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   22: astore 5
    //   24: aload_0
    //   25: invokevirtual 96	bfz:g	()Lbfd;
    //   28: invokevirtual 1154	bfd:a	()Ljava/lang/String;
    //   31: invokestatic 1590	ezi:b	(Ljava/lang/String;)Ljava/lang/String;
    //   34: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   37: astore 6
    //   39: ldc -128
    //   41: new 33	java/lang/StringBuilder
    //   44: dup
    //   45: aload 5
    //   47: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   50: invokevirtual 43	java/lang/String:length	()I
    //   53: bipush 16
    //   55: iadd
    //   56: aload 6
    //   58: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   61: invokevirtual 43	java/lang/String:length	()I
    //   64: iadd
    //   65: aload_1
    //   66: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   69: invokevirtual 43	java/lang/String:length	()I
    //   72: iadd
    //   73: invokespecial 47	java/lang/StringBuilder:<init>	(I)V
    //   76: aload 5
    //   78: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: aload 6
    //   83: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: ldc_w 1592
    //   89: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: aload_1
    //   93: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: iconst_0
    //   100: anewarray 4	java/lang/Object
    //   103: invokestatic 1003	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   106: new 1594	doz
    //   109: dup
    //   110: aload_1
    //   111: iconst_1
    //   112: iconst_1
    //   113: iconst_0
    //   114: aconst_null
    //   115: ldc2_w 218
    //   118: aconst_null
    //   119: lconst_0
    //   120: aconst_null
    //   121: invokespecial 1597	doz:<init>	(Ljava/lang/String;ZZZ[BJLjava/lang/String;JLegf;)V
    //   124: astore_1
    //   125: aload_2
    //   126: aload_1
    //   127: invokevirtual 189	dyy:a	(Leff;)V
    //   130: aload_0
    //   131: invokevirtual 90	bfz:b	()V
    //   134: aload_0
    //   135: invokevirtual 92	bfz:c	()V
    //   138: return
    //   139: aload 5
    //   141: getfield 1601	bgd:p	Z
    //   144: ifeq +66 -> 210
    //   147: ldc -128
    //   149: iconst_3
    //   150: invokestatic 131	ezi:a	(Ljava/lang/String;I)Z
    //   153: ifeq +48 -> 201
    //   156: ldc -128
    //   158: new 33	java/lang/StringBuilder
    //   161: dup
    //   162: aload_1
    //   163: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   166: invokevirtual 43	java/lang/String:length	()I
    //   169: bipush 78
    //   171: iadd
    //   172: invokespecial 47	java/lang/StringBuilder:<init>	(I)V
    //   175: ldc_w 1603
    //   178: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: aload_1
    //   182: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: ldc_w 1605
    //   188: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: iconst_0
    //   195: anewarray 4	java/lang/Object
    //   198: invokestatic 140	ezi:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   201: aload_0
    //   202: invokevirtual 90	bfz:b	()V
    //   205: aload_0
    //   206: invokevirtual 92	bfz:c	()V
    //   209: return
    //   210: ldc -128
    //   212: iconst_3
    //   213: invokestatic 131	ezi:a	(Ljava/lang/String;I)Z
    //   216: ifeq +91 -> 307
    //   219: aload 5
    //   221: getfield 1608	bgd:f	[B
    //   224: invokestatic 1613	java/util/Arrays:toString	([B)Ljava/lang/String;
    //   227: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   230: astore 6
    //   232: aload 5
    //   234: getfield 1615	bgd:g	J
    //   237: lstore_3
    //   238: ldc -128
    //   240: new 33	java/lang/StringBuilder
    //   243: dup
    //   244: aload 6
    //   246: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   249: invokevirtual 43	java/lang/String:length	()I
    //   252: bipush 74
    //   254: iadd
    //   255: aload_1
    //   256: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   259: invokevirtual 43	java/lang/String:length	()I
    //   262: iadd
    //   263: invokespecial 47	java/lang/StringBuilder:<init>	(I)V
    //   266: ldc_w 1617
    //   269: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: aload 6
    //   274: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: ldc_w 1619
    //   280: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: lload_3
    //   284: invokevirtual 202	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   287: ldc_w 1621
    //   290: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   293: aload_1
    //   294: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   300: iconst_0
    //   301: anewarray 4	java/lang/Object
    //   304: invokestatic 140	ezi:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   307: new 1594	doz
    //   310: dup
    //   311: aload_1
    //   312: iconst_0
    //   313: iconst_1
    //   314: iconst_0
    //   315: aload 5
    //   317: getfield 1608	bgd:f	[B
    //   320: aload 5
    //   322: getfield 1615	bgd:g	J
    //   325: aconst_null
    //   326: lconst_0
    //   327: aconst_null
    //   328: invokespecial 1597	doz:<init>	(Ljava/lang/String;ZZZ[BJLjava/lang/String;JLegf;)V
    //   331: astore_1
    //   332: goto -207 -> 125
    //   335: astore_1
    //   336: aload_0
    //   337: invokevirtual 92	bfz:c	()V
    //   340: aload_1
    //   341: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	342	0	parambfz	bfz
    //   0	342	1	paramString	String
    //   0	342	2	paramdyy	dyy
    //   237	47	3	l	long
    //   9	312	5	localObject	Object
    //   37	236	6	str	String
    // Exception table:
    //   from	to	target	type
    //   4	11	335	finally
    //   16	125	335	finally
    //   125	134	335	finally
    //   139	201	335	finally
    //   201	205	335	finally
    //   210	307	335	finally
    //   307	332	335	finally
  }
  
  public static void a(bfz parambfz, String paramString1, String paramString2, Uri paramUri, long paramLong1, long paramLong2, boolean paramBoolean, long paramLong3, long paramLong4)
  {
    for (;;)
    {
      Object localObject;
      try
      {
        parambfz.a();
        localObject = parambfz.g(paramString1, paramString2);
        if (localObject == null)
        {
          localObject = String.valueOf("processSmsMmsSendResponse: received response for nonexistant  clientGeneratedId ");
          paramString2 = String.valueOf(paramString2);
          if (paramString2.length() != 0)
          {
            paramString2 = ((String)localObject).concat(paramString2);
            ezi.e("Babel_ConversationsData", paramString2, new Object[0]);
            parambfz.b();
            parambfz.c();
            d(parambfz, paramString1);
            b(paramUri);
            return;
          }
          paramString2 = new String((String)localObject);
          continue;
        }
        if (!paramBoolean) {
          break label113;
        }
      }
      finally
      {
        parambfz.c();
      }
      a(parambfz.g(), paramUri, paramLong3, Boolean.valueOf(true), false, true);
      label113:
      parambfz.a(paramString1, aal.a((Long)localObject, 0L), paramLong2, 0L);
      parambfz.a(paramString1, paramString2, paramUri, paramLong1);
      parambfz.i(paramString1, paramLong2);
      parambfz.n(paramString1, paramLong4);
    }
  }
  
  public static void a(bfz parambfz, String paramString1, String paramString2, emc paramemc, int paramInt)
  {
    parambfz.a(paramString1, paramString2, paramemc, paramInt);
  }
  
  /* Error */
  private static void a(bfz parambfz, String paramString1, String paramString2, String paramString3, boolean paramBoolean, long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 96	bfz:g	()Lbfd;
    //   4: astore 15
    //   6: getstatic 102	aal:oJ	Landroid/content/Context;
    //   9: astore 16
    //   11: aload 16
    //   13: invokevirtual 1644	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   16: astore 17
    //   18: aload_3
    //   19: invokestatic 393	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   22: ifne +52 -> 74
    //   25: aload_3
    //   26: invokestatic 339	aal:l	(Ljava/lang/String;)Lczb;
    //   29: astore 13
    //   31: iload 4
    //   33: ifeq +35 -> 68
    //   36: aload 13
    //   38: astore 14
    //   40: aload_0
    //   41: aload 14
    //   43: aload_3
    //   44: invokestatic 1647	enn:a	(Lbfz;Lczb;Ljava/lang/String;)Ljava/lang/String;
    //   47: astore_3
    //   48: aload_3
    //   49: invokestatic 393	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   52: ifeq +53 -> 105
    //   55: ldc -128
    //   57: ldc_w 1649
    //   60: iconst_0
    //   61: anewarray 4	java/lang/Object
    //   64: invokestatic 206	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   67: return
    //   68: aconst_null
    //   69: astore 14
    //   71: goto -31 -> 40
    //   74: invokestatic 1652	enn:g	()Lcyx;
    //   77: astore_3
    //   78: aload_3
    //   79: getfield 1657	cyx:b	Lczb;
    //   82: astore 13
    //   84: aload_0
    //   85: iload 4
    //   87: iconst_1
    //   88: anewarray 1654	cyx
    //   91: dup
    //   92: iconst_0
    //   93: aload_3
    //   94: aastore
    //   95: invokestatic 1661	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   98: invokestatic 1664	enn:a	(Lbfz;ZLjava/util/List;)Ljava/lang/String;
    //   101: astore_3
    //   102: goto -54 -> 48
    //   105: aload_0
    //   106: aload_3
    //   107: sipush 1000
    //   110: invokevirtual 892	bfz:b	(Ljava/lang/String;I)J
    //   113: lstore 11
    //   115: lload 5
    //   117: invokestatic 1667	enn:b	(J)J
    //   120: invokestatic 881	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   123: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   126: astore 14
    //   128: aload 17
    //   130: getstatic 1670	com/google/android/apps/hangouts/hangout/StressMode:eZ	I
    //   133: invokevirtual 1673	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   136: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   139: astore 18
    //   141: aload 18
    //   143: invokevirtual 43	java/lang/String:length	()I
    //   146: ifeq +164 -> 310
    //   149: aload 14
    //   151: aload 18
    //   153: invokevirtual 137	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   156: astore 14
    //   158: aload 17
    //   160: iload 10
    //   162: iconst_2
    //   163: anewarray 4	java/lang/Object
    //   166: dup
    //   167: iconst_0
    //   168: aload 14
    //   170: aastore
    //   171: dup
    //   172: iconst_1
    //   173: aload 16
    //   175: ldc2_w 220
    //   178: lload 7
    //   180: lmul
    //   181: ldc_w 1674
    //   184: invokestatic 1680	android/text/format/DateUtils:formatDateTime	(Landroid/content/Context;JI)Ljava/lang/String;
    //   187: aastore
    //   188: invokevirtual 1683	android/content/res/Resources:getString	(I[Ljava/lang/Object;)Ljava/lang/String;
    //   191: astore 14
    //   193: invokestatic 737	bfz:i	()Ljava/lang/String;
    //   196: astore 17
    //   198: aload 14
    //   200: iconst_2
    //   201: invokestatic 1686	aal:a	(Ljava/lang/String;I)Ljava/util/List;
    //   204: astore 18
    //   206: iload 9
    //   208: ifne +116 -> 324
    //   211: getstatic 486	emc:e	Lemc;
    //   214: astore 14
    //   216: new 756	edn
    //   219: dup
    //   220: aload_3
    //   221: aload 13
    //   223: lload 11
    //   225: aload 17
    //   227: aload 18
    //   229: aconst_null
    //   230: aconst_null
    //   231: iconst_0
    //   232: aload 14
    //   234: iload 9
    //   236: iconst_3
    //   237: aconst_null
    //   238: iconst_2
    //   239: anewarray 35	java/lang/String
    //   242: dup
    //   243: iconst_0
    //   244: aload_1
    //   245: aastore
    //   246: dup
    //   247: iconst_1
    //   248: aload_2
    //   249: aastore
    //   250: invokestatic 746	aal:a	([Ljava/lang/String;)Ljava/lang/String;
    //   253: lconst_0
    //   254: iconst_0
    //   255: lconst_0
    //   256: aconst_null
    //   257: iconst_2
    //   258: aconst_null
    //   259: iconst_0
    //   260: lconst_0
    //   261: invokespecial 759	edn:<init>	(Ljava/lang/String;Lczb;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLemc;IILjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;IJ)V
    //   264: iconst_2
    //   265: invokevirtual 762	edn:a	(I)Ledn;
    //   268: aload_0
    //   269: new 186	dyy
    //   272: dup
    //   273: invokespecial 735	dyy:<init>	()V
    //   276: invokevirtual 773	edn:a	(Lbfz;Ldyy;)V
    //   279: aload_0
    //   280: invokevirtual 84	bfz:a	()V
    //   283: aload_0
    //   284: aload_3
    //   285: lload 11
    //   287: invokevirtual 1445	bfz:h	(Ljava/lang/String;J)V
    //   290: iload 4
    //   292: ifeq +40 -> 332
    //   295: aload_0
    //   296: aload_3
    //   297: invokevirtual 88	bfz:v	(Ljava/lang/String;)I
    //   300: pop
    //   301: aload_0
    //   302: invokevirtual 90	bfz:b	()V
    //   305: aload_0
    //   306: invokevirtual 92	bfz:c	()V
    //   309: return
    //   310: new 35	java/lang/String
    //   313: dup
    //   314: aload 14
    //   316: invokespecial 197	java/lang/String:<init>	(Ljava/lang/String;)V
    //   319: astore 14
    //   321: goto -163 -> 158
    //   324: getstatic 509	emc:d	Lemc;
    //   327: astore 14
    //   329: goto -113 -> 216
    //   332: aload_0
    //   333: invokevirtual 96	bfz:g	()Lbfd;
    //   336: aload_3
    //   337: invokestatic 718	com/google/android/apps/hangouts/realtimechat/RealTimeChatService:d	(Lbfd;Ljava/lang/String;)Z
    //   340: ifne -39 -> 301
    //   343: aload 16
    //   345: ldc -88
    //   347: invokestatic 173	ilh:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   350: checkcast 168	cyh
    //   353: aload 15
    //   355: invokevirtual 106	bfd:g	()I
    //   358: iconst_0
    //   359: invokeinterface 176 3 0
    //   364: goto -63 -> 301
    //   367: astore_1
    //   368: aload_0
    //   369: invokevirtual 92	bfz:c	()V
    //   372: aload_1
    //   373: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	374	0	parambfz	bfz
    //   0	374	1	paramString1	String
    //   0	374	2	paramString2	String
    //   0	374	3	paramString3	String
    //   0	374	4	paramBoolean	boolean
    //   0	374	5	paramLong1	long
    //   0	374	7	paramLong2	long
    //   0	374	9	paramInt1	int
    //   0	374	10	paramInt2	int
    //   113	173	11	l	long
    //   29	193	13	localczb	czb
    //   38	290	14	localObject1	Object
    //   4	350	15	localbfd	bfd
    //   9	335	16	localContext	Context
    //   16	210	17	localObject2	Object
    //   139	89	18	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   283	290	367	finally
    //   295	301	367	finally
    //   301	305	367	finally
    //   332	364	367	finally
  }
  
  public static void a(bfz parambfz, String paramString, List<cyx> paramList)
  {
    if (ezi.a("Babel_ConversationsData", 3))
    {
      localObject = String.valueOf(paramList);
      ezi.a("Babel_ConversationsData", String.valueOf(paramString).length() + 87 + String.valueOf(localObject).length() + "forking a new conversation for an existing conversation " + paramString + " with additional participants: " + (String)localObject, new Object[0]);
    }
    Object localObject = parambfz.H(paramString);
    ((List)localObject).addAll(paramList);
    RealTimeChatService.a(parambfz.g(), aal.b((Collection)localObject), paramString);
  }
  
  public static void a(List<cyx> paramList)
  {
    Object localObject1;
    Object localObject4;
    if (ezi.a("Babel_ConversationsData", 3))
    {
      localObject4 = String.valueOf(localObject1);
      if (((String)localObject4).length() == 0) {
        break label150;
      }
      localObject4 = "inviteParticipantsLocally: conversationId=".concat((String)localObject4);
    }
    Object localObject6;
    boolean bool;
    Object localObject5;
    Object localObject2;
    dtw localdtw;
    label150:
    for (;;)
    {
      ezi.a("Babel_ConversationsData", (String)localObject4, new Object[0]);
      paramList.a();
      try
      {
        localObject6 = paramList.J((String)localObject1);
        bool = bfz.b((String)localObject1);
        localObject4 = new ArrayList();
        localObject5 = new ArrayList();
        localObject2 = ((List)localObject2).iterator();
        for (;;)
        {
          if (!((Iterator)localObject2).hasNext()) {
            break label293;
          }
          localdtw = (dtw)((Iterator)localObject2).next();
          if ((c == null) || (bool)) {
            break;
          }
          ((List)localObject4).add(dtw.b(c, e));
        }
        localObject4 = new String("inviteParticipantsLocally: conversationId=");
      }
      finally
      {
        paramList.c();
      }
    }
    czb localczb = localdtw.b();
    int i = 0;
    Iterator localIterator = ((eyq)localObject6).iterator();
    do
    {
      j = i;
      if (!localIterator.hasNext()) {
        break;
      }
    } while (!((czb)localIterator.next()).a(localczb));
    int j = 1;
    if (bool)
    {
      if (d == null) {
        break label480;
      }
      i = 1;
    }
    for (;;)
    {
      if ((j == 0) && (i != 0)) {
        ((List)localObject4).add(localdtw);
      }
      if (i != 0) {
        break;
      }
      ((List)localObject5).add(localdtw);
      break;
      if ((a != null) && (!localdtw.a()))
      {
        i = 1;
        continue;
        label293:
        localObject2 = paramList.g().b();
        localObject6 = paramList.b(str, (List)localObject5);
        if (((List)localObject5).size() > 0)
        {
          l1 = paramList.M(str);
          paramList.a(str, bfz.i(), emc.d, (czb)localObject2, emd.m, l1, -1L, 10, null, (String)localObject6);
        }
        if (((List)localObject4).size() == 0)
        {
          paramList.b();
          paramList.c();
          return;
        }
        localObject5 = paramList.b(str, (List)localObject4);
        localObject6 = bfz.i();
        long l1 = paramList.M(str);
        long l2 = paramList.a(str, (String)localObject6, emc.b, (czb)localObject2, emd.m, l1, -1L, 10, null, (String)localObject5);
        paramList.a(str, l1, -1L, 4, paramList.g().b(), l2, emc.b, null, (String)localObject5);
        if (!bfz.a(str))
        {
          Object localObject3;
          ((dyy)localObject3).a(new dop((String)localObject6, str, (List)localObject4, l1));
        }
        paramList.b();
        paramList.c();
        return;
        label480:
        i = 0;
      }
      else
      {
        i = 0;
      }
    }
  }
  
  private static void a(bfz parambfz, String paramString, List<cyx> paramList, List<axn> paramList1)
  {
    if (a)
    {
      String str = String.valueOf(paramString);
      if (str.length() == 0) {
        break label62;
      }
      "insertTemporaryConversationParticipants ".concat(str);
    }
    for (;;)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        parambfz.a(paramString, (cyx)paramList.next());
      }
      label62:
      new String("insertTemporaryConversationParticipants ");
    }
    if (paramList1 != null)
    {
      paramList = paramList1.iterator();
      while (paramList.hasNext()) {
        parambfz.a(paramString, (axn)paramList.next());
      }
    }
    parambfz.G(paramString);
    b(parambfz, paramString);
  }
  
  private static void a(bfz parambfz, String paramString, boolean paramBoolean)
  {
    if (a) {
      new StringBuilder(String.valueOf(paramString).length() + 25).append("processPendingMute ").append(paramString).append(" ").append(paramBoolean);
    }
    parambfz = parambfz.g();
    if (paramBoolean) {}
    for (int i = 10;; i = 30)
    {
      RealTimeChatService.a(parambfz, paramString, i);
      return;
    }
  }
  
  public static void a(bfz parambfz, String paramString, byte[] paramArrayOfByte, long paramLong)
  {
    long l = parambfz.h(paramString);
    if ((paramLong <= l) || (l == 0L)) {
      parambfz.a(paramString, paramArrayOfByte, paramLong);
    }
  }
  
  private static void a(bfz parambfz, List<cyx> paramList)
  {
    ContentValues localContentValues = new ContentValues();
    String[] arrayOfString = new String[1];
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (cyx)paramList.next();
      String str = ((cyx)localObject).f();
      if (str != null)
      {
        localContentValues.clear();
        localObject = b;
        localContentValues.put("phone_id", str);
        arrayOfString[0] = b;
        parambfz.e().a("participants", localContentValues, "chat_id=?", arrayOfString);
      }
    }
  }
  
  public static void a(bfz parambfz, List<dtv> paramList, String paramString1, String paramString2, long paramLong1, long paramLong2)
  {
    if (ezi.a("Babel_ConversationsData", 3)) {
      ezi.a("Babel_ConversationsData", "processContactErrorInTransaction", new Object[0]);
    }
    Object localObject = new ArrayList();
    String str = parambfz.c(paramString1, paramList);
    Iterator localIterator = paramList.iterator();
    int i = 0;
    int j = 0;
    int i1 = 0;
    while (localIterator.hasNext())
    {
      paramList = (dtv)localIterator.next();
      int m;
      int n;
      int k;
      if (b == 3)
      {
        m = 1;
        n = i;
        k = i1;
        label95:
        paramList = a;
        if (TextUtils.isEmpty(a)) {
          break label199;
        }
      }
      for (paramList = czb.a(a);; paramList = czb.b(b))
      {
        i1 = k;
        j = m;
        i = n;
        if (parambfz.c(paramList) != null) {
          break;
        }
        ((List)localObject).add(paramList);
        i1 = k;
        j = m;
        i = n;
        break;
        i1 = 1;
        k = i1;
        m = j;
        n = i;
        if (b != 4) {
          break label95;
        }
        n = 1;
        k = i1;
        m = j;
        break label95;
        label199:
        if (TextUtils.isEmpty(b)) {
          break label220;
        }
      }
      label220:
      ezi.e("Babel_ConversationsData", "processContactErrorInTransaction: server sends empty ids!", new Object[0]);
      i1 = k;
      j = m;
      i = n;
    }
    if (((List)localObject).size() > 0)
    {
      paramList = new dyy();
      paramList.a(parambfz.g());
      paramList.a(aal.oJ, parambfz, paramString1, (List)localObject);
      paramList.e();
    }
    localObject = emd.f;
    if (i != 0) {
      paramList = emd.n;
    }
    for (;;)
    {
      parambfz.a(paramString1, paramString2, emc.e, parambfz.g().b(), paramList, paramLong1, paramLong2, 30, null, str);
      parambfz.a(paramString1, paramString2, emc.d, 0);
      return;
      paramList = (List<dtv>)localObject;
      if (j != 0)
      {
        paramList = (List<dtv>)localObject;
        if (i1 == 0) {
          paramList = emd.p;
        }
      }
    }
  }
  
  public static void a(dyy paramdyy, bfz parambfz, String paramString)
  {
    bgd localbgd = parambfz.e(paramString);
    try
    {
      Cursor localCursor = parambfz.a(paramString, emc.b, new String[] { "_id" });
      try
      {
        if (a) {
          if (localCursor != null) {
            break label222;
          }
        }
        for (int i = -1;; i = localCursor.getCount())
        {
          new StringBuilder(String.valueOf(paramString).length() + 51).append("sendUnsentMessages ").append(paramString).append(" cursor ").append(i).append(" message rows");
          parambfz.a();
          if (localCursor != null) {}
          try
          {
            if (localCursor.moveToFirst()) {
              do
              {
                if (a)
                {
                  long l = localCursor.getLong(0);
                  new StringBuilder(String.valueOf(paramString).length() + 54).append("sendUnsentMessages ").append(paramString).append(" sending msgID ").append(l);
                }
                a(parambfz, localbgd, localCursor.getLong(0), false, paramdyy);
              } while (localCursor.moveToNext());
            }
            paramdyy.a(new dpi(paramString, parambfz.T(paramString)));
            parambfz.b();
            parambfz.c();
            if (localCursor != null) {
              localCursor.close();
            }
            return;
          }
          finally
          {
            label222:
            parambfz.c();
          }
        }
        if (parambfz == null) {
          break label254;
        }
      }
      finally
      {
        parambfz = localCursor;
      }
    }
    finally
    {
      label254:
      parambfz = null;
    }
    parambfz.close();
    throw paramdyy;
  }
  
  private static void a(dyy paramdyy, bgo parambgo, boolean paramBoolean)
  {
    String str = a;
    parambgo = b;
    if (paramBoolean) {}
    for (int i = 1;; i = 2)
    {
      paramdyy.a(new bvm(str, parambgo, i));
      return;
    }
  }
  
  public static void a(dyy paramdyy, String paramString, long paramLong)
  {
    if (ezi.a("Babel_ConversationsData", 3))
    {
      str = String.valueOf(paramString);
      if (str.length() == 0) {
        break label65;
      }
    }
    label65:
    for (String str = "requesting conversation metadata for ".concat(str);; str = new String("requesting conversation metadata for "))
    {
      ezi.a("Babel_ConversationsData", str, new Object[0]);
      paramdyy.a(new doz(paramString, true, false, false, null, 0L, null, paramLong, null));
      return;
    }
  }
  
  private static void a(List<dtl> paramList, String paramString)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (dtl)paramList.next();
      if (a)
      {
        String str = String.valueOf(a.b);
        long l = b;
        new StringBuilder(String.valueOf(str).length() + 82 + String.valueOf(paramString).length()).append("process userReadState  chatId: ").append(str).append("  conversationId: ").append(paramString).append("  timestamp: ").append(l);
      }
      localObject = new egy(paramString, a, b);
      ((biw)ilh.a(aal.oJ, biw.class)).a((egy)localObject);
      RealTimeChatService.a((egy)localObject);
    }
  }
  
  public static void a(SmsMessage[] paramArrayOfSmsMessage, bfd parambfd, int paramInt, Boolean paramBoolean)
  {
    Context localContext = aal.oJ;
    ContentValues localContentValues = enn.a(localContext, paramArrayOfSmsMessage, paramInt);
    String str1 = localContentValues.getAsString("address");
    String str2 = localContentValues.getAsString("body");
    if ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2)))
    {
      ezi.e("Babel_ConversationsData", "EsConversationsData.storeSmsMessage: empty sender or body", new Object[0]);
      return;
    }
    bfz localbfz = new bfz(aal.oJ, parambfd.g());
    czb localczb = aal.l(str1);
    boolean bool1 = a(localczb);
    if (bool1) {}
    String str3;
    for (Object localObject = localczb;; localObject = null)
    {
      str3 = enn.a(localbfz, (czb)localObject, str1);
      if (!TextUtils.isEmpty(str3)) {
        break;
      }
      ezi.e("Babel_ConversationsData", "EsConversationsData.storeSmsMessage: empty conversation id", new Object[0]);
      return;
    }
    boolean bool2 = RealTimeChatService.d(parambfd, str3);
    localObject = paramBoolean;
    if (paramBoolean == null) {
      localObject = Boolean.valueOf(bool2);
    }
    long l1 = aal.a(enn.a(paramArrayOfSmsMessage[0], localbfz.b(str3, 1000) / 1000L), 0L);
    localContentValues.put("date", Long.valueOf(l1));
    label259:
    long l2;
    if (aal.a((Boolean)localObject, false))
    {
      paramArrayOfSmsMessage = Integer.valueOf(1);
      localContentValues.put("read", paramArrayOfSmsMessage);
      paramBoolean = aal.b(localContext.getContentResolver(), Telephony.Sms.Inbox.CONTENT_URI, localContentValues);
      paramArrayOfSmsMessage = null;
      if (paramBoolean == null) {
        break label492;
      }
      paramArrayOfSmsMessage = aal.a(new String[] { paramBoolean.toString() });
      l2 = l1 * 1000L;
      paramBoolean = localContentValues.getAsLong("date_sent");
      if (paramBoolean != null) {
        break label507;
      }
      l1 = 0L;
      label283:
      new edn(str3, localczb, l2, bfz.i(), null, str2, null, false, emc.e, 0, 3, null, paramArrayOfSmsMessage, l1, 0, 0L, null, 2, null, 0, 0L).a(0).a(str1).a(localbfz, new dyy());
      localbfz.a();
    }
    for (;;)
    {
      try
      {
        localbfz.i(str3, l2);
        paramArrayOfSmsMessage = localContentValues.getAsInteger("reply_path_present");
        paramBoolean = localContentValues.getAsString("service_center");
        if ((paramArrayOfSmsMessage != null) && (aal.a(paramArrayOfSmsMessage, 0) == 1))
        {
          localbfz.j(str3, paramBoolean);
          localbfz.n(str3, aal.a(localContentValues.getAsLong("thread_id"), 0L));
          if ((!bool1) && (!bool2)) {
            ((cyh)ilh.a(localContext, cyh.class)).a(parambfd.g(), false);
          }
          if (!aal.a((Boolean)localObject, false)) {
            break label540;
          }
          localbfz.a(str3, l2, false, "storesms");
          localbfz.b();
          localbfz.c();
          d(localbfz, str3);
          return;
          paramArrayOfSmsMessage = Integer.valueOf(0);
          break;
          label492:
          ezi.e("Babel_ConversationsData", "storeSmsMessage: failed to insert SMS to telephony", new Object[0]);
          break label259;
          label507:
          l1 = aal.a(paramBoolean, 0L) * 1000L;
          break label283;
        }
        localbfz.j(str3, null);
        continue;
        if (!bool1) {
          continue;
        }
      }
      finally
      {
        localbfz.c();
      }
      label540:
      localbfz.v(str3);
    }
  }
  
  public static boolean a(bfd parambfd, ega paramega)
  {
    if ((parambfd == null) || (paramega == null)) {
      return false;
    }
    parambfd = parambfd.b();
    paramega = paramega.k().iterator();
    while (paramega.hasNext()) {
      if (parambfd.equals((czb)paramega.next())) {
        return true;
      }
    }
    return false;
  }
  
  public static boolean a(bfz parambfz, ega paramega, long paramLong, String paramString, dyy paramdyy, bfy parambfy, boolean paramBoolean)
  {
    String str1 = paramega.a();
    Object localObject2;
    Object localObject3;
    int i;
    int j;
    int k;
    String str2;
    boolean bool1;
    if (ezi.a("Babel_ConversationsData", 3))
    {
      localObject2 = String.valueOf("processConversationInTransaction conversationId: ");
      localObject3 = String.valueOf(paramega.n());
      i = paramega.k().size();
      j = paramega.q();
      k = paramega.r();
      str2 = String.valueOf(Arrays.toString(paramega.s()));
      bool1 = paramega.m();
      if (paramega.l() != null) {
        break label388;
      }
    }
    label388:
    for (Object localObject1 = null;; localObject1 = Long.valueOf(lb))
    {
      localObject1 = String.valueOf(localObject1);
      int m = paramega.t();
      long l = paramega.w();
      int n = paramega.u();
      boolean bool2 = paramega.y();
      ezi.a("Babel_ConversationsData", String.valueOf(localObject2).length() + 308 + String.valueOf(str1).length() + String.valueOf(localObject3).length() + String.valueOf(paramString).length() + String.valueOf(str2).length() + String.valueOf(localObject1).length() + (String)localObject2 + str1 + ", clientGeneratedId: " + (String)localObject3 + ", requestClientGeneratedId: " + paramString + ", participantCount: " + i + ", notificationLevel: " + j + ", status: " + k + ", view: " + str2 + ", hasActiveHangout: " + bool1 + ", selfReadState.latestReadTimestamp: " + (String)localObject1 + ", otrStatus: " + m + ", sortTimestamp: " + l + ", otrToggle: " + n + ", isTemporary: " + bool2, new Object[0]);
      if ((paramBoolean) || (paramega.r() != 1) || (parambfz.s(str1) != 1) || (paramega.s() == null) || (paramega.s().length <= 0) || (paramega.s()[0] != 2)) {
        break;
      }
      parambfz.A(str1);
      return true;
    }
    if (paramLong > 0L)
    {
      if (a) {
        new StringBuilder(71).append("got upperBoundTimestamp ").append(paramLong).append(" calling deleteConversation");
      }
      parambfz.d(str1, paramLong);
      if (paramega.w() <= paramLong) {
        return false;
      }
    }
    if (paramega.d() == 1)
    {
      localObject1 = parambfz.g().b();
      localObject2 = paramega.k().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (czb)((Iterator)localObject2).next();
        if (!((czb)localObject3).equals(localObject1))
        {
          localObject1 = parambfz.a((czb)localObject3, true, 1);
          if (localObject1 == null) {
            break;
          }
        }
      }
    }
    for (localObject1 = a;; localObject1 = null)
    {
      localObject2 = parambfz.a(str1, paramString, paramega.n(), (String)localObject1);
      localObject1 = a;
      i = 0;
      if (b) {
        i = 1;
      }
      if (a)
      {
        if (localObject1 == null)
        {
          paramString = "(null)";
          bool1 = b;
          new StringBuilder(String.valueOf(paramString).length() + 70).append("getExistingMergedConversationId returned ").append(paramString).append(" conversationIdsMerged: ").append(bool1);
        }
      }
      else
      {
        if (localObject1 != null) {
          break label766;
        }
        paramString = null;
        label651:
        if (paramString == null) {
          break label926;
        }
        if (!str1.equals(paramString)) {
          i = 1;
        }
        if ((i != 0) || (b == null) || (!Arrays.equals(b, paramega.x()))) {
          break label797;
        }
        if (a)
        {
          parambfz = String.valueOf(aal.a(b));
          if (parambfz.length() == 0) {
            break label783;
          }
          "Skipping update ".concat(parambfz);
        }
      }
      for (;;)
      {
        a(paramega.g(), str1);
        if (parambfy != null) {
          a = a;
        }
        return false;
        paramString = a;
        break;
        label766:
        paramString = a;
        parambfz.o(paramString);
        break label651;
        label783:
        new String("Skipping update ");
      }
      label797:
      parambfz.a(paramString, c, paramega);
      parambfz.G(str1);
      for (;;)
      {
        paramdyy.a(aal.oJ, parambfz, str1, paramega.k());
        parambfz.a(str1, paramega.j(), paramega.i());
        parambfz.a(paramega.k(), paramega.h(), str1);
        if (paramega.h() == null) {
          break;
        }
        localObject1 = paramega.h().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (dmo)((Iterator)localObject1).next();
          if ((a != null) && (!TextUtils.isEmpty(c))) {
            parambfz.a((dmo)localObject2);
          }
        }
        label926:
        parambfz.a(paramega);
        if (paramega.r() == 1) {
          paramdyy.a(paramega.c(), parambfz.g().g());
        }
      }
      b(parambfz, str1);
      if (i != 0)
      {
        RealTimeChatService.g(parambfz.g(), paramString, str1);
        a(paramdyy, parambfz, str1);
      }
      if ((paramString != null) && (parambfz.U(str1)))
      {
        if (parambfy != null) {
          a = str1;
        }
        return false;
      }
      if (paramega.l() != null) {
        parambfz.a(str1, lb, false, "serverresponse");
      }
      a(paramega.g(), str1);
      parambfz.a(paramega.t(), paramega.u(), 1L + parambfz.x(str1), str1);
      parambfz.i(str1, paramega.w());
      parambfz.a(str1, paramega.f());
      parambfz.b(str1, paramega.y());
      if (paramBoolean)
      {
        if ((paramega.s() != null) && (paramega.s().length > 0) && (paramega.s()[0] == 2)) {
          RealTimeChatService.a(parambfz.g(), str1, paramega.c(), false);
        }
        if (paramega.r() == 1)
        {
          paramdyy.a(new dpm(str1));
          parambfz.aa(str1);
        }
      }
      if (parambfy != null) {
        a = str1;
      }
      bfz.a(parambfz, str1);
      return true;
    }
  }
  
  public static boolean a(bfz parambfz, egg paramegg, dyy paramdyy)
  {
    String str = paramegg.a();
    long l2 = paramegg.c();
    Object localObject1;
    int i;
    int j;
    long l1;
    Object localObject2;
    Object localObject3;
    if (a)
    {
      localObject1 = String.valueOf("processHangoutEventInTransaction conversationId: ");
      i = paramegg.e();
      j = paramegg.d();
      l1 = paramegg.h();
      localObject2 = String.valueOf(paramegg.i());
      localObject3 = String.valueOf(paramegg.g().toString());
      new StringBuilder(String.valueOf(localObject1).length() + 101 + String.valueOf(str).length() + String.valueOf(localObject2).length() + String.valueOf(localObject3).length()).append((String)localObject1).append(str).append(" mediaType: ").append(i).append(" event type ").append(j).append(" duration ").append(l1).append(" transfer ").append((String)localObject2).append(" participants: ").append((String)localObject3);
    }
    int m;
    label194:
    int k;
    boolean bool1;
    if (paramegg.e() == 2)
    {
      j = 1;
      if (j != 1) {
        break label351;
      }
      m = 1;
      k = paramegg.l();
      localObject2 = null;
      if (paramegg.d() != 1) {
        break label357;
      }
      localObject2 = emd.i;
      k = 10;
      bool1 = true;
    }
    for (;;)
    {
      label223:
      l1 = -1L;
      Object localObject4;
      czb localczb;
      label307:
      int n;
      if (bool1)
      {
        localObject4 = parambfz.e(str);
        localObject3 = null;
        localObject1 = localObject3;
        if (b == 1)
        {
          localczb = parambfz.g().b();
          localObject1 = localObject3;
          if (localczb.a(paramegg.b()))
          {
            i = paramegg.g().size();
            if (i > 0)
            {
              localObject1 = paramegg.g().iterator();
              n = i;
              if (!((Iterator)localObject1).hasNext()) {
                break label396;
              }
              if (!localczb.a((czb)((Iterator)localObject1).next())) {
                break label774;
              }
              i -= 1;
            }
          }
        }
      }
      label351:
      label357:
      label396:
      label714:
      label720:
      label774:
      for (;;)
      {
        break label307;
        j = 2;
        break;
        m = 0;
        break label194;
        if ((paramegg.d() != 0) || (paramegg.i() == null) || (parambfz.s(paramegg.i()) != 2)) {
          break label777;
        }
        k = 10;
        bool1 = false;
        break label223;
        n = i;
        localObject1 = localObject3;
        if (n == 0)
        {
          ArrayList localArrayList = new ArrayList();
          localObject1 = h.iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject4 = nextb;
            if (!localczb.a((czb)localObject4)) {
              localArrayList.add(localObject4);
            }
          }
          localObject1 = localObject3;
          if (localArrayList.size() == 1) {
            localObject1 = parambfz.a(str, localArrayList);
          }
        }
        localObject3 = localObject1;
        if (localObject1 == null) {
          localObject3 = parambfz.a(str, paramegg.g());
        }
        l1 = parambfz.a(str, paramegg.j(), emc.e, paramegg.b(), (emd)localObject2, l2, paramegg.k(), 0L, k, null, (String)localObject3, j, null);
        i = parambfz.g().g();
        if (k == 10)
        {
          paramdyy.a(i);
          switch (paramegg.d())
          {
          }
        }
        for (;;)
        {
          parambfz.a(j, l2, str);
          return bool1;
          paramdyy.a(l2, i);
          break;
          paramdyy = parambfz.g().b();
          boolean bool2 = paramegg.g().contains(paramdyy);
          if (l2 > parambfz.m(str))
          {
            if (!bool2) {
              break label720;
            }
            l3 = paramegg.k();
            if (m == 0) {
              break label714;
            }
          }
          for (i = 11;; i = 8)
          {
            parambfz.a(str, l2, l3, i, null, l1, emc.e, null, null);
            j = 0;
            RealTimeChatService.a(str, null);
            break;
          }
          long l3 = paramegg.k();
          if (m != 0) {}
          for (i = 10;; i = 1)
          {
            parambfz.a(str, l2, l3, i, null, l1, emc.e, null, null);
            break;
          }
          RealTimeChatService.a(str, paramegg.g());
        }
      }
      label777:
      bool1 = false;
    }
  }
  
  public static boolean a(bfz parambfz, String paramString, long paramLong, dyy paramdyy, egf paramegf)
  {
    bgd localbgd = parambfz.f(paramString);
    if (localbgd != null)
    {
      if (a)
      {
        boolean bool = e;
        new StringBuilder(String.valueOf(paramString).length() + 52).append("conversation ").append(paramString).append(" exists locally,  metadataPresent ").append(bool);
      }
      if ((localbgd == null) || (!e))
      {
        paramdyy.a(new doz(paramString, true, true, true, null, 0L, null, 0L, paramegf));
        return false;
      }
    }
    else
    {
      if (ezi.a("Babel_ConversationsData", 3)) {
        ezi.a("Babel_ConversationsData", String.valueOf(paramString).length() + 36 + "conversation " + paramString + " does not exist locally", new Object[0]);
      }
      if (paramLong == 0L) {}
      for (paramLong = 0L;; paramLong -= 1L)
      {
        parambfz.a(paramString, paramLong);
        break;
      }
    }
    return true;
  }
  
  public static boolean a(czb paramczb)
  {
    if (paramczb == null) {
      return false;
    }
    int i = dvd.l().g();
    return new bfz(aal.oJ, i).D(b);
  }
  
  public static int b(bfz parambfz, exn paramexn)
  {
    int i = 0;
    parambfz.a();
    if (paramexn == null) {}
    for (;;)
    {
      try
      {
        i = parambfz.w(null);
        parambfz.b();
        return i;
      }
      finally
      {
        int j;
        parambfz.c();
      }
      paramexn = paramexn.iterator();
      if (paramexn.hasNext())
      {
        j = parambfz.w((String)paramexn.next());
        i += j;
      }
    }
  }
  
  private static Uri b(int paramInt)
  {
    Uri.Builder localBuilder = d.buildUpon();
    localBuilder.appendQueryParameter("account_id", 11 + paramInt);
    return localBuilder.build();
  }
  
  public static String b(bfd parambfd, String paramString1, String paramString2, String paramString3)
  {
    hbs.b("Expected condition to be false", TextUtils.isEmpty(paramString2));
    String str2 = new bfz(aal.oJ, parambfd.g()).Y(paramString2);
    String str1 = str2;
    if (TextUtils.isEmpty(str2))
    {
      a(parambfd, paramString1, paramString2, paramString3);
      str1 = null;
    }
    return str1;
  }
  
  private static String b(bfz parambfz, String paramString, List<cyx> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = parambfz.g();
    czb localczb = ((bfd)localObject).b();
    parambfz = parambfz.f(paramString);
    if ((parambfz == null) || (b == 1) || ((b == 2) && (aal.e(c))) || ((((bfd)localObject).y()) && (((bfd)localObject).A()))) {}
    for (int j = 1;; j = 0)
    {
      paramString = paramList.iterator();
      int i = 0;
      while (paramString.hasNext())
      {
        parambfz = (cyx)paramString.next();
        if (d != null)
        {
          parambfz = e;
          label117:
          if (!TextUtils.isEmpty(parambfz))
          {
            if (localStringBuilder.length() > 0) {
              localStringBuilder.append(", ");
            }
            localStringBuilder.append(parambfz);
          }
        }
        else
        {
          if (b == null) {
            continue;
          }
          if ((i == 0) && (b.equals(localczb)) && (paramList.size() > 1))
          {
            i = 1;
            continue;
          }
          if (e == null)
          {
            localObject = ezm.f();
            e = (CharSequence)localObject;
            if (localObject == null) {
              e = "";
            }
          }
          if ((i == 0) && (TextUtils.equals(parambfz.f(), e)))
          {
            i = 1;
            continue;
          }
          if (j != 0) {
            break label256;
          }
        }
        label256:
        for (boolean bool = true;; bool = false)
        {
          parambfz = aal.a(parambfz, bool);
          break label117;
          break;
        }
      }
      return localStringBuilder.toString();
    }
  }
  
  public static String b(bfz parambfz, boolean paramBoolean1, String paramString1, List<cyx> paramList, List<axn> paramList1, List<dtt> paramList2, bfw parambfw, int paramInt1, int paramInt2, boolean paramBoolean2, dyy paramdyy, String paramString2)
  {
    if (ezi.a("Babel_ConversationsData", 3))
    {
      i = paramList.size();
      ezi.a("Babel_ConversationsData", 52 + "createConversationLocally:  num invitees " + i, new Object[0]);
    }
    int i = 0;
    int k = 0;
    boolean bool1 = false;
    int j = 0;
    Object localObject2 = parambfz.g();
    Object localObject1 = ((bfd)localObject2).b();
    int m = paramList.size() - 1;
    Object localObject3;
    Object localObject4;
    if (m >= 0)
    {
      localObject3 = (cyx)paramList.get(m);
      localObject4 = getb;
      if (((czb)localObject1).a(b, a)) {
        break label1130;
      }
      boolean bool2 = TextUtils.isEmpty(((cyx)localObject3).f());
      int i2 = TextUtils.isEmpty(a);
      bool1 = ((cyx)localObject3).i() | bool1;
      int n = aal.a((cyx)localObject3) | j;
      j = k | bool2;
      k = i | i2;
      i = n;
    }
    for (;;)
    {
      int i1 = m - 1;
      m = k;
      k = j;
      j = i;
      i = m;
      m = i1;
      break;
      if ((k == 0) && ((paramList1 == null) || (paramList1.size() == 0)))
      {
        k = 1;
        if ((i != 0) || ((paramList1 != null) && (paramList1.size() != 0))) {
          break label624;
        }
        m = 1;
        label269:
        if (paramInt2 != 0) {
          break label1123;
        }
        if (k == 0) {
          break label641;
        }
        if ((!((bfd)localObject2).n()) || ((paramInt1 == 1) && (!bool1) && (j == 0))) {
          break label630;
        }
        i = 3;
      }
      for (;;)
      {
        label306:
        if (parambfw != bfw.a) {
          if (paramInt1 == 2) {
            if (k != 0) {
              localObject1 = parambfz.a(paramList, i);
            }
          }
        }
        for (;;)
        {
          label334:
          long l;
          if (!TextUtils.isEmpty((CharSequence)localObject1))
          {
            localObject2 = parambfz.e((String)localObject1);
            paramInt2 = r;
            l = q;
          }
          for (;;)
          {
            label364:
            if (localObject1 == null)
            {
              if (k != 0)
              {
                localObject1 = bfz.j();
                label379:
                localObject2 = String.valueOf(localObject1);
                if (((String)localObject2).length() == 0) {
                  break label835;
                }
                localObject2 = "Creating new conversation no match found. generated id: ".concat((String)localObject2);
                label404:
                ezi.a("Babel_ConversationsData", (String)localObject2, new Object[0]);
                if (aal.e(i)) {
                  break label850;
                }
                paramInt2 = 1;
                label426:
                l = System.currentTimeMillis();
                if (!paramBoolean1) {
                  break label856;
                }
              }
              label624:
              label630:
              label641:
              label835:
              label850:
              label856:
              for (j = 2;; j = 1)
              {
                localObject2 = parambfz.a(paramInt1, i, 1000L * l, (String)localObject1, j);
                parambfz.C((String)localObject2);
                a(parambfz, (String)localObject2, paramList, paramList1);
                localObject3 = paramList.iterator();
                while (((Iterator)localObject3).hasNext()) {
                  if (((cyx)((Iterator)localObject3).next()).g()) {
                    bfz.b(parambfz, (String)localObject2);
                  }
                }
                bfz.a(parambfz, (String)localObject2);
                if ((paramInt2 == 0) || (paramdyy == null)) {
                  break label959;
                }
                localObject3 = new ArrayList();
                paramList = paramList.iterator();
                while (paramList.hasNext())
                {
                  localObject4 = (cyx)paramList.next();
                  if (paramList2 != null)
                  {
                    if (G == null) {
                      G = new HashSet();
                    }
                    G.addAll(paramList2);
                  }
                  ((List)localObject3).add(localObject4);
                }
                k = 0;
                break;
                m = 0;
                break label269;
                i = ((bfd)localObject2).a(0);
                break label306;
                i = 1;
                break label306;
                if (m == 0) {
                  break label1117;
                }
                localObject1 = parambfz.b(paramList);
                break label334;
                if ((paramList.size() != 1) || ((paramList1 != null) && (paramList1.size() != 0)) || (paramInt1 != 1)) {
                  break label1096;
                }
                localObject2 = get0b;
                if ((localObject2 == null) || (((czb)localObject2).a()))
                {
                  ezi.e("Babel_ConversationsData", "Server returned a conversation with empty participantId", new Object[0]);
                  paramInt2 = 0;
                  l = 0L;
                  localObject1 = null;
                  break label364;
                }
                if (((czb)localObject1).a(b, a))
                {
                  ezi.e("Babel_ConversationsData", "Trying to start a one on one with self", new Object[0]);
                  paramInt2 = 0;
                  l = 0L;
                  localObject1 = null;
                  break label364;
                }
                localObject2 = parambfz.a((czb)localObject2, false, i);
                if (localObject2 == null) {
                  break label1096;
                }
                localObject1 = a;
                l = c;
                paramInt2 = d;
                break label364;
                localObject1 = bfz.i();
                break label379;
                localObject2 = new String("Creating new conversation no match found. generated id: ");
                break label404;
                paramInt2 = 0;
                break label426;
              }
              if (paramList1 != null)
              {
                paramList = paramList1.iterator();
                while (paramList.hasNext())
                {
                  paramList1 = (axn)paramList.next();
                  ((List)localObject3).add(aal.a(paramList1.b(), paramList1.d()));
                }
              }
              paramString1 = new dos((String)localObject1, paramInt1, i, paramString1, (List)localObject3, paramString2);
              if (parambfw == bfw.c) {
                paramdyy.a(new doz(paramString1));
              }
              for (;;)
              {
                label959:
                paramInt1 = 1;
                paramString1 = (String)localObject2;
                if (paramInt1 != 0) {
                  d(parambfz, paramString1);
                }
                return paramString1;
                paramdyy.a(paramString1);
              }
            }
            if (ezi.a("Babel_ConversationsData", 3))
            {
              paramString1 = String.valueOf(localObject1);
              if (paramString1.length() == 0) {
                break label1082;
              }
            }
            label1082:
            for (paramString1 = "Using existing conversation ".concat(paramString1);; paramString1 = new String("Using existing conversation "))
            {
              ezi.a("Babel_ConversationsData", paramString1, new Object[0]);
              parambfz.l((String)localObject1, -2147483647L);
              if ((!paramBoolean1) && (paramInt2 == 2)) {
                RealTimeChatService.a(parambfz.g(), (String)localObject1, l, false);
              }
              if ((k != 0) && (paramBoolean2)) {
                a(parambfz, paramList);
              }
              paramString1 = (String)localObject1;
              paramInt1 = 0;
              break;
            }
            label1096:
            paramInt2 = 0;
            l = 0L;
            localObject1 = null;
            continue;
            paramInt2 = 0;
            l = 0L;
          }
          label1117:
          localObject1 = null;
        }
        label1123:
        i = paramInt2;
      }
      label1130:
      i1 = i;
      i = j;
      j = k;
      k = i1;
    }
  }
  
  public static void b()
  {
    int i = enn.e();
    ezi.c("Babel_ConversationsData", 64 + "Message purging: deleted " + i + " media messages in telephony", new Object[0]);
    if (i > 0)
    {
      Object localObject = dvd.l();
      if (localObject != null)
      {
        localObject = new bfz(aal.oJ, ((bfd)localObject).g());
        i = ((bfz)localObject).x();
        ezi.c("Babel_ConversationsData", 63 + "Message purging: deleted " + i + " media messages in Hangouts", new Object[0]);
        c((bfz)localObject);
      }
    }
  }
  
  private static void b(Uri paramUri)
  {
    if ((paramUri == null) || (paramUri.getAuthority() == null)) {}
    for (;;)
    {
      return;
      String str = paramUri.getAuthority().toLowerCase(Locale.US);
      int i = -1;
      if ("sms".equals(str)) {
        i = 0;
      }
      while (i >= 0)
      {
        eny.b(i, enn.c(paramUri));
        return;
        if ("mms".equals(str)) {
          i = 1;
        }
      }
    }
  }
  
  public static void b(bfd parambfd, Intent paramIntent)
  {
    SmsMessage localSmsMessage = enn.a(paramIntent);
    if (localSmsMessage == null) {
      ezi.e("Babel_ConversationsData", "EsConversationsData.processSmsDeliveryReport: empty report message", new Object[0]);
    }
    for (;;)
    {
      return;
      long l1 = ContentUris.parseId(paramIntent.getData());
      if (l1 < 0L)
      {
        ezi.e("Babel_ConversationsData", "EsConversationsData.processSmsDeliveryReport: can't find message", new Object[0]);
        return;
      }
      try
      {
        int i = localSmsMessage.getStatus();
        long l2 = System.currentTimeMillis();
        parambfd = new bfz(aal.oJ, parambfd.g());
        parambfd.a(l1, i, 1000L * l2);
        b(parambfd, l1);
        parambfd = aal.g(parambfd.g(l1));
        if (parambfd != null)
        {
          enn.a(parambfd, i, l2);
          return;
        }
      }
      catch (NullPointerException parambfd)
      {
        ezi.e("Babel_ConversationsData", "processSmsDeliveryReport: NPE inside SmsMessage", new Object[0]);
      }
    }
  }
  
  /* Error */
  public static void b(bfd parambfd, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: invokestatic 393	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: ifeq +16 -> 22
    //   9: ldc -128
    //   11: ldc_w 2295
    //   14: iconst_0
    //   15: anewarray 4	java/lang/Object
    //   18: invokestatic 206	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   21: return
    //   22: aload_1
    //   23: ldc_w 549
    //   26: invokevirtual 2298	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   29: ifeq +200 -> 229
    //   32: invokestatic 560	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   35: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   38: astore_3
    //   39: new 2300	java/io/ObjectInputStream
    //   42: dup
    //   43: new 2302	java/io/BufferedInputStream
    //   46: dup
    //   47: new 2304	java/io/FileInputStream
    //   50: dup
    //   51: new 33	java/lang/StringBuilder
    //   54: dup
    //   55: aload_3
    //   56: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   59: invokevirtual 43	java/lang/String:length	()I
    //   62: iconst_1
    //   63: iadd
    //   64: aload_1
    //   65: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   68: invokevirtual 43	java/lang/String:length	()I
    //   71: iadd
    //   72: invokespecial 47	java/lang/StringBuilder:<init>	(I)V
    //   75: aload_3
    //   76: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: ldc 55
    //   81: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: aload_1
    //   85: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   91: invokespecial 2305	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   94: invokespecial 2308	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   97: invokespecial 2309	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   100: astore_1
    //   101: aload_1
    //   102: invokevirtual 2312	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   105: checkcast 547	[Ljava/lang/Object;
    //   108: astore_3
    //   109: aload_1
    //   110: invokevirtual 2313	java/io/ObjectInputStream:close	()V
    //   113: aload_3
    //   114: ifnull +8 -> 122
    //   117: aload_3
    //   118: arraylength
    //   119: ifgt +15 -> 134
    //   122: ldc -128
    //   124: ldc_w 2315
    //   127: iconst_0
    //   128: anewarray 4	java/lang/Object
    //   131: invokestatic 206	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   134: aload_3
    //   135: arraylength
    //   136: anewarray 529	android/telephony/SmsMessage
    //   139: astore_1
    //   140: iconst_0
    //   141: istore_2
    //   142: iload_2
    //   143: aload_3
    //   144: arraylength
    //   145: if_icmpge +72 -> 217
    //   148: aload_1
    //   149: iload_2
    //   150: aload_3
    //   151: iload_2
    //   152: aaload
    //   153: checkcast 2316	[B
    //   156: invokestatic 2320	android/telephony/SmsMessage:createFromPdu	([B)Landroid/telephony/SmsMessage;
    //   159: aastore
    //   160: iload_2
    //   161: iconst_1
    //   162: iadd
    //   163: istore_2
    //   164: goto -22 -> 142
    //   167: astore_0
    //   168: aload_1
    //   169: invokevirtual 2313	java/io/ObjectInputStream:close	()V
    //   172: aload_0
    //   173: athrow
    //   174: astore_0
    //   175: aload_0
    //   176: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   179: astore_1
    //   180: ldc -128
    //   182: new 33	java/lang/StringBuilder
    //   185: dup
    //   186: aload_1
    //   187: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   190: invokevirtual 43	java/lang/String:length	()I
    //   193: bipush 24
    //   195: iadd
    //   196: invokespecial 47	java/lang/StringBuilder:<init>	(I)V
    //   199: ldc_w 2322
    //   202: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   205: aload_1
    //   206: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   212: aload_0
    //   213: invokestatic 631	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   216: return
    //   217: aload_1
    //   218: aload_0
    //   219: iconst_0
    //   220: aconst_null
    //   221: invokestatic 640	bft:a	([Landroid/telephony/SmsMessage;Lbfd;ILjava/lang/Boolean;)V
    //   224: return
    //   225: astore_0
    //   226: goto -51 -> 175
    //   229: aload_1
    //   230: ldc_w 2324
    //   233: invokevirtual 2298	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   236: ifeq +196 -> 432
    //   239: invokestatic 560	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   242: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   245: astore 4
    //   247: new 554	java/io/File
    //   250: dup
    //   251: new 33	java/lang/StringBuilder
    //   254: dup
    //   255: aload 4
    //   257: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   260: invokevirtual 43	java/lang/String:length	()I
    //   263: iconst_1
    //   264: iadd
    //   265: aload_1
    //   266: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   269: invokevirtual 43	java/lang/String:length	()I
    //   272: iadd
    //   273: invokespecial 47	java/lang/StringBuilder:<init>	(I)V
    //   276: aload 4
    //   278: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: ldc 55
    //   283: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   286: aload_1
    //   287: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   293: invokespecial 2325	java/io/File:<init>	(Ljava/lang/String;)V
    //   296: iconst_0
    //   297: invokestatic 2328	aal:a	(Ljava/io/File;Z)Ljava/nio/ByteBuffer;
    //   300: invokestatic 2331	aal:a	(Ljava/nio/ByteBuffer;)[B
    //   303: astore 4
    //   305: aload_3
    //   306: astore_1
    //   307: aload 4
    //   309: ifnull +16 -> 325
    //   312: new 2333	adq
    //   315: dup
    //   316: aload 4
    //   318: invokespecial 2336	adq:<init>	([B)V
    //   321: invokevirtual 2339	adq:a	()Ladg;
    //   324: astore_1
    //   325: aload_1
    //   326: ifnull +10 -> 336
    //   329: aload_1
    //   330: instanceof 2341
    //   333: ifne +59 -> 392
    //   336: ldc -128
    //   338: ldc_w 2343
    //   341: iconst_0
    //   342: anewarray 4	java/lang/Object
    //   345: invokestatic 206	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   348: return
    //   349: astore_0
    //   350: aload_0
    //   351: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   354: astore_1
    //   355: ldc -128
    //   357: new 33	java/lang/StringBuilder
    //   360: dup
    //   361: aload_1
    //   362: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   365: invokevirtual 43	java/lang/String:length	()I
    //   368: bipush 24
    //   370: iadd
    //   371: invokespecial 47	java/lang/StringBuilder:<init>	(I)V
    //   374: ldc_w 2345
    //   377: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: aload_1
    //   381: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   387: aload_0
    //   388: invokestatic 631	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   391: return
    //   392: getstatic 102	aal:oJ	Landroid/content/Context;
    //   395: aload_1
    //   396: checkcast 2341	adw
    //   399: invokestatic 2348	enn:a	(Landroid/content/Context;Ladw;)Landroid/net/Uri;
    //   402: astore_1
    //   403: aload_1
    //   404: ifnonnull +16 -> 420
    //   407: ldc -128
    //   409: ldc_w 2350
    //   412: iconst_0
    //   413: anewarray 4	java/lang/Object
    //   416: invokestatic 206	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   419: return
    //   420: aload_0
    //   421: aload_1
    //   422: ldc2_w 218
    //   425: aconst_null
    //   426: iconst_1
    //   427: iconst_0
    //   428: invokestatic 663	bft:a	(Lbfd;Landroid/net/Uri;JLjava/lang/Boolean;ZZ)V
    //   431: return
    //   432: aload_1
    //   433: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   436: astore_0
    //   437: aload_0
    //   438: invokevirtual 43	java/lang/String:length	()I
    //   441: ifeq +22 -> 463
    //   444: ldc_w 2352
    //   447: aload_0
    //   448: invokevirtual 137	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   451: astore_0
    //   452: ldc -128
    //   454: aload_0
    //   455: iconst_0
    //   456: anewarray 4	java/lang/Object
    //   459: invokestatic 206	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   462: return
    //   463: new 35	java/lang/String
    //   466: dup
    //   467: ldc_w 2352
    //   470: invokespecial 197	java/lang/String:<init>	(Ljava/lang/String;)V
    //   473: astore_0
    //   474: goto -22 -> 452
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	477	0	parambfd	bfd
    //   0	477	1	paramString	String
    //   141	23	2	i	int
    //   1	305	3	localObject1	Object
    //   245	72	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   101	109	167	finally
    //   32	101	174	java/io/IOException
    //   109	113	174	java/io/IOException
    //   117	122	174	java/io/IOException
    //   122	134	174	java/io/IOException
    //   134	140	174	java/io/IOException
    //   142	160	174	java/io/IOException
    //   168	174	174	java/io/IOException
    //   217	224	174	java/io/IOException
    //   32	101	225	java/lang/ClassNotFoundException
    //   109	113	225	java/lang/ClassNotFoundException
    //   117	122	225	java/lang/ClassNotFoundException
    //   122	134	225	java/lang/ClassNotFoundException
    //   134	140	225	java/lang/ClassNotFoundException
    //   142	160	225	java/lang/ClassNotFoundException
    //   168	174	225	java/lang/ClassNotFoundException
    //   217	224	225	java/lang/ClassNotFoundException
    //   239	305	349	java/lang/Exception
    //   312	325	349	java/lang/Exception
    //   329	336	349	java/lang/Exception
    //   336	348	349	java/lang/Exception
    //   392	403	349	java/lang/Exception
    //   407	419	349	java/lang/Exception
    //   420	431	349	java/lang/Exception
  }
  
  public static void b(bfz parambfz)
  {
    ezi.a("Babel_ConversationsData", "NOTIFY ALL PARTICIPANTS", new Object[0]);
    beu.a(parambfz.g(), null);
  }
  
  public static void b(bfz parambfz, long paramLong)
  {
    bgo localbgo = parambfz.b(paramLong);
    if (localbgo != null) {
      d(parambfz, b);
    }
  }
  
  public static void b(bfz parambfz, String paramString)
  {
    Object localObject3 = parambfz.H(paramString);
    ArrayList localArrayList1 = new ArrayList(((List)localObject3).size());
    ArrayList localArrayList2 = new ArrayList(((List)localObject3).size());
    Object localObject2 = eie.a();
    Object localObject1;
    for (;;)
    {
      cyx localcyx;
      try
      {
        Iterator localIterator = ((List)localObject3).iterator();
        localObject1 = null;
        if (!localIterator.hasNext()) {
          break;
        }
        localcyx = (cyx)localIterator.next();
        parambfz.a((eie)localObject2, localcyx);
        str = h;
        if (TextUtils.isEmpty(str)) {
          break label141;
        }
        if (!b.equals(parambfz.g().b()))
        {
          localArrayList1.add(str);
          continue;
        }
        localObject1 = str;
      }
      finally
      {
        ((eie)localObject2).c();
      }
      continue;
      label141:
      if (!b.equals(parambfz.g().b())) {
        localArrayList2.add(e);
      }
    }
    ((eie)localObject2).c();
    localObject2 = aal.a(localArrayList1, localArrayList2);
    localObject3 = b(parambfz, paramString, (List)localObject3);
    if (ezi.a("Babel_ConversationsData", 3))
    {
      str = String.valueOf(localObject3);
      if (str.length() == 0) {
        break label280;
      }
      str = "generated name ".concat(str);
      ezi.a("Babel_ConversationsData", str, new Object[0]);
      str = String.valueOf(localObject2);
      if (str.length() == 0) {
        break label294;
      }
    }
    label280:
    label294:
    for (String str = "packed participant urls ".concat(str);; str = new String("packed participant urls "))
    {
      ezi.a("Babel_ConversationsData", str, new Object[0]);
      parambfz.b(paramString, (String)localObject3, (String)localObject2, (String)localObject1);
      return;
      str = new String("generated name ");
      break;
    }
  }
  
  public static void b(bfz parambfz, String paramString, long paramLong)
  {
    parambfz.l(paramString, -2147483648L);
    if ((0x8 & paramLong) != 0L) {
      a(parambfz, paramString, true);
    }
    if ((0x10 & paramLong) != 0L) {
      a(parambfz, paramString, false);
    }
    if ((0x4 & paramLong) != 0L)
    {
      long l = parambfz.m(paramString);
      if (a) {
        new StringBuilder(String.valueOf(paramString).length() + 64).append("processPendingArchive ").append(paramString).append(" ").append(l).append(" ").append(l);
      }
      RealTimeChatService.a(parambfz.g(), paramString, l, true);
    }
    if ((1L & paramLong) != 0L) {
      if (a)
      {
        String str = String.valueOf(paramString);
        if (str.length() == 0) {
          break label252;
        }
        "processPendingLeave ".concat(str);
      }
    }
    for (;;)
    {
      RealTimeChatService.g(parambfz.g(), paramString);
      if ((0x2 & paramLong) != 0L)
      {
        paramLong = parambfz.m(paramString);
        if (a) {
          new StringBuilder(String.valueOf(paramString).length() + 63).append("processPendingDelete ").append(paramString).append(" ").append(paramLong).append(" ").append(paramLong);
        }
        RealTimeChatService.a(parambfz.g(), paramString, paramLong);
      }
      return;
      label252:
      new String("processPendingLeave ");
    }
  }
  
  /* Error */
  public static void b(bfz parambfz, String paramString, dyy paramdyy)
  {
    // Byte code:
    //   0: ldc -128
    //   2: iconst_3
    //   3: invokestatic 131	ezi:a	(Ljava/lang/String;I)Z
    //   6: ifeq +33 -> 39
    //   9: aload_1
    //   10: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   13: astore_3
    //   14: aload_3
    //   15: invokevirtual 43	java/lang/String:length	()I
    //   18: ifeq +56 -> 74
    //   21: ldc_w 2402
    //   24: aload_3
    //   25: invokevirtual 137	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   28: astore_3
    //   29: ldc -128
    //   31: aload_3
    //   32: iconst_0
    //   33: anewarray 4	java/lang/Object
    //   36: invokestatic 140	ezi:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   39: aload_0
    //   40: invokevirtual 84	bfz:a	()V
    //   43: aload_0
    //   44: aload_1
    //   45: invokevirtual 2404	bfz:q	(Ljava/lang/String;)V
    //   48: aload_1
    //   49: invokestatic 179	bfz:a	(Ljava/lang/String;)Z
    //   52: ifeq +36 -> 88
    //   55: aload_0
    //   56: aload_1
    //   57: lconst_1
    //   58: invokevirtual 2406	bfz:m	(Ljava/lang/String;J)V
    //   61: aload_0
    //   62: invokevirtual 90	bfz:b	()V
    //   65: aload_0
    //   66: invokevirtual 92	bfz:c	()V
    //   69: aload_0
    //   70: invokestatic 844	bft:d	(Lbfz;)V
    //   73: return
    //   74: new 35	java/lang/String
    //   77: dup
    //   78: ldc_w 2402
    //   81: invokespecial 197	java/lang/String:<init>	(Ljava/lang/String;)V
    //   84: astore_3
    //   85: goto -56 -> 29
    //   88: aload_0
    //   89: aload_1
    //   90: invokevirtual 2408	bfz:B	(Ljava/lang/String;)V
    //   93: aload_2
    //   94: new 2410	dpk
    //   97: dup
    //   98: invokestatic 737	bfz:i	()Ljava/lang/String;
    //   101: aload_1
    //   102: invokespecial 2412	dpk:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   105: invokevirtual 189	dyy:a	(Leff;)V
    //   108: goto -47 -> 61
    //   111: astore_1
    //   112: aload_0
    //   113: invokevirtual 92	bfz:c	()V
    //   116: aload_1
    //   117: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	parambfz	bfz
    //   0	118	1	paramString	String
    //   0	118	2	paramdyy	dyy
    //   13	72	3	str	String
    // Exception table:
    //   from	to	target	type
    //   43	61	111	finally
    //   61	65	111	finally
    //   88	108	111	finally
  }
  
  public static int c(bfz parambfz, exn paramexn)
  {
    int i = 0;
    parambfz.a();
    if (paramexn == null) {}
    for (;;)
    {
      try
      {
        i = parambfz.Q(null);
        parambfz.b();
        return i;
      }
      finally
      {
        int j;
        parambfz.c();
      }
      paramexn = paramexn.iterator();
      if (paramexn.hasNext())
      {
        j = parambfz.Q((String)paramexn.next());
        i += j;
      }
    }
  }
  
  public static void c(bfz parambfz)
  {
    ezi.a("Babel_ConversationsData", "NOTIFY ALL MESSAGES", new Object[0]);
    d(parambfz, null);
  }
  
  public static void c(bfz parambfz, String paramString)
  {
    String str = String.valueOf(paramString);
    if (str.length() != 0) {}
    for (str = "NOTIFY PARTICIPANTS, conversation_id=".concat(str);; str = new String("NOTIFY PARTICIPANTS, conversation_id="))
    {
      ezi.a("Babel_ConversationsData", str, new Object[0]);
      aal.oJ.getContentResolver().notifyChange(EsProvider.a(EsProvider.g, parambfz.g().g()), null);
      beu.a(parambfz.g(), paramString);
      return;
    }
  }
  
  private static boolean c(Uri paramUri)
  {
    return (paramUri != null) && (d.getPath().equals(paramUri.getPath()));
  }
  
  public static void d(bfz parambfz)
  {
    a(parambfz.g().g());
  }
  
  public static void d(bfz parambfz, String paramString)
  {
    if (ezi.a("Babel_ConversationsData", 3))
    {
      localObject = String.valueOf(paramString);
      if (((String)localObject).length() == 0) {
        break label117;
      }
    }
    bfd localbfd;
    label117:
    for (Object localObject = "NOTIFY MESSAGES, conversation_id=".concat((String)localObject);; localObject = new String("NOTIFY MESSAGES, conversation_id="))
    {
      ezi.a("Babel_ConversationsData", (String)localObject, new Object[0]);
      localbfd = parambfz.g();
      a(EsProvider.a(EsProvider.g, localbfd.g()));
      localObject = null;
      if (paramString != null) {
        localObject = parambfz.ac(paramString);
      }
      if ((localObject == null) || (((Set)localObject).size() <= 0)) {
        break;
      }
      parambfz = ((Set)localObject).iterator();
      while (parambfz.hasNext()) {
        a(EsProvider.a(localbfd, (String)parambfz.next()));
      }
    }
    if (paramString != null) {
      a(EsProvider.a(localbfd, paramString));
    }
    a(EsProvider.b(localbfd, paramString));
    a(b(localbfd.g()));
  }
  
  public static void e(bfz parambfz)
  {
    a(parambfz.g());
  }
  
  public static void e(bfz parambfz, String paramString)
  {
    if (ezi.a("Babel_ConversationsData", 3))
    {
      str = String.valueOf(paramString);
      if (str.length() == 0) {
        break label54;
      }
    }
    label54:
    for (String str = "NOTIFY EVENT SUGGESTIONS, conversation_id=".concat(str);; str = new String("NOTIFY EVENT SUGGESTIONS, conversation_id="))
    {
      ezi.a("Babel_ConversationsData", str, new Object[0]);
      a(EsProvider.a(parambfz.g().g(), paramString));
      return;
    }
  }
  
  public static List<String> f(bfz parambfz, String paramString)
  {
    paramString = parambfz.H(paramString);
    parambfz = new ArrayList();
    paramString = paramString.iterator();
    while (paramString.hasNext())
    {
      String str = ((cyx)paramString.next()).f();
      if (!TextUtils.isEmpty(str)) {
        parambfz.add(str.trim());
      }
    }
    return parambfz;
  }
}

/* Location:
 * Qualified Name:     bft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */