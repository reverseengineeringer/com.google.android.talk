import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.Telephony.Carriers;
import android.provider.Telephony.Mms;
import android.provider.Telephony.Mms.Inbox;
import android.provider.Telephony.Mms.Sent;
import android.provider.Telephony.Sms;
import android.provider.Telephony.Sms.Sent;
import android.provider.Telephony.Threads;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class enn
{
  public static String a;
  static final Uri b;
  public static final Uri c;
  private static final boolean d;
  private static String[] e;
  private static final Uri f;
  private static final Uri g;
  private static final Uri h;
  private static final Uri i;
  private static final Uri j;
  private static final Uri k;
  private static final Uri l;
  private static final String[] m;
  private static final Uri n;
  private static final String[] o;
  private static Boolean p;
  private static cyx q;
  private static final String[] r;
  private static Boolean s;
  
  static
  {
    Object localObject = ezi.r;
    d = false;
    a = Character.toString('|');
    if (Build.VERSION.SDK_INT >= 19)
    {
      localObject = Telephony.Mms.CONTENT_URI;
      f = (Uri)localObject;
      if (Build.VERSION.SDK_INT < 19) {
        break label220;
      }
      localObject = Telephony.Mms.Inbox.CONTENT_URI;
      label44:
      g = (Uri)localObject;
      if (Build.VERSION.SDK_INT < 19) {
        break label229;
      }
      localObject = Telephony.Mms.Sent.CONTENT_URI;
      label60:
      h = (Uri)localObject;
      if (Build.VERSION.SDK_INT < 19) {
        break label238;
      }
      localObject = Telephony.Sms.CONTENT_URI;
      label76:
      i = (Uri)localObject;
      if (Build.VERSION.SDK_INT < 19) {
        break label247;
      }
      localObject = Telephony.Sms.Sent.CONTENT_URI;
      label92:
      j = (Uri)localObject;
      if (Build.VERSION.SDK_INT < 19) {
        break label256;
      }
      localObject = Telephony.Carriers.CONTENT_URI;
      label108:
      b = (Uri)localObject;
      if (Build.VERSION.SDK_INT < 19) {
        break label265;
      }
    }
    label220:
    label229:
    label238:
    label247:
    label256:
    label265:
    for (localObject = Telephony.Threads.CONTENT_URI;; localObject = Uri.parse("content://mms-sms/conversations"))
    {
      k = (Uri)localObject;
      l = ((Uri)localObject).buildUpon().appendQueryParameter("simple", "true").build();
      m = new String[] { "_id", "recipient_ids" };
      n = Uri.parse("content://mms-sms/canonical-address");
      o = new String[] { "date_sent" };
      p = null;
      q = null;
      r = new String[] { "mmsc" };
      c = Uri.parse("content://mms/part");
      return;
      localObject = Uri.parse("content://mms");
      break;
      localObject = Uri.parse("content://mms/inbox");
      break label44;
      localObject = Uri.parse("content://mms/sent");
      break label60;
      localObject = Uri.parse("content://sms");
      break label76;
      localObject = Uri.parse("content://sms/sent");
      break label92;
      localObject = Uri.parse("content://telephony/carriers");
      break label108;
    }
  }
  
  private static int a(Context paramContext, Uri paramUri)
  {
    int i2 = 0;
    int i1 = 0;
    Object localObject = null;
    Context localContext = null;
    do
    {
      for (;;)
      {
        try
        {
          paramContext = paramContext.getContentResolver().openInputStream(paramUri);
          if (paramContext == null) {
            i2 = i1;
          }
        }
        catch (FileNotFoundException paramContext)
        {
          String str2;
          localObject = localContext;
          String str1 = String.valueOf(paramUri);
          localObject = localContext;
          ezi.d("Babel_SMS", String.valueOf(str1).length() + 29 + "getDataLength couldn't open: " + str1, paramContext);
          if (localContext == null) {
            continue;
          }
          try
          {
            localContext.close();
            return 0;
          }
          catch (IOException paramContext)
          {
            paramUri = String.valueOf(paramUri);
            ezi.d("Babel_SMS", String.valueOf(paramUri).length() + 30 + "getDataLength couldn't close: " + paramUri, paramContext);
            return 0;
          }
        }
        finally
        {
          if (localObject == null) {
            break label323;
          }
        }
        try
        {
          paramContext.close();
          i2 = i1;
          return i2;
          localContext = paramContext;
          localObject = paramContext;
        }
        catch (IOException paramContext)
        {
          try
          {
            i1 = paramContext.available();
          }
          catch (IOException localIOException2)
          {
            localContext = paramContext;
            localObject = paramContext;
            str2 = String.valueOf(paramUri);
            localContext = paramContext;
            localObject = paramContext;
            ezi.d("Babel_SMS", String.valueOf(str2).length() + 31 + "getDataLength couldn't stream: " + str2, localIOException2);
          }
          paramContext = paramContext;
          paramUri = String.valueOf(paramUri);
          ezi.d("Babel_SMS", String.valueOf(paramUri).length() + 30 + "getDataLength couldn't close: " + paramUri, paramContext);
          return i1;
        }
      }
    } while (paramContext == null);
    try
    {
      paramContext.close();
      return 0;
    }
    catch (IOException paramContext)
    {
      paramUri = String.valueOf(paramUri);
      ezi.d("Babel_SMS", String.valueOf(paramUri).length() + 30 + "getDataLength couldn't close: " + paramUri, paramContext);
      return 0;
    }
    try
    {
      ((InputStream)localObject).close();
      label323:
      throw paramContext;
    }
    catch (IOException localIOException1)
    {
      for (;;)
      {
        paramUri = String.valueOf(paramUri);
        ezi.d("Babel_SMS", String.valueOf(paramUri).length() + 30 + "getDataLength couldn't close: " + paramUri, localIOException1);
      }
    }
  }
  
  public static long a(Context paramContext, List<String> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return -1L;
    }
    paramList = new HashSet(paramList);
    try
    {
      long l1 = aef.a(paramContext, paramList);
      return l1;
    }
    catch (IllegalArgumentException paramContext)
    {
      paramContext = String.valueOf(paramContext);
      ezi.e("Babel_SMS", String.valueOf(paramContext).length() + 36 + "MmsUtils: getting thread id failed: " + paramContext, new Object[0]);
    }
    return -1L;
  }
  
  /* Error */
  public static long a(Uri paramUri)
  {
    // Byte code:
    //   0: getstatic 249	aal:oJ	Landroid/content/Context;
    //   3: astore 5
    //   5: aconst_null
    //   6: astore_3
    //   7: aconst_null
    //   8: astore 4
    //   10: aload 5
    //   12: invokevirtual 169	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   15: aload_0
    //   16: ldc -6
    //   18: invokevirtual 254	android/content/ContentResolver:openAssetFileDescriptor	(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    //   21: astore_0
    //   22: aload_0
    //   23: ifnull +65 -> 88
    //   26: aload_0
    //   27: invokevirtual 260	android/content/res/AssetFileDescriptor:getParcelFileDescriptor	()Landroid/os/ParcelFileDescriptor;
    //   30: invokevirtual 266	android/os/ParcelFileDescriptor:getStatSize	()J
    //   33: lstore_1
    //   34: aload_0
    //   35: ifnull +7 -> 42
    //   38: aload_0
    //   39: invokevirtual 267	android/content/res/AssetFileDescriptor:close	()V
    //   42: lload_1
    //   43: lreturn
    //   44: astore_0
    //   45: aload_0
    //   46: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   49: astore_3
    //   50: ldc -66
    //   52: new 192	java/lang/StringBuilder
    //   55: dup
    //   56: aload_3
    //   57: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   60: invokevirtual 195	java/lang/String:length	()I
    //   63: bipush 43
    //   65: iadd
    //   66: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   69: ldc_w 269
    //   72: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: aload_3
    //   76: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   82: aload_0
    //   83: invokestatic 211	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   86: lload_1
    //   87: lreturn
    //   88: aload_0
    //   89: ifnull +7 -> 96
    //   92: aload_0
    //   93: invokevirtual 267	android/content/res/AssetFileDescriptor:close	()V
    //   96: lconst_0
    //   97: lreturn
    //   98: astore_0
    //   99: aload_0
    //   100: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   103: astore_3
    //   104: ldc -66
    //   106: new 192	java/lang/StringBuilder
    //   109: dup
    //   110: aload_3
    //   111: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   114: invokevirtual 195	java/lang/String:length	()I
    //   117: bipush 43
    //   119: iadd
    //   120: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   123: ldc_w 269
    //   126: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: aload_3
    //   130: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   136: aload_0
    //   137: invokestatic 211	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   140: goto -44 -> 96
    //   143: astore_3
    //   144: aload 4
    //   146: astore_0
    //   147: aload_3
    //   148: astore 4
    //   150: aload_0
    //   151: astore_3
    //   152: aload 4
    //   154: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   157: astore 5
    //   159: aload_0
    //   160: astore_3
    //   161: ldc -66
    //   163: new 192	java/lang/StringBuilder
    //   166: dup
    //   167: aload 5
    //   169: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   172: invokevirtual 195	java/lang/String:length	()I
    //   175: bipush 54
    //   177: iadd
    //   178: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   181: ldc_w 271
    //   184: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: aload 5
    //   189: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   195: aload 4
    //   197: invokestatic 211	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   200: aload_0
    //   201: ifnull -105 -> 96
    //   204: aload_0
    //   205: invokevirtual 267	android/content/res/AssetFileDescriptor:close	()V
    //   208: goto -112 -> 96
    //   211: astore_0
    //   212: aload_0
    //   213: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   216: astore_3
    //   217: ldc -66
    //   219: new 192	java/lang/StringBuilder
    //   222: dup
    //   223: aload_3
    //   224: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   227: invokevirtual 195	java/lang/String:length	()I
    //   230: bipush 43
    //   232: iadd
    //   233: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   236: ldc_w 269
    //   239: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   242: aload_3
    //   243: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   249: aload_0
    //   250: invokestatic 211	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   253: goto -157 -> 96
    //   256: astore_0
    //   257: aload_3
    //   258: ifnull +7 -> 265
    //   261: aload_3
    //   262: invokevirtual 267	android/content/res/AssetFileDescriptor:close	()V
    //   265: aload_0
    //   266: athrow
    //   267: astore_3
    //   268: aload_3
    //   269: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   272: astore 4
    //   274: ldc -66
    //   276: new 192	java/lang/StringBuilder
    //   279: dup
    //   280: aload 4
    //   282: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   285: invokevirtual 195	java/lang/String:length	()I
    //   288: bipush 43
    //   290: iadd
    //   291: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   294: ldc_w 269
    //   297: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: aload 4
    //   302: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   305: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   308: aload_3
    //   309: invokestatic 211	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   312: goto -47 -> 265
    //   315: astore 4
    //   317: aload_0
    //   318: astore_3
    //   319: aload 4
    //   321: astore_0
    //   322: goto -65 -> 257
    //   325: astore 4
    //   327: goto -177 -> 150
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	330	0	paramUri	Uri
    //   33	54	1	l1	long
    //   6	124	3	str	String
    //   143	5	3	localFileNotFoundException1	FileNotFoundException
    //   151	111	3	localObject1	Object
    //   267	42	3	localIOException	IOException
    //   318	1	3	localUri	Uri
    //   8	293	4	localObject2	Object
    //   315	5	4	localObject3	Object
    //   325	1	4	localFileNotFoundException2	FileNotFoundException
    //   3	185	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   38	42	44	java/io/IOException
    //   92	96	98	java/io/IOException
    //   10	22	143	java/io/FileNotFoundException
    //   204	208	211	java/io/IOException
    //   10	22	256	finally
    //   152	159	256	finally
    //   161	200	256	finally
    //   261	265	267	java/io/IOException
    //   26	34	315	finally
    //   26	34	325	java/io/FileNotFoundException
  }
  
  public static ContentValues a(Context paramContext, SmsMessage[] paramArrayOfSmsMessage, int paramInt)
  {
    int i1 = 1;
    SmsMessage localSmsMessage = paramArrayOfSmsMessage[0];
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("address", localSmsMessage.getDisplayOriginatingAddress());
    localContentValues.put("body", a(paramArrayOfSmsMessage));
    if (f()) {
      localContentValues.put("date_sent", Long.valueOf(localSmsMessage.getTimestampMillis()));
    }
    localContentValues.put("protocol", Integer.valueOf(localSmsMessage.getProtocolIdentifier()));
    localContentValues.put("seen", Integer.valueOf(1));
    if (localSmsMessage.getPseudoSubject().length() > 0) {
      localContentValues.put("subject", localSmsMessage.getPseudoSubject());
    }
    if (localSmsMessage.isReplyPathPresent())
    {
      localContentValues.put("reply_path_present", Integer.valueOf(i1));
      localContentValues.put("service_center", localSmsMessage.getServiceCenterAddress());
      localContentValues.put("error_code", Integer.valueOf(paramInt));
      paramArrayOfSmsMessage = localSmsMessage.getDisplayOriginatingAddress();
      if (TextUtils.isEmpty(paramArrayOfSmsMessage)) {
        break label211;
      }
      if (aee.a != null) {
        paramArrayOfSmsMessage = aee.a.c();
      }
    }
    for (;;)
    {
      localContentValues.put("thread_id", Long.valueOf(aef.a(paramContext, paramArrayOfSmsMessage)));
      return localContentValues;
      i1 = 0;
      break;
      label211:
      paramArrayOfSmsMessage = paramContext.getResources().getString(StressMode.sj);
      localContentValues.put("address", paramArrayOfSmsMessage);
    }
  }
  
  private static Uri a(ContentResolver paramContentResolver, Uri paramUri, String paramString1, String paramString2, Long paramLong, boolean paramBoolean, long paramLong1)
  {
    ContentValues localContentValues = new ContentValues(7);
    localContentValues.put("address", paramString1);
    if (paramLong != null) {
      localContentValues.put("date", paramLong);
    }
    localContentValues.put("read", Integer.valueOf(1));
    localContentValues.put("subject", null);
    localContentValues.put("body", paramString2);
    if (paramLong1 != -1L) {
      localContentValues.put("thread_id", Long.valueOf(paramLong1));
    }
    try
    {
      paramContentResolver = paramContentResolver.insert(paramUri, localContentValues);
      return paramContentResolver;
    }
    catch (SQLiteException paramContentResolver)
    {
      paramUri = String.valueOf(paramContentResolver);
      ezi.d("Babel_SMS", String.valueOf(paramUri).length() + 38 + "MmsUtils: persist sms message failure " + paramUri, paramContentResolver);
      return null;
    }
    catch (IllegalArgumentException paramContentResolver)
    {
      for (;;) {}
    }
  }
  
  /* Error */
  public static Uri a(Context paramContext, adw paramadw)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 394	ads:a	(Landroid/content/Context;)Lads;
    //   4: astore_2
    //   5: aload_2
    //   6: aload_1
    //   7: getstatic 64	enn:g	Landroid/net/Uri;
    //   10: invokestatic 396	enn:b	()Z
    //   13: invokevirtual 399	ads:a	(Ladg;Landroid/net/Uri;Z)Landroid/net/Uri;
    //   16: astore_1
    //   17: new 274	android/content/ContentValues
    //   20: dup
    //   21: iconst_1
    //   22: invokespecial 376	android/content/ContentValues:<init>	(I)V
    //   25: astore_2
    //   26: aload_2
    //   27: ldc_w 378
    //   30: invokestatic 404	java/lang/System:currentTimeMillis	()J
    //   33: ldc2_w 405
    //   36: ldiv
    //   37: invokestatic 303	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   40: invokevirtual 306	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   43: aload_2
    //   44: ldc_w 321
    //   47: iconst_1
    //   48: invokestatic 316	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   51: invokevirtual 319	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   54: aload_0
    //   55: invokevirtual 169	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   58: aload_1
    //   59: aload_2
    //   60: invokestatic 409	aal:a	(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)I
    //   63: pop
    //   64: aload_1
    //   65: areturn
    //   66: astore_0
    //   67: aconst_null
    //   68: astore_1
    //   69: aload_0
    //   70: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   73: astore_2
    //   74: ldc -66
    //   76: new 192	java/lang/StringBuilder
    //   79: dup
    //   80: aload_2
    //   81: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   84: invokevirtual 195	java/lang/String:length	()I
    //   87: bipush 47
    //   89: iadd
    //   90: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   93: ldc_w 411
    //   96: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: aload_2
    //   100: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   106: aload_0
    //   107: invokestatic 211	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   110: aload_1
    //   111: areturn
    //   112: astore_0
    //   113: aconst_null
    //   114: astore_1
    //   115: aload_0
    //   116: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   119: astore_2
    //   120: ldc -66
    //   122: new 192	java/lang/StringBuilder
    //   125: dup
    //   126: aload_2
    //   127: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   130: invokevirtual 195	java/lang/String:length	()I
    //   133: bipush 46
    //   135: iadd
    //   136: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   139: ldc_w 413
    //   142: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: aload_2
    //   146: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   152: aload_0
    //   153: invokestatic 211	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   156: aload_1
    //   157: areturn
    //   158: astore_0
    //   159: goto -44 -> 115
    //   162: astore_0
    //   163: goto -94 -> 69
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	166	0	paramContext	Context
    //   0	166	1	paramadw	adw
    //   4	142	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   5	17	66	adc
    //   5	17	112	android/database/sqlite/SQLiteException
    //   17	64	158	android/database/sqlite/SQLiteException
    //   17	64	162	adc
  }
  
  /* Error */
  public static Uri a(Context paramContext, ady paramady, adx paramadx, adt paramadt)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 394	ads:a	(Landroid/content/Context;)Lads;
    //   4: astore 5
    //   6: aload 5
    //   8: aload_1
    //   9: getstatic 69	enn:h	Landroid/net/Uri;
    //   12: iconst_1
    //   13: invokestatic 396	enn:b	()Z
    //   16: aconst_null
    //   17: aload_3
    //   18: invokevirtual 417	ads:a	(Ladg;Landroid/net/Uri;ZZLjava/util/Map;Ladt;)Landroid/net/Uri;
    //   21: astore_1
    //   22: aload_2
    //   23: invokevirtual 422	adx:d	()[B
    //   26: ifnonnull +43 -> 69
    //   29: aload_2
    //   30: invokevirtual 424	adx:e	()I
    //   33: istore 4
    //   35: ldc -66
    //   37: new 192	java/lang/StringBuilder
    //   40: dup
    //   41: bipush 36
    //   43: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   46: ldc_w 426
    //   49: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: iload 4
    //   54: invokevirtual 429	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   57: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: iconst_0
    //   61: anewarray 4	java/lang/Object
    //   64: invokestatic 240	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   67: aload_1
    //   68: areturn
    //   69: new 274	android/content/ContentValues
    //   72: dup
    //   73: iconst_2
    //   74: invokespecial 376	android/content/ContentValues:<init>	(I)V
    //   77: astore_3
    //   78: aload_3
    //   79: ldc_w 431
    //   82: aload_2
    //   83: invokevirtual 424	adx:e	()I
    //   86: invokestatic 316	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   89: invokevirtual 319	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   92: aload_3
    //   93: ldc_w 433
    //   96: aload_2
    //   97: invokevirtual 422	adx:d	()[B
    //   100: invokestatic 436	ads:a	([B)Ljava/lang/String;
    //   103: invokevirtual 287	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   106: aload_0
    //   107: invokevirtual 169	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   110: aload_1
    //   111: aload_3
    //   112: invokestatic 409	aal:a	(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)I
    //   115: pop
    //   116: aload_1
    //   117: areturn
    //   118: astore_0
    //   119: aload_0
    //   120: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   123: astore_2
    //   124: ldc -66
    //   126: new 192	java/lang/StringBuilder
    //   129: dup
    //   130: aload_2
    //   131: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   134: invokevirtual 195	java/lang/String:length	()I
    //   137: bipush 43
    //   139: iadd
    //   140: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   143: ldc_w 438
    //   146: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: aload_2
    //   150: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   156: aload_0
    //   157: invokestatic 211	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   160: aload_1
    //   161: areturn
    //   162: astore_0
    //   163: aconst_null
    //   164: astore_1
    //   165: aload_0
    //   166: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   169: astore_2
    //   170: ldc -66
    //   172: new 192	java/lang/StringBuilder
    //   175: dup
    //   176: aload_2
    //   177: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   180: invokevirtual 195	java/lang/String:length	()I
    //   183: bipush 42
    //   185: iadd
    //   186: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   189: ldc_w 440
    //   192: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: aload_2
    //   196: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: aload_0
    //   203: invokestatic 211	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   206: aload_1
    //   207: areturn
    //   208: astore_0
    //   209: goto -44 -> 165
    //   212: astore_0
    //   213: aconst_null
    //   214: astore_1
    //   215: goto -96 -> 119
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	218	0	paramContext	Context
    //   0	218	1	paramady	ady
    //   0	218	2	paramadx	adx
    //   0	218	3	paramadt	adt
    //   33	20	4	i1	int
    //   4	3	5	localads	ads
    // Exception table:
    //   from	to	target	type
    //   22	67	118	adc
    //   69	116	118	adc
    //   6	22	162	android/database/sqlite/SQLiteException
    //   22	67	208	android/database/sqlite/SQLiteException
    //   69	116	208	android/database/sqlite/SQLiteException
    //   6	22	212	adc
  }
  
  public static Uri a(Context paramContext, String paramString1, String paramString2, long paramLong1, long paramLong2)
  {
    return a(paramContext.getContentResolver(), j, paramString1, paramString2, Long.valueOf(paramLong1), false, paramLong2);
  }
  
  public static SmsMessage a(Intent paramIntent)
  {
    return SmsMessage.createFromPdu(paramIntent.getByteArrayExtra("pdu"));
  }
  
  public static enq a(Context paramContext, String paramString)
  {
    paramContext = ads.a(paramContext).a(Uri.parse(paramString));
    if (!(paramContext instanceof adh)) {
      throw new adc("Invalid PDU type to load");
    }
    paramContext = (adh)paramContext;
    paramString = new enq();
    b = paramContext.d();
    a = ((int)paramContext.f());
    return paramString;
  }
  
  public static enq a(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3)
  {
    adj localadj = new adj();
    int i1 = 0;
    int i2;
    label34:
    int i3;
    Object localObject;
    if (paramString2 != null)
    {
      i2 = 1;
      if (TextUtils.isEmpty(paramString1)) {
        break label1314;
      }
      if (i2 != 0) {
        break label271;
      }
      i1 = 1;
      adr localadr = new adr();
      localadr.a(106);
      localadr.e("text/plain".getBytes());
      localadr.c("text_0.txt".getBytes());
      i3 = "text_0.txt".lastIndexOf(".");
      if (i3 != -1) {
        break label277;
      }
      localObject = "text_0.txt";
      label94:
      localadr.b(((String)localObject).getBytes());
      localadr.a(paramString1.getBytes());
      localadj.a(localadr);
      if (i1 != 0) {
        a(localadj, String.format(Locale.getDefault(), "<smil><head><layout><root-layout/><region height=\"100%%\" id=\"Text\" left=\"0%%\" top=\"0%%\" width=\"100%%\"/></layout></head><body><par dur=\"8000ms\"><text src=\"%s\" region=\"Text\"/></par></body></smil>", new Object[] { "text_0.txt" }));
      }
      i1 = localadr.a().length + 0;
    }
    label220:
    label243:
    label271:
    label277:
    label343:
    label501:
    label532:
    label740:
    label750:
    label763:
    label877:
    label1006:
    label1074:
    label1144:
    label1272:
    label1285:
    label1299:
    label1314:
    for (paramString1 = "text_0.txt";; paramString1 = null)
    {
      int i5;
      int i6;
      if (i2 != 0) {
        if (aal.b(paramString3))
        {
          localObject = paramString3;
          if (TextUtils.isEmpty(paramString3)) {
            localObject = "image/jpeg";
          }
          if (!aal.b((String)localObject))
          {
            paramContext = String.valueOf(localObject);
            if (paramContext.length() != 0)
            {
              paramContext = "Unsupported image contentType: ".concat(paramContext);
              ezi.d("Babel_SMS", paramContext, new Exception());
            }
          }
          for (paramInt1 = 0;; paramInt1 = 0)
          {
            paramInt1 = i1 + paramInt1;
            paramContext = new enq();
            b = localadj;
            a = paramInt1;
            return paramContext;
            i2 = 0;
            break;
            i1 = 0;
            break label34;
            localObject = "text_0.txt".substring(0, i3);
            break label94;
            paramContext = new String("Unsupported image contentType: ");
            break label220;
            paramString3 = Uri.parse(paramString2);
            i5 = a(paramContext, paramString3);
            if (i5 > 0) {
              break label343;
            }
            ezi.d("Babel_SMS", "Can't get image", new Exception());
          }
          i6 = emy.a().e() - 1024;
          i2 = emy.a().m();
          i3 = emy.a().l();
          if (paramInt2 <= paramInt1) {
            break label1299;
          }
        }
      }
      for (;;)
      {
        if (d) {
          new StringBuilder(120).append("addPicturePart size: ").append(i5).append(" width: ").append(paramInt1).append(" widthLimit: ").append(i3).append(" height: ").append(paramInt2).append(" heightLimit: ").append(i2);
        }
        if ((i5 <= i6) && (paramInt1 <= i3) && (paramInt2 <= i2) && (paramInt3 == 0))
        {
          paramContext = new adr();
          paramContext.a(paramString3);
          paramContext.e(((String)localObject).getBytes());
          paramInt3 = i5;
          paramContext.c("image.jpg".getBytes());
          i2 = "image.jpg".lastIndexOf(".");
          if (i2 != -1) {
            break label750;
          }
          paramString2 = "image.jpg";
          paramContext.b(paramString2.getBytes());
          localadj.a(paramContext);
          if (d) {
            new StringBuilder(32).append("addPicturePart size: ").append(paramInt3);
          }
          if (TextUtils.isEmpty(paramString1)) {
            break label763;
          }
        }
        for (paramContext = String.format(Locale.getDefault(), "<text src=\"%s\" region=\"Text\"/>", new Object[] { paramString1 });; paramContext = "")
        {
          a(localadj, String.format(Locale.US, "<smil><head><layout><root-layout width=\"%dpx\" height=\"%dpx\" /><region id=\"Image\" left=\"0\" top=\"0\" width=\"%dpx\" height=\"%dpx\" fit=\"meet\" /></layout></head><body><par dur=\"5000ms\"><img src=\"%s\" region=\"Image\" />%s</par></body></smil>", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), "image.jpg", paramContext }));
          paramInt1 = paramInt3;
          break;
          paramString2 = new adr();
          paramContext = a(paramInt3, i3, i2, i6, paramString3, paramContext);
          if (paramContext == null) {}
          for (paramContext = null;; paramContext = paramString2)
          {
            if (paramContext != null) {
              break label740;
            }
            ezi.d("Babel_SMS", "Can't resize image: not enough memory?", new Exception());
            paramInt1 = 0;
            break;
            paramString2.a(paramContext);
            paramString2.e("image/jpeg".getBytes());
          }
          paramInt3 = paramContext.a().length;
          break label501;
          paramString2 = "image.jpg".substring(0, i2);
          break label532;
        }
        if (aen.a(paramString3))
        {
          localObject = Uri.parse(paramString2);
          paramInt1 = a(paramContext, (Uri)localObject);
          if (paramInt1 <= 0)
          {
            ezi.d("Babel_SMS", "Can't get vcard", new Exception());
            paramInt1 = 0;
            paramInt1 += i1;
            break label243;
          }
          paramString2 = new adr();
          paramString2.a((Uri)localObject);
          paramString2.e(paramString3.getBytes());
          paramString2.c("contact.vcf".getBytes());
          paramInt2 = "contact.vcf".lastIndexOf(".");
          if (paramInt2 == -1)
          {
            paramContext = "contact.vcf";
            paramString2.b(paramContext.getBytes());
            localadj.a(paramString2);
            if (d) {
              new StringBuilder(30).append("addVCardPart size: ").append(paramInt1);
            }
            if (TextUtils.isEmpty(paramString1)) {
              break label1006;
            }
          }
          for (paramContext = String.format(Locale.getDefault(), "<text src=\"%s\" region=\"Text\"/>", new Object[] { paramString1 });; paramContext = "")
          {
            a(localadj, String.format(Locale.US, "<smil><head><layout><root-layout width=\"%dpx\" height=\"%dpx\" /></layout></head><body><par dur=\"5000ms\"><ref src=\"%s\" />%s</par></body></smil>", new Object[] { Integer.valueOf(300), Integer.valueOf(300), "contact.vcf", paramContext }));
            break;
            paramContext = "contact.vcf".substring(0, paramInt2);
            break label877;
          }
        }
        if (aal.d(paramString3))
        {
          paramInt3 = paramInt1;
          if (paramInt1 == 0) {
            paramInt3 = 320;
          }
          paramInt1 = paramInt2;
          if (paramInt2 == 0) {
            paramInt1 = 160;
          }
          if (d)
          {
            paramContext = String.valueOf(paramString2);
            if (paramContext.length() != 0) {
              "addVideoPart attachmentUrl: ".concat(paramContext);
            }
          }
          else
          {
            paramContext = paramString3;
            if (TextUtils.isEmpty(paramString3)) {
              paramContext = "video/3gpp2";
            }
            paramString3 = new adr();
            paramString2 = Uri.parse(paramString2);
            paramString3.a(paramString2);
            paramString3.e(paramContext.getBytes());
            paramString3.c("video.3gp".getBytes());
            paramInt2 = "video.3gp".lastIndexOf(".");
            if (paramInt2 != -1) {
              break label1272;
            }
            paramContext = "video.3gp";
            paramString3.b(paramContext.getBytes());
            localadj.a(paramString3);
            if (TextUtils.isEmpty(paramString1)) {
              break label1285;
            }
          }
          for (paramContext = String.format(Locale.getDefault(), "<text src=\"%s\" region=\"Text\"/>", new Object[] { paramString1 });; paramContext = "")
          {
            a(localadj, String.format(Locale.US, "<smil><head><layout><root-layout width=\"%d\" height=\"%d\" /><region id=\"Image\" left=\"0\" top=\"0\" width=\"%dpx\" height=\"%dpx\" fit=\"meet\" /></layout></head><body><par dur=\"8000ms\"><video src=\"%s\" region=\"Image\" />%s</par></body></smil>", new Object[] { Integer.valueOf(paramInt3), Integer.valueOf(paramInt1), Integer.valueOf(paramInt3), Integer.valueOf(paramInt1), "video.3gp", paramContext }));
            paramInt1 = (int)a(paramString2) + i1;
            break;
            new String("addVideoPart attachmentUrl: ");
            break label1074;
            paramContext = "video.3gp".substring(0, paramInt2);
            break label1144;
          }
        }
        paramInt1 = i1;
        break label243;
        int i4 = i3;
        i3 = i2;
        i2 = i4;
      }
    }
  }
  
  public static CharSequence a(String paramString, CharSequence paramCharSequence)
  {
    Context localContext = aal.oJ;
    String str = b(localContext, paramString);
    if (paramCharSequence == null) {}
    for (paramString = "";; paramString = paramCharSequence)
    {
      paramCharSequence = paramString;
      if (str != null) {
        paramCharSequence = localContext.getString(StressMode.eR, new Object[] { str, paramString });
      }
      return paramCharSequence;
    }
  }
  
  public static Long a(SmsMessage paramSmsMessage, long paramLong)
  {
    GregorianCalendar localGregorianCalendar1 = new GregorianCalendar(2011, 8, 18);
    GregorianCalendar localGregorianCalendar2 = new GregorianCalendar();
    localGregorianCalendar2.setTimeInMillis(paramLong);
    if (localGregorianCalendar2.before(localGregorianCalendar1)) {
      paramLong = paramSmsMessage.getTimestampMillis();
    }
    return Long.valueOf(paramLong);
  }
  
  public static String a(int paramInt)
  {
    if (paramInt <= 0) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("(?");
    int i1 = 0;
    while (i1 < paramInt - 1)
    {
      localStringBuilder.append(",?");
      i1 += 1;
    }
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  public static String a(bfz parambfz, czb paramczb, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return a(parambfz, paramczb, Arrays.asList(paramString.split(";")));
  }
  
  public static String a(bfz parambfz, czb paramczb, List<String> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (String)paramList.next();
      localObject = aal.a(aal.oJ, (String)localObject, null, null);
      if ((paramczb != null) && (paramczb.a(b))) {
        i = Boolean.TRUE;
      }
      localArrayList.add(localObject);
    }
    if (paramczb != null) {}
    for (boolean bool = true;; bool = false) {
      return a(parambfz, bool, localArrayList);
    }
  }
  
  public static String a(bfz parambfz, boolean paramBoolean, List<cyx> paramList)
  {
    int i1 = 1;
    if ((paramList == null) || (paramList.isEmpty())) {
      return null;
    }
    dyy localdyy = new dyy();
    localdyy.a(-1L, parambfz.g().g());
    bfw localbfw = bfw.b;
    if (paramList.size() > 1) {
      i1 = 2;
    }
    return bft.a(parambfz, paramBoolean, null, paramList, null, null, localbfw, i1, 3, false, localdyy, null);
  }
  
  public static String a(String paramString)
  {
    return String.format(Locale.US, "((%s LIKE '%s') OR (%s LIKE '%s') OR (%s LIKE '%s') OR (%s='%s'))", new Object[] { paramString, "image/%", paramString, "video/%", paramString, "audio/%", paramString, "application/ogg" });
  }
  
  public static String a(List<String> paramList, long paramLong)
  {
    Object localObject1 = aal.oJ;
    if ((paramList != null) && (paramList.size() == 1)) {
      return (String)paramList.get(0);
    }
    paramList = aal.a(((Context)localObject1).getContentResolver(), Uri.parse(39 + "content://mms/" + paramLong + "/addr"), new String[] { "address", "charset" }, "type=137", null, null);
    if (paramList != null) {}
    try
    {
      if (paramList.moveToFirst())
      {
        localObject1 = emt.a(paramList);
        return (String)localObject1;
      }
      return null;
    }
    finally
    {
      paramList.close();
    }
  }
  
  public static String a(List<String> paramList, String paramString)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      String str = paramString;
      if (paramString != null) {
        str = ezm.k(paramString);
      }
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        paramString = (String)paramList.next();
        if ((str == null) || (!TextUtils.equals(str, ezm.k(paramString))))
        {
          if (localStringBuilder.length() > 0) {
            localStringBuilder.append(",");
          }
          localStringBuilder.append(paramString);
        }
      }
      if (localStringBuilder.length() > 0) {
        return localStringBuilder.toString();
      }
    }
    return null;
  }
  
  public static String a(byte[] paramArrayOfByte, String paramString)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    try
    {
      paramString = new String(paramArrayOfByte, paramString);
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      String str = String.valueOf(paramString);
      ezi.d("Babel_SMS", String.valueOf(str).length() + 24 + "MmsUtils.bytesToString: " + str, paramString);
    }
    return new String(paramArrayOfByte);
  }
  
  private static String a(SmsMessage[] paramArrayOfSmsMessage)
  {
    int i1 = 0;
    if (paramArrayOfSmsMessage.length == 1) {
      return c(paramArrayOfSmsMessage[0].getDisplayMessageBody());
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i2 = paramArrayOfSmsMessage.length;
    for (;;)
    {
      SmsMessage localSmsMessage;
      if (i1 < i2) {
        localSmsMessage = paramArrayOfSmsMessage[i1];
      }
      try
      {
        localStringBuilder.append(localSmsMessage.getDisplayMessageBody());
        i1 += 1;
        continue;
        return c(localStringBuilder.toString());
      }
      catch (NullPointerException localNullPointerException)
      {
        for (;;) {}
      }
    }
  }
  
  public static List<String> a(long paramLong)
  {
    if (paramLong <= 0L) {}
    Object localObject1;
    Cursor localCursor;
    do
    {
      return null;
      localObject1 = aal.oJ;
      localCursor = ((Context)localObject1).getContentResolver().query(l, m, "_id=?", new String[] { String.valueOf(paramLong) }, null);
    } while (localCursor == null);
    try
    {
      if (localCursor.moveToFirst())
      {
        String str = localCursor.getString(1);
        if (!TextUtils.isEmpty(str))
        {
          localObject1 = c((Context)localObject1, str);
          return (List<String>)localObject1;
        }
      }
      return null;
    }
    finally
    {
      localCursor.close();
    }
  }
  
  public static void a(int paramInt, byte[] paramArrayOfByte)
  {
    Object localObject = new adq(paramArrayOfByte);
    paramArrayOfByte = null;
    try
    {
      localObject = ((adq)localObject).a();
      paramArrayOfByte = (byte[])localObject;
    }
    catch (RuntimeException localRuntimeException)
    {
      for (;;)
      {
        ezi.d("Babel_SMS", "Invalid MMS WAP push", localRuntimeException);
      }
      switch (paramArrayOfByte.b())
      {
      default: 
        return;
      }
    }
    if (paramArrayOfByte == null)
    {
      ezi.e("Babel_SMS", "Invalid WAP push data", new Object[0]);
      return;
    }
    paramArrayOfByte = (adi)paramArrayOfByte;
    if (emy.a().f())
    {
      byte[] arrayOfByte1 = paramArrayOfByte.d();
      if (61 == arrayOfByte1[(arrayOfByte1.length - 1)])
      {
        byte[] arrayOfByte2 = paramArrayOfByte.g();
        byte[] arrayOfByte3 = new byte[arrayOfByte1.length + arrayOfByte2.length];
        System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 0, arrayOfByte1.length);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte3, arrayOfByte1.length, arrayOfByte2.length);
        paramArrayOfByte.b(arrayOfByte3);
      }
    }
    bft.a(paramInt, paramArrayOfByte);
  }
  
  public static void a(long paramLong1, long paramLong2)
  {
    ContentResolver localContentResolver = aal.oJ.getContentResolver();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("read", Integer.valueOf(1));
    String str = String.format(Locale.US, "%s=%d AND %s<=%d AND %s=0", new Object[] { "thread_id", Long.valueOf(paramLong1), "date", Long.valueOf(paramLong2), "read" });
    localContentResolver.update(i, localContentValues, str, null);
    str = String.format(Locale.US, "%s=%d AND %s<=%d AND %s=0", new Object[] { "thread_id", Long.valueOf(paramLong1), "date", Long.valueOf(paramLong2 / 1000L), "read" });
    localContentResolver.update(f, localContentValues, str, null);
  }
  
  private static void a(adj paramadj, String paramString)
  {
    adr localadr = new adr();
    localadr.b("smil".getBytes());
    localadr.c("smil.xml".getBytes());
    localadr.e("application/smil".getBytes());
    localadr.a(paramString.getBytes());
    paramadj.b(localadr);
  }
  
  public static void a(Context paramContext, boolean paramBoolean)
  {
    s = Boolean.valueOf(paramBoolean);
    if ((!paramBoolean) && (Build.VERSION.SDK_INT != 17)) {
      paramContext = bei.a(paramContext);
    }
    try
    {
      Cursor localCursor = paramContext.query("apn", bei.a, null, null, null, null, null, null);
      if (localCursor != null) {
        localCursor.close();
      }
      return;
    }
    catch (Exception localException)
    {
      localException = localException;
      bei.b(paramContext);
      return;
    }
    finally {}
  }
  
  public static void a(Uri paramUri, boolean paramBoolean)
  {
    ContentResolver localContentResolver = aal.oJ.getContentResolver();
    ContentValues localContentValues = new ContentValues();
    if (paramBoolean) {}
    for (int i1 = 1;; i1 = 0)
    {
      localContentValues.put("read", Integer.valueOf(i1));
      localContentResolver.update(paramUri, localContentValues, null, null);
      return;
    }
  }
  
  public static void a(String paramString, int paramInt, long paramLong)
  {
    if (paramString == null) {
      return;
    }
    paramString = Uri.parse(paramString);
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(paramInt));
    if (f()) {
      localContentValues.put("date_sent", Long.valueOf(paramLong));
    }
    aal.oJ.getContentResolver().update(paramString, localContentValues, null, null);
  }
  
  public static void a(byte[] paramArrayOfByte, adg paramadg, Context paramContext)
  {
    if (!(paramadg instanceof adw))
    {
      ezi.e("Babel", "dumpPdu: not RetrieveConf", new Object[0]);
      return;
    }
    if (!((dcj)ilh.a(paramContext, dcj.class)).a("android.permission.WRITE_EXTERNAL_STORAGE"))
    {
      Toast.makeText(paramContext, "You enabled SMS/MMS dump, but no storage permission. Please go to Settings to turn on storage permission", 0).show();
      return;
    }
    paramadg = ((adw)paramadg).h();
    paramContext = String.valueOf("mmsdump-");
    if (paramadg == null)
    {
      paramadg = "null";
      paramadg = String.valueOf(paramadg);
      if (paramadg.length() == 0) {
        break label173;
      }
    }
    label173:
    for (paramadg = paramContext.concat(paramadg);; paramadg = new String(paramContext))
    {
      paramadg = new File(Environment.getExternalStorageDirectory(), paramadg);
      if (paramadg.exists()) {
        paramadg.delete();
      }
      try
      {
        paramadg = new BufferedOutputStream(new FileOutputStream(paramadg));
        paramadg = new String(paramadg);
      }
      catch (IOException paramArrayOfByte)
      {
        try
        {
          paramadg.write(paramArrayOfByte);
          paramadg.flush();
          return;
        }
        finally
        {
          paramadg.close();
        }
        paramArrayOfByte = paramArrayOfByte;
        ezi.d("Babel", "MmsUtils: I/O error dumping pdu", paramArrayOfByte);
        return;
      }
      break;
    }
  }
  
  public static boolean a()
  {
    return Build.VERSION.SDK_INT >= 23;
  }
  
  public static boolean a(int paramInt1, int paramInt2)
  {
    return ((aal.e(paramInt2)) && (b())) || ((aal.h(paramInt2)) && (c()) && (dvp.C.b(paramInt1)));
  }
  
  public static boolean a(Context paramContext)
  {
    boolean bool = false;
    if ((Build.VERSION.SDK_INT > 22) && (d(paramContext))) {
      ezi.d("Babel", "MmsUtils: Possible bad MMS Proxy port detected.", new Object[0]);
    }
    if (Build.VERSION.SDK_INT > 22) {
      bool = true;
    }
    return bool;
  }
  
  /* Error */
  private static byte[] a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, Uri paramUri, Context paramContext)
  {
    // Byte code:
    //   0: aload 5
    //   2: invokevirtual 169	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   5: aload 4
    //   7: invokevirtual 175	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   10: invokestatic 1003	eye:a	(Ljava/io/InputStream;)[B
    //   13: astore 16
    //   15: aload 16
    //   17: ifnonnull +63 -> 80
    //   20: aconst_null
    //   21: astore 16
    //   23: aload 16
    //   25: areturn
    //   26: astore 5
    //   28: aload 4
    //   30: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   33: astore 4
    //   35: ldc -66
    //   37: new 192	java/lang/StringBuilder
    //   40: dup
    //   41: aload 4
    //   43: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   46: invokevirtual 195	java/lang/String:length	()I
    //   49: bipush 41
    //   51: iadd
    //   52: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   55: ldc_w 1005
    //   58: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: aload 4
    //   63: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: aload 5
    //   71: invokestatic 211	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   74: aconst_null
    //   75: astore 16
    //   77: goto -62 -> 15
    //   80: invokestatic 1008	eye:a	()Lexb;
    //   83: astore 19
    //   85: iconst_0
    //   86: istore 10
    //   88: iload_2
    //   89: istore 11
    //   91: iload_1
    //   92: istore 12
    //   94: iload 10
    //   96: iconst_4
    //   97: if_icmpge +748 -> 845
    //   100: aconst_null
    //   101: astore 18
    //   103: aconst_null
    //   104: astore 4
    //   106: aconst_null
    //   107: astore 17
    //   109: aload 4
    //   111: astore 15
    //   113: aload 18
    //   115: astore 5
    //   117: getstatic 38	enn:d	Z
    //   120: ifeq +67 -> 187
    //   123: aload 4
    //   125: astore 15
    //   127: aload 18
    //   129: astore 5
    //   131: ldc_w 1010
    //   134: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   137: astore 20
    //   139: aload 4
    //   141: astore 15
    //   143: aload 18
    //   145: astore 5
    //   147: new 192	java/lang/StringBuilder
    //   150: dup
    //   151: aload 20
    //   153: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   156: invokevirtual 195	java/lang/String:length	()I
    //   159: bipush 25
    //   161: iadd
    //   162: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   165: aload 20
    //   167: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: iload 12
    //   172: invokevirtual 429	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   175: ldc_w 1012
    //   178: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: iload 11
    //   183: invokevirtual 429	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   186: pop
    //   187: aload 4
    //   189: astore 15
    //   191: aload 18
    //   193: astore 5
    //   195: aload 19
    //   197: aload 16
    //   199: iload 12
    //   201: iload 11
    //   203: iload_0
    //   204: invokevirtual 1017	exb:b	([BIII)Landroid/graphics/Bitmap;
    //   207: astore 4
    //   209: aload 4
    //   211: ifnonnull +17 -> 228
    //   214: aload 4
    //   216: ifnull +10 -> 226
    //   219: aload 19
    //   221: aload 4
    //   223: invokevirtual 1020	exb:a	(Landroid/graphics/Bitmap;)V
    //   226: aconst_null
    //   227: areturn
    //   228: aload 4
    //   230: astore 15
    //   232: aload 4
    //   234: astore 5
    //   236: getstatic 38	enn:d	Z
    //   239: ifeq +73 -> 312
    //   242: aload 4
    //   244: astore 15
    //   246: aload 4
    //   248: astore 5
    //   250: aload 4
    //   252: invokevirtual 1025	android/graphics/Bitmap:getWidth	()I
    //   255: istore 13
    //   257: aload 4
    //   259: astore 15
    //   261: aload 4
    //   263: astore 5
    //   265: aload 4
    //   267: invokevirtual 1028	android/graphics/Bitmap:getHeight	()I
    //   270: istore 14
    //   272: aload 4
    //   274: astore 15
    //   276: aload 4
    //   278: astore 5
    //   280: new 192	java/lang/StringBuilder
    //   283: dup
    //   284: bipush 56
    //   286: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   289: ldc_w 1030
    //   292: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   295: iload 13
    //   297: invokevirtual 429	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   300: ldc_w 794
    //   303: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   306: iload 14
    //   308: invokevirtual 429	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   311: pop
    //   312: aload 4
    //   314: invokevirtual 1025	android/graphics/Bitmap:getWidth	()I
    //   317: istore 13
    //   319: aload 4
    //   321: invokevirtual 1028	android/graphics/Bitmap:getHeight	()I
    //   324: istore 14
    //   326: iload 13
    //   328: iload_1
    //   329: if_icmpgt +561 -> 890
    //   332: iload 14
    //   334: iload_2
    //   335: if_icmple +548 -> 883
    //   338: goto +552 -> 890
    //   341: dload 6
    //   343: dload 8
    //   345: invokestatic 1036	java/lang/Math:max	(DD)D
    //   348: dstore 6
    //   350: aload 4
    //   352: iload 13
    //   354: i2d
    //   355: dload 6
    //   357: ddiv
    //   358: d2i
    //   359: iload 14
    //   361: i2d
    //   362: dload 6
    //   364: ddiv
    //   365: d2i
    //   366: iconst_0
    //   367: invokestatic 1040	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   370: astore 5
    //   372: aload 5
    //   374: ifnonnull +58 -> 432
    //   377: aload 4
    //   379: ifnull +10 -> 389
    //   382: aload 19
    //   384: aload 4
    //   386: invokevirtual 1020	exb:a	(Landroid/graphics/Bitmap;)V
    //   389: aload 5
    //   391: ifnull +17 -> 408
    //   394: aload 5
    //   396: aload 4
    //   398: if_acmpeq +10 -> 408
    //   401: aload 19
    //   403: aload 5
    //   405: invokevirtual 1020	exb:a	(Landroid/graphics/Bitmap;)V
    //   408: aconst_null
    //   409: areturn
    //   410: iload 13
    //   412: i2d
    //   413: iload_1
    //   414: i2d
    //   415: ddiv
    //   416: dstore 6
    //   418: goto +479 -> 897
    //   421: iload 14
    //   423: i2d
    //   424: iload_2
    //   425: i2d
    //   426: ddiv
    //   427: dstore 8
    //   429: goto -88 -> 341
    //   432: getstatic 38	enn:d	Z
    //   435: ifeq +49 -> 484
    //   438: aload 5
    //   440: invokevirtual 1025	android/graphics/Bitmap:getWidth	()I
    //   443: istore 13
    //   445: aload 5
    //   447: invokevirtual 1028	android/graphics/Bitmap:getHeight	()I
    //   450: istore 14
    //   452: new 192	java/lang/StringBuilder
    //   455: dup
    //   456: bipush 55
    //   458: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   461: ldc_w 1042
    //   464: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   467: iload 13
    //   469: invokevirtual 429	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   472: ldc_w 794
    //   475: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   478: iload 14
    //   480: invokevirtual 429	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   483: pop
    //   484: aload 5
    //   486: bipush 95
    //   488: invokestatic 1045	eye:a	(Landroid/graphics/Bitmap;I)[B
    //   491: astore 17
    //   493: aload 17
    //   495: ifnull +14 -> 509
    //   498: aload 17
    //   500: astore 15
    //   502: aload 17
    //   504: arraylength
    //   505: iload_3
    //   506: if_icmple +118 -> 624
    //   509: iload_3
    //   510: bipush 95
    //   512: imul
    //   513: aload 17
    //   515: arraylength
    //   516: idiv
    //   517: istore 13
    //   519: iload 13
    //   521: bipush 50
    //   523: if_icmpge +357 -> 880
    //   526: bipush 50
    //   528: istore 13
    //   530: getstatic 38	enn:d	Z
    //   533: ifeq +24 -> 557
    //   536: new 192	java/lang/StringBuilder
    //   539: dup
    //   540: bipush 55
    //   542: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   545: ldc_w 1047
    //   548: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   551: iload 13
    //   553: invokevirtual 429	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   556: pop
    //   557: aload 5
    //   559: iload 13
    //   561: invokestatic 1045	eye:a	(Landroid/graphics/Bitmap;I)[B
    //   564: astore 17
    //   566: aload 17
    //   568: astore 15
    //   570: iload 13
    //   572: bipush 50
    //   574: if_icmple +50 -> 624
    //   577: aload 17
    //   579: ifnull +14 -> 593
    //   582: aload 17
    //   584: astore 15
    //   586: aload 17
    //   588: arraylength
    //   589: iload_3
    //   590: if_icmple +34 -> 624
    //   593: getstatic 38	enn:d	Z
    //   596: ifeq +19 -> 615
    //   599: new 192	java/lang/StringBuilder
    //   602: dup
    //   603: bipush 55
    //   605: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   608: ldc_w 1049
    //   611: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   614: pop
    //   615: aload 5
    //   617: bipush 50
    //   619: invokestatic 1045	eye:a	(Landroid/graphics/Bitmap;I)[B
    //   622: astore 15
    //   624: aload 15
    //   626: ifnull +56 -> 682
    //   629: aload 15
    //   631: arraylength
    //   632: istore 13
    //   634: iload 13
    //   636: iload_3
    //   637: if_icmpgt +45 -> 682
    //   640: aload 4
    //   642: ifnull +10 -> 652
    //   645: aload 19
    //   647: aload 4
    //   649: invokevirtual 1020	exb:a	(Landroid/graphics/Bitmap;)V
    //   652: aload 15
    //   654: astore 16
    //   656: aload 5
    //   658: ifnull -635 -> 23
    //   661: aload 15
    //   663: astore 16
    //   665: aload 5
    //   667: aload 4
    //   669: if_acmpeq -646 -> 23
    //   672: aload 19
    //   674: aload 5
    //   676: invokevirtual 1020	exb:a	(Landroid/graphics/Bitmap;)V
    //   679: aload 15
    //   681: areturn
    //   682: aload 4
    //   684: ifnull +10 -> 694
    //   687: aload 19
    //   689: aload 4
    //   691: invokevirtual 1020	exb:a	(Landroid/graphics/Bitmap;)V
    //   694: aload 5
    //   696: ifnull +17 -> 713
    //   699: aload 5
    //   701: aload 4
    //   703: if_acmpeq +10 -> 713
    //   706: aload 19
    //   708: aload 5
    //   710: invokevirtual 1020	exb:a	(Landroid/graphics/Bitmap;)V
    //   713: iload 12
    //   715: i2d
    //   716: ldc2_w 1050
    //   719: dmul
    //   720: d2i
    //   721: istore 12
    //   723: iload 11
    //   725: i2d
    //   726: ldc2_w 1050
    //   729: dmul
    //   730: d2i
    //   731: istore 11
    //   733: iload 10
    //   735: iconst_1
    //   736: iadd
    //   737: istore 10
    //   739: goto -645 -> 94
    //   742: astore 4
    //   744: aload 15
    //   746: astore 4
    //   748: aload 17
    //   750: astore 5
    //   752: ldc -66
    //   754: ldc_w 1053
    //   757: iconst_0
    //   758: anewarray 4	java/lang/Object
    //   761: invokestatic 996	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   764: aload 4
    //   766: ifnull +10 -> 776
    //   769: aload 19
    //   771: aload 4
    //   773: invokevirtual 1020	exb:a	(Landroid/graphics/Bitmap;)V
    //   776: aload 5
    //   778: ifnull -65 -> 713
    //   781: aload 5
    //   783: aload 4
    //   785: if_acmpeq -72 -> 713
    //   788: aload 19
    //   790: aload 5
    //   792: invokevirtual 1020	exb:a	(Landroid/graphics/Bitmap;)V
    //   795: goto -82 -> 713
    //   798: astore 15
    //   800: aconst_null
    //   801: astore 16
    //   803: aload 5
    //   805: astore 4
    //   807: aload 16
    //   809: astore 5
    //   811: aload 4
    //   813: ifnull +10 -> 823
    //   816: aload 19
    //   818: aload 4
    //   820: invokevirtual 1020	exb:a	(Landroid/graphics/Bitmap;)V
    //   823: aload 5
    //   825: ifnull +17 -> 842
    //   828: aload 5
    //   830: aload 4
    //   832: if_acmpeq +10 -> 842
    //   835: aload 19
    //   837: aload 5
    //   839: invokevirtual 1020	exb:a	(Landroid/graphics/Bitmap;)V
    //   842: aload 15
    //   844: athrow
    //   845: aconst_null
    //   846: areturn
    //   847: astore 15
    //   849: aload 4
    //   851: astore 5
    //   853: goto -42 -> 811
    //   856: astore 15
    //   858: goto -47 -> 811
    //   861: astore 15
    //   863: goto -52 -> 811
    //   866: astore 5
    //   868: aload 4
    //   870: astore 5
    //   872: goto -120 -> 752
    //   875: astore 15
    //   877: goto -125 -> 752
    //   880: goto -350 -> 530
    //   883: aload 4
    //   885: astore 5
    //   887: goto -515 -> 372
    //   890: iload_1
    //   891: ifne -481 -> 410
    //   894: dconst_1
    //   895: dstore 6
    //   897: iload_2
    //   898: ifne -477 -> 421
    //   901: dconst_1
    //   902: dstore 8
    //   904: goto -563 -> 341
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	907	0	paramInt1	int
    //   0	907	1	paramInt2	int
    //   0	907	2	paramInt3	int
    //   0	907	3	paramInt4	int
    //   0	907	4	paramUri	Uri
    //   0	907	5	paramContext	Context
    //   341	1	6	localObject1	Object
    //   348	548	6	d1	double
    //   343	1	8	localObject2	Object
    //   427	476	8	d2	double
    //   86	652	10	i1	int
    //   89	643	11	i2	int
    //   92	630	12	i3	int
    //   255	383	13	i4	int
    //   270	209	14	i5	int
    //   111	634	15	localObject3	Object
    //   798	45	15	localObject4	Object
    //   847	1	15	localObject5	Object
    //   856	1	15	localObject6	Object
    //   861	1	15	localObject7	Object
    //   875	1	15	localOutOfMemoryError	OutOfMemoryError
    //   13	795	16	localObject8	Object
    //   107	642	17	arrayOfByte	byte[]
    //   101	91	18	localObject9	Object
    //   83	753	19	localexb	exb
    //   137	29	20	str	String
    // Exception table:
    //   from	to	target	type
    //   0	15	26	java/io/FileNotFoundException
    //   117	123	742	java/lang/OutOfMemoryError
    //   131	139	742	java/lang/OutOfMemoryError
    //   147	187	742	java/lang/OutOfMemoryError
    //   195	209	742	java/lang/OutOfMemoryError
    //   236	242	742	java/lang/OutOfMemoryError
    //   250	257	742	java/lang/OutOfMemoryError
    //   265	272	742	java/lang/OutOfMemoryError
    //   280	312	742	java/lang/OutOfMemoryError
    //   117	123	798	finally
    //   131	139	798	finally
    //   147	187	798	finally
    //   195	209	798	finally
    //   236	242	798	finally
    //   250	257	798	finally
    //   265	272	798	finally
    //   280	312	798	finally
    //   312	326	847	finally
    //   341	372	847	finally
    //   432	484	856	finally
    //   484	493	856	finally
    //   502	509	856	finally
    //   509	519	856	finally
    //   530	557	856	finally
    //   557	566	856	finally
    //   586	593	856	finally
    //   593	615	856	finally
    //   615	624	856	finally
    //   629	634	856	finally
    //   752	764	861	finally
    //   312	326	866	java/lang/OutOfMemoryError
    //   341	372	866	java/lang/OutOfMemoryError
    //   432	484	875	java/lang/OutOfMemoryError
    //   484	493	875	java/lang/OutOfMemoryError
    //   502	509	875	java/lang/OutOfMemoryError
    //   509	519	875	java/lang/OutOfMemoryError
    //   530	557	875	java/lang/OutOfMemoryError
    //   557	566	875	java/lang/OutOfMemoryError
    //   586	593	875	java/lang/OutOfMemoryError
    //   593	615	875	java/lang/OutOfMemoryError
    //   615	624	875	java/lang/OutOfMemoryError
    //   629	634	875	java/lang/OutOfMemoryError
  }
  
  public static byte[] a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return null;
    }
    try
    {
      paramString2 = paramString1.getBytes(paramString2);
      return paramString2;
    }
    catch (UnsupportedEncodingException paramString2)
    {
      String str = String.valueOf(paramString2);
      ezi.d("Babel_SMS", String.valueOf(str).length() + 24 + "MmsUtils.stringToBytes: " + str, paramString2);
    }
    return paramString1.getBytes();
  }
  
  public static long b(long paramLong)
  {
    return (paramLong + 1000L - 1L) / 1000L;
  }
  
  public static String b(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      paramContext = null;
      return paramContext;
    }
    if (e == null) {
      e = paramContext.getResources().getStringArray(aal.cD);
    }
    String[] arrayOfString = e;
    int i2 = arrayOfString.length;
    int i1 = 0;
    for (;;)
    {
      paramContext = paramString;
      if (i1 >= i2) {
        break;
      }
      if (paramString.equalsIgnoreCase(arrayOfString[i1])) {
        return null;
      }
      i1 += 1;
    }
  }
  
  public static String b(Uri paramUri)
  {
    Object localObject = paramUri.getSchemeSpecificPart();
    int i1 = ((String)localObject).indexOf('?');
    paramUri = (Uri)localObject;
    if (i1 != -1) {
      paramUri = ((String)localObject).substring(0, i1);
    }
    localObject = new StringBuilder(paramUri.length());
    paramUri = paramUri.toCharArray();
    int i2 = paramUri.length;
    i1 = 0;
    if (i1 < i2)
    {
      char c1 = paramUri[i1];
      int i3 = Character.digit(c1, 10);
      if (i3 != -1) {
        ((StringBuilder)localObject).append(i3);
      }
      for (;;)
      {
        i1 += 1;
        break;
        ((StringBuilder)localObject).append(c1);
      }
    }
    return ((StringBuilder)localObject).toString().replace(',', ';');
  }
  
  public static ArrayList<eno> b(String paramString)
  {
    Object localObject = aal.f(paramString);
    ArrayList localArrayList = new ArrayList();
    paramString = null;
    localObject = ((Iterable)localObject).iterator();
    int i1 = 0;
    if (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      switch (i1)
      {
      }
      for (;;)
      {
        i1 += 1;
        break;
        paramString = new eno();
        a = str;
        continue;
        b = str;
        continue;
        try
        {
          c = Integer.parseInt(str);
        }
        catch (Exception localException1)
        {
          c = 0;
        }
        continue;
        try
        {
          d = Integer.parseInt(localException1);
          localArrayList.add(paramString);
          i1 = -1;
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            d = 0;
          }
        }
      }
    }
    return localArrayList;
  }
  
  public static boolean b()
  {
    eot localeot = (eot)ilh.a(aal.oJ, eot.class);
    return (emy.a().t()) && (localeot.p()) && (ezm.e());
  }
  
  public static boolean b(Context paramContext)
  {
    if (s == null)
    {
      boolean bool2 = c(paramContext);
      bool1 = bool2;
      if (bool2)
      {
        bool1 = bool2;
        if (ezc.a()) {
          if (((eot)ilh.a(paramContext, eot.class)).b("use_local_apn_pref_key")) {
            break label63;
          }
        }
      }
    }
    label63:
    for (boolean bool1 = true;; bool1 = false)
    {
      s = Boolean.valueOf(bool1);
      return aal.a(s, false);
    }
  }
  
  public static int c(long paramLong)
  {
    ContentResolver localContentResolver = aal.oJ.getContentResolver();
    String str = String.format(Locale.US, "%s AND (%s<=%d)", new Object[] { eny.b, "date", Long.valueOf(paramLong) });
    int i1 = localContentResolver.delete(i, str, null);
    str = String.format(Locale.US, "%s AND (%s<=%d)", new Object[] { eny.c, "date", Long.valueOf(paramLong / 1000L) });
    return localContentResolver.delete(f, str, null) + (i1 + 0);
  }
  
  public static long c(Uri paramUri)
  {
    long l1 = -1L;
    if (paramUri != null) {}
    try
    {
      l1 = ContentUris.parseId(paramUri);
      return l1;
    }
    catch (UnsupportedOperationException paramUri)
    {
      return -1L;
    }
    catch (NumberFormatException paramUri) {}
    return -1L;
  }
  
  private static String c(String paramString)
  {
    if (paramString == null) {
      return "";
    }
    return paramString.replace('\f', '\n');
  }
  
  private static List<String> c(Context paramContext, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString = paramString.split(" ");
    int i2 = arrayOfString.length;
    int i1 = 0;
    for (;;)
    {
      if (i1 >= i2) {
        break label247;
      }
      paramString = arrayOfString[i1];
      try
      {
        l1 = Long.parseLong(paramString);
        if (l1 >= 0L) {
          break;
        }
        ezi.e("Babel_SMS", 54 + "MmsUtils.getAddresses: invalid id " + l1, new Object[0]);
      }
      catch (NumberFormatException paramString)
      {
        for (;;)
        {
          long l1;
          String str = String.valueOf(paramString);
          ezi.d("Babel_SMS", String.valueOf(str).length() + 35 + "MmsUtils.getAddresses: invalid id. " + str, paramString);
          continue;
          try
          {
            paramString = paramContext.getContentResolver().query(ContentUris.withAppendedId(n, l1), null, null, null, null);
            if (paramString == null) {
              continue;
            }
          }
          catch (Exception paramString)
          {
            for (;;)
            {
              try
              {
                if (paramString.moveToFirst())
                {
                  str = paramString.getString(0);
                  if (!TextUtils.isEmpty(str)) {
                    localArrayList.add(str);
                  }
                }
                paramString.close();
              }
              finally
              {
                paramString.close();
              }
              paramString = paramString;
              ezi.d("Babel_SMS", 63 + "MmsUtils.getAddresses: query failed for id " + l1, paramString);
              paramString = null;
            }
          }
        }
      }
      i1 += 1;
    }
    label247:
    return localArrayList;
  }
  
  public static boolean c()
  {
    return ((eot)ilh.a(aal.oJ, eot.class)).q();
  }
  
  public static boolean c(Context paramContext)
  {
    try
    {
      paramContext = aal.a(paramContext.getContentResolver(), b, r, null, null, null);
      if (paramContext != null) {
        paramContext.close();
      }
      return true;
    }
    catch (SecurityException paramContext)
    {
      ezi.c("Babel_SMS", "Can't access system APN, using internal table", paramContext);
    }
    return false;
  }
  
  public static void d(Uri paramUri)
  {
    ContentResolver localContentResolver = aal.oJ.getContentResolver();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("seen", Integer.valueOf(1));
    localContentResolver.update(paramUri, localContentValues, "seen != 1", null);
  }
  
  public static boolean d()
  {
    eot localeot = (eot)ilh.a(aal.oJ, eot.class);
    return (localeot.i()) && ((localeot.j()) || (!((TelephonyManager)aal.oJ.getSystemService("phone")).isNetworkRoaming()));
  }
  
  private static boolean d(Context paramContext)
  {
    Object localObject1 = Uri.withAppendedPath(Telephony.Carriers.CONTENT_URI, "current");
    try
    {
      paramContext = paramContext.getContentResolver().query((Uri)localObject1, new String[] { "mmsproxy", "mmsport" }, null, null, null);
      if (paramContext == null) {}
    }
    finally
    {
      try
      {
        while (paramContext.moveToNext())
        {
          localObject1 = paramContext.getString(paramContext.getColumnIndex("mmsproxy"));
          int i1 = paramContext.getInt(paramContext.getColumnIndex("mmsport"));
          if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (i1 <= 0))
          {
            ezi.c("Babel", String.valueOf(localObject1).length() + 56 + "MmsUtils: incompatible APN MMS proxy found: " + (String)localObject1 + ":" + i1, new Object[0]);
            if (paramContext != null) {
              paramContext.close();
            }
            return true;
          }
        }
        if (paramContext != null) {
          paramContext.close();
        }
        ezi.c("Babel", "MmsUtils: No incompatible APN MMS proxy configurations found.", new Object[0]);
        return false;
      }
      finally
      {
        for (;;) {}
      }
      localObject2 = finally;
      paramContext = null;
    }
    if (paramContext != null) {
      paramContext.close();
    }
    throw ((Throwable)localObject2);
  }
  
  /* Error */
  public static int e()
  {
    // Byte code:
    //   0: getstatic 587	java/util/Locale:US	Ljava/util/Locale;
    //   3: ldc_w 1228
    //   6: iconst_4
    //   7: anewarray 4	java/lang/Object
    //   10: dup
    //   11: iconst_0
    //   12: getstatic 1148	eny:c	Ljava/lang/String;
    //   15: aastore
    //   16: dup
    //   17: iconst_1
    //   18: ldc 115
    //   20: aastore
    //   21: dup
    //   22: iconst_2
    //   23: ldc_w 1230
    //   26: aastore
    //   27: dup
    //   28: iconst_3
    //   29: ldc_w 1232
    //   32: invokestatic 1234	enn:a	(Ljava/lang/String;)Ljava/lang/String;
    //   35: aastore
    //   36: invokestatic 526	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   39: astore 5
    //   41: getstatic 249	aal:oJ	Landroid/content/Context;
    //   44: invokevirtual 169	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   47: astore 7
    //   49: aload 7
    //   51: getstatic 59	enn:f	Landroid/net/Uri;
    //   54: iconst_1
    //   55: anewarray 113	java/lang/String
    //   58: dup
    //   59: iconst_0
    //   60: ldc 115
    //   62: aastore
    //   63: aload 5
    //   65: aconst_null
    //   66: aconst_null
    //   67: invokevirtual 822	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   70: astore 5
    //   72: aload 5
    //   74: ifnull +270 -> 344
    //   77: aload 5
    //   79: invokeinterface 1237 1 0
    //   84: newarray <illegal type>
    //   86: astore 8
    //   88: iconst_0
    //   89: istore_0
    //   90: aload 5
    //   92: invokeinterface 1212 1 0
    //   97: ifeq +22 -> 119
    //   100: aload 8
    //   102: iload_0
    //   103: aload 5
    //   105: iconst_0
    //   106: invokeinterface 1241 2 0
    //   111: lastore
    //   112: iload_0
    //   113: iconst_1
    //   114: iadd
    //   115: istore_0
    //   116: goto -26 -> 90
    //   119: aload 5
    //   121: invokeinterface 781 1 0
    //   126: aload 8
    //   128: arraylength
    //   129: istore_3
    //   130: iload_3
    //   131: ifle +213 -> 344
    //   134: iconst_0
    //   135: istore_0
    //   136: iconst_0
    //   137: istore_1
    //   138: iload_0
    //   139: iload_3
    //   140: if_icmpge +202 -> 342
    //   143: iload_0
    //   144: sipush 128
    //   147: iadd
    //   148: iload_3
    //   149: invokestatic 1245	java/lang/Math:min	(II)I
    //   152: iload_0
    //   153: isub
    //   154: istore 4
    //   156: getstatic 587	java/util/Locale:US	Ljava/util/Locale;
    //   159: ldc_w 1247
    //   162: iconst_2
    //   163: anewarray 4	java/lang/Object
    //   166: dup
    //   167: iconst_0
    //   168: ldc 115
    //   170: aastore
    //   171: dup
    //   172: iconst_1
    //   173: iload 4
    //   175: invokestatic 1249	enn:a	(I)Ljava/lang/String;
    //   178: aastore
    //   179: invokestatic 526	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   182: astore 9
    //   184: iload 4
    //   186: ifgt +117 -> 303
    //   189: aconst_null
    //   190: astore 5
    //   192: aload 7
    //   194: getstatic 59	enn:f	Landroid/net/Uri;
    //   197: aload 9
    //   199: aload 5
    //   201: invokevirtual 1146	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   204: istore_2
    //   205: ldc -66
    //   207: iconst_3
    //   208: invokestatic 1252	ezi:a	(Ljava/lang/String;I)Z
    //   211: ifeq +67 -> 278
    //   214: ldc_w 794
    //   217: aload 5
    //   219: invokestatic 1256	android/text/TextUtils:join	(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    //   222: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   225: astore 5
    //   227: ldc -66
    //   229: new 192	java/lang/StringBuilder
    //   232: dup
    //   233: aload 5
    //   235: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   238: invokevirtual 195	java/lang/String:length	()I
    //   241: bipush 59
    //   243: iadd
    //   244: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   247: ldc_w 1258
    //   250: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   253: aload 5
    //   255: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: ldc_w 1260
    //   261: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: iload_2
    //   265: invokevirtual 429	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   268: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   271: iconst_0
    //   272: anewarray 4	java/lang/Object
    //   275: invokestatic 1262	ezi:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   278: iload_1
    //   279: iload_2
    //   280: iadd
    //   281: istore_1
    //   282: iload_0
    //   283: sipush 128
    //   286: iadd
    //   287: istore_0
    //   288: goto -150 -> 138
    //   291: astore 6
    //   293: aload 5
    //   295: invokeinterface 781 1 0
    //   300: aload 6
    //   302: athrow
    //   303: iload 4
    //   305: anewarray 113	java/lang/String
    //   308: astore 6
    //   310: iconst_0
    //   311: istore_2
    //   312: aload 6
    //   314: astore 5
    //   316: iload_2
    //   317: iload 4
    //   319: if_icmpge -127 -> 192
    //   322: aload 6
    //   324: iload_2
    //   325: aload 8
    //   327: iload_0
    //   328: iload_2
    //   329: iadd
    //   330: laload
    //   331: invokestatic 1264	java/lang/Long:toString	(J)Ljava/lang/String;
    //   334: aastore
    //   335: iload_2
    //   336: iconst_1
    //   337: iadd
    //   338: istore_2
    //   339: goto -27 -> 312
    //   342: iload_1
    //   343: ireturn
    //   344: iconst_0
    //   345: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   89	241	0	i1	int
    //   137	206	1	i2	int
    //   204	135	2	i3	int
    //   129	20	3	i4	int
    //   154	166	4	i5	int
    //   39	276	5	localObject1	Object
    //   291	10	6	localObject2	Object
    //   308	15	6	arrayOfString	String[]
    //   47	146	7	localContentResolver	ContentResolver
    //   86	240	8	arrayOfLong	long[]
    //   182	16	9	str	String
    // Exception table:
    //   from	to	target	type
    //   90	112	291	finally
  }
  
  /* Error */
  public static emu e(Uri paramUri)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: getstatic 249	aal:oJ	Landroid/content/Context;
    //   8: invokevirtual 169	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   11: astore 5
    //   13: aload 5
    //   15: aload_0
    //   16: getstatic 1268	emu:a	[Ljava/lang/String;
    //   19: aconst_null
    //   20: aconst_null
    //   21: aconst_null
    //   22: invokestatic 770	aal:a	(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   25: astore_0
    //   26: aload_0
    //   27: ifnull +322 -> 349
    //   30: aload_0
    //   31: astore_1
    //   32: aload_0
    //   33: invokeinterface 775 1 0
    //   38: ifeq +311 -> 349
    //   41: aload_0
    //   42: astore_1
    //   43: aload_0
    //   44: invokestatic 1271	emu:a	(Landroid/database/Cursor;)Lemu;
    //   47: astore_2
    //   48: aload_2
    //   49: astore_1
    //   50: aload_0
    //   51: ifnull +11 -> 62
    //   54: aload_0
    //   55: invokeinterface 781 1 0
    //   60: aload_2
    //   61: astore_1
    //   62: aload_1
    //   63: ifnonnull +86 -> 149
    //   66: aconst_null
    //   67: areturn
    //   68: astore_2
    //   69: aconst_null
    //   70: astore_0
    //   71: aload_0
    //   72: astore_1
    //   73: aload_2
    //   74: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   77: astore 6
    //   79: aload_0
    //   80: astore_1
    //   81: ldc -66
    //   83: new 192	java/lang/StringBuilder
    //   86: dup
    //   87: aload 6
    //   89: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   92: invokevirtual 195	java/lang/String:length	()I
    //   95: bipush 30
    //   97: iadd
    //   98: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   101: ldc_w 1273
    //   104: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: aload 6
    //   109: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: aload_2
    //   116: invokestatic 211	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   119: aload_0
    //   120: ifnull +224 -> 344
    //   123: aload_0
    //   124: invokeinterface 781 1 0
    //   129: aconst_null
    //   130: astore_1
    //   131: goto -69 -> 62
    //   134: astore_0
    //   135: aconst_null
    //   136: astore_1
    //   137: aload_1
    //   138: ifnull +9 -> 147
    //   141: aload_1
    //   142: invokeinterface 781 1 0
    //   147: aload_0
    //   148: athrow
    //   149: getstatic 587	java/util/Locale:US	Ljava/util/Locale;
    //   152: ldc_w 1275
    //   155: iconst_3
    //   156: anewarray 4	java/lang/Object
    //   159: dup
    //   160: iconst_0
    //   161: ldc_w 1232
    //   164: aastore
    //   165: dup
    //   166: iconst_1
    //   167: ldc_w 871
    //   170: aastore
    //   171: dup
    //   172: iconst_2
    //   173: ldc_w 1230
    //   176: aastore
    //   177: invokestatic 526	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   180: astore 6
    //   182: aload 4
    //   184: astore_0
    //   185: aload_3
    //   186: astore_2
    //   187: aload 5
    //   189: getstatic 143	enn:c	Landroid/net/Uri;
    //   192: getstatic 1278	emv:a	[Ljava/lang/String;
    //   195: aload 6
    //   197: iconst_1
    //   198: anewarray 113	java/lang/String
    //   201: dup
    //   202: iconst_0
    //   203: aload_1
    //   204: getfield 1281	emu:m	J
    //   207: invokestatic 1264	java/lang/Long:toString	(J)Ljava/lang/String;
    //   210: aastore
    //   211: aconst_null
    //   212: invokestatic 770	aal:a	(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   215: astore_3
    //   216: aload_3
    //   217: ifnull +93 -> 310
    //   220: aload_3
    //   221: astore_0
    //   222: aload_3
    //   223: astore_2
    //   224: aload_3
    //   225: invokeinterface 1212 1 0
    //   230: ifeq +80 -> 310
    //   233: aload_3
    //   234: astore_0
    //   235: aload_3
    //   236: astore_2
    //   237: aload_1
    //   238: aload_3
    //   239: iconst_1
    //   240: invokestatic 1284	emv:a	(Landroid/database/Cursor;Z)Lemv;
    //   243: invokevirtual 1287	emu:a	(Lemv;)V
    //   246: goto -26 -> 220
    //   249: astore_3
    //   250: aload_0
    //   251: astore_2
    //   252: aload_3
    //   253: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   256: astore 4
    //   258: aload_0
    //   259: astore_2
    //   260: ldc -66
    //   262: new 192	java/lang/StringBuilder
    //   265: dup
    //   266: aload 4
    //   268: invokestatic 188	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   271: invokevirtual 195	java/lang/String:length	()I
    //   274: bipush 32
    //   276: iadd
    //   277: invokespecial 199	java/lang/StringBuilder:<init>	(I)V
    //   280: ldc_w 1289
    //   283: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   286: aload 4
    //   288: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   291: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   294: aload_3
    //   295: invokestatic 211	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   298: aload_0
    //   299: ifnull +9 -> 308
    //   302: aload_0
    //   303: invokeinterface 781 1 0
    //   308: aload_1
    //   309: areturn
    //   310: aload_3
    //   311: ifnull -3 -> 308
    //   314: aload_3
    //   315: invokeinterface 781 1 0
    //   320: goto -12 -> 308
    //   323: astore_0
    //   324: aload_2
    //   325: ifnull +9 -> 334
    //   328: aload_2
    //   329: invokeinterface 781 1 0
    //   334: aload_0
    //   335: athrow
    //   336: astore_0
    //   337: goto -200 -> 137
    //   340: astore_2
    //   341: goto -270 -> 71
    //   344: aconst_null
    //   345: astore_1
    //   346: goto -284 -> 62
    //   349: aconst_null
    //   350: astore_2
    //   351: goto -303 -> 48
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	354	0	paramUri	Uri
    //   31	315	1	localObject1	Object
    //   47	14	2	localemu	emu
    //   68	48	2	localSQLiteException1	SQLiteException
    //   186	143	2	localObject2	Object
    //   340	1	2	localSQLiteException2	SQLiteException
    //   350	1	2	localObject3	Object
    //   1	238	3	localCursor	Cursor
    //   249	66	3	localSQLiteException3	SQLiteException
    //   3	284	4	str1	String
    //   11	177	5	localContentResolver	ContentResolver
    //   77	119	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   13	26	68	android/database/sqlite/SQLiteException
    //   13	26	134	finally
    //   187	216	249	android/database/sqlite/SQLiteException
    //   224	233	249	android/database/sqlite/SQLiteException
    //   237	246	249	android/database/sqlite/SQLiteException
    //   187	216	323	finally
    //   224	233	323	finally
    //   237	246	323	finally
    //   252	258	323	finally
    //   260	298	323	finally
    //   32	41	336	finally
    //   43	48	336	finally
    //   73	79	336	finally
    //   81	119	336	finally
    //   32	41	340	android/database/sqlite/SQLiteException
    //   43	48	340	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  public static boolean f()
  {
    // Byte code:
    //   0: getstatic 133	enn:p	Ljava/lang/Boolean;
    //   3: ifnonnull +43 -> 46
    //   6: getstatic 249	aal:oJ	Landroid/content/Context;
    //   9: invokevirtual 169	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   12: getstatic 74	enn:i	Landroid/net/Uri;
    //   15: getstatic 131	enn:o	[Ljava/lang/String;
    //   18: aconst_null
    //   19: aconst_null
    //   20: ldc_w 1291
    //   23: invokestatic 770	aal:a	(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   26: astore_1
    //   27: aload_1
    //   28: astore_0
    //   29: iconst_1
    //   30: invokestatic 878	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   33: putstatic 133	enn:p	Ljava/lang/Boolean;
    //   36: aload_1
    //   37: ifnull +9 -> 46
    //   40: aload_1
    //   41: invokeinterface 781 1 0
    //   46: getstatic 133	enn:p	Ljava/lang/Boolean;
    //   49: iconst_0
    //   50: invokestatic 1137	aal:a	(Ljava/lang/Boolean;Z)Z
    //   53: ireturn
    //   54: astore_2
    //   55: aconst_null
    //   56: astore_1
    //   57: aload_1
    //   58: astore_0
    //   59: ldc -66
    //   61: ldc_w 1293
    //   64: aload_2
    //   65: invokestatic 1182	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   68: aload_1
    //   69: astore_0
    //   70: iconst_0
    //   71: invokestatic 878	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   74: putstatic 133	enn:p	Ljava/lang/Boolean;
    //   77: aload_1
    //   78: ifnull -32 -> 46
    //   81: aload_1
    //   82: invokeinterface 781 1 0
    //   87: goto -41 -> 46
    //   90: astore_1
    //   91: aconst_null
    //   92: astore_0
    //   93: aload_0
    //   94: ifnull +9 -> 103
    //   97: aload_0
    //   98: invokeinterface 781 1 0
    //   103: aload_1
    //   104: athrow
    //   105: astore_1
    //   106: goto -13 -> 93
    //   109: astore_2
    //   110: goto -53 -> 57
    // Local variable table:
    //   start	length	slot	name	signature
    //   28	70	0	localCursor1	Cursor
    //   26	56	1	localCursor2	Cursor
    //   90	14	1	localObject1	Object
    //   105	1	1	localObject2	Object
    //   54	11	2	localSQLiteException1	SQLiteException
    //   109	1	2	localSQLiteException2	SQLiteException
    // Exception table:
    //   from	to	target	type
    //   6	27	54	android/database/sqlite/SQLiteException
    //   6	27	90	finally
    //   29	36	105	finally
    //   59	68	105	finally
    //   70	77	105	finally
    //   29	36	109	android/database/sqlite/SQLiteException
  }
  
  public static cyx g()
  {
    if (q == null)
    {
      String str = aal.oJ.getResources().getString(StressMode.gp);
      q = aal.a(aal.oJ, str, str, null);
    }
    return q;
  }
  
  public static boolean h()
  {
    eot localeot = (eot)ilh.a(aal.oJ, eot.class);
    return (ezc.a()) && (localeot.k());
  }
  
  public static boolean i()
  {
    eot localeot = (eot)ilh.a(aal.oJ, eot.class);
    return (ezc.a()) && (localeot.l());
  }
}

/* Location:
 * Qualified Name:     enn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */