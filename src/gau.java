import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.iid.MessengerCompat;
import java.security.KeyPair;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public final class gau
{
  static String a = null;
  static int b = 0;
  static int c = 0;
  static int d = 0;
  Context e;
  Map<String, Object> f = new HashMap();
  Messenger g;
  Messenger h;
  MessengerCompat i;
  PendingIntent j;
  long k;
  long l;
  int m;
  int n;
  long o;
  
  public gau(Context paramContext)
  {
    e = paramContext;
  }
  
  public static String a()
  {
    try
    {
      int i1 = d;
      d = i1 + 1;
      String str = Integer.toString(i1);
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static String a(Context paramContext)
  {
    if (a != null) {
      return a;
    }
    b = Process.myUid();
    paramContext = paramContext.getPackageManager();
    Object localObject1 = paramContext.queryIntentServices(new Intent("com.google.android.c2dm.intent.REGISTER"), 0).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (ResolveInfo)((Iterator)localObject1).next();
      if (paramContext.checkPermission("com.google.android.c2dm.permission.RECEIVE", serviceInfo.packageName) == 0) {
        try
        {
          ApplicationInfo localApplicationInfo = paramContext.getApplicationInfo(serviceInfo.packageName, 0);
          new StringBuilder("Found ").append(uid);
          c = uid;
          localObject2 = serviceInfo.packageName;
          a = (String)localObject2;
          return (String)localObject2;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException2) {}
      } else {
        new StringBuilder("Possible malicious package ").append(serviceInfo.packageName).append(" declares com.google.android.c2dm.intent.REGISTER without permission");
      }
    }
    try
    {
      localObject1 = paramContext.getApplicationInfo("com.google.android.gms", 0);
      a = packageName;
      c = uid;
      localObject1 = a;
      return (String)localObject1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException1)
    {
      try
      {
        paramContext = paramContext.getApplicationInfo("com.google.android.gsf", 0);
        a = packageName;
        c = uid;
        paramContext = a;
        return paramContext;
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
    return null;
  }
  
  /* Error */
  private static String a(KeyPair paramKeyPair, String... paramVarArgs)
  {
    // Byte code:
    //   0: ldc -101
    //   2: aload_1
    //   3: invokestatic 161	android/text/TextUtils:join	(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    //   6: ldc -93
    //   8: invokevirtual 169	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   11: astore_1
    //   12: aload_0
    //   13: invokevirtual 175	java/security/KeyPair:getPrivate	()Ljava/security/PrivateKey;
    //   16: astore_2
    //   17: aload_2
    //   18: instanceof 177
    //   21: ifeq +43 -> 64
    //   24: ldc -77
    //   26: astore_0
    //   27: aload_0
    //   28: invokestatic 185	java/security/Signature:getInstance	(Ljava/lang/String;)Ljava/security/Signature;
    //   31: astore_0
    //   32: aload_0
    //   33: aload_2
    //   34: invokevirtual 189	java/security/Signature:initSign	(Ljava/security/PrivateKey;)V
    //   37: aload_0
    //   38: aload_1
    //   39: invokevirtual 193	java/security/Signature:update	([B)V
    //   42: aload_0
    //   43: invokevirtual 197	java/security/Signature:sign	()[B
    //   46: invokestatic 202	gar:a	([B)Ljava/lang/String;
    //   49: astore_0
    //   50: aload_0
    //   51: areturn
    //   52: astore_0
    //   53: ldc -52
    //   55: ldc -50
    //   57: aload_0
    //   58: invokestatic 211	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   61: pop
    //   62: aconst_null
    //   63: areturn
    //   64: ldc -43
    //   66: astore_0
    //   67: goto -40 -> 27
    //   70: astore_0
    //   71: ldc -52
    //   73: ldc -41
    //   75: aload_0
    //   76: invokestatic 211	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   79: pop
    //   80: aconst_null
    //   81: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	82	0	paramKeyPair	KeyPair
    //   0	82	1	paramVarArgs	String[]
    //   16	18	2	localPrivateKey	java.security.PrivateKey
    // Exception table:
    //   from	to	target	type
    //   0	12	52	java/io/UnsupportedEncodingException
    //   12	24	70	java/security/GeneralSecurityException
    //   27	50	70	java/security/GeneralSecurityException
  }
  
  private void a(Object paramObject)
  {
    synchronized (getClass())
    {
      Iterator localIterator = f.keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = f.get(str);
        f.put(str, paramObject);
        a(localObject, paramObject);
      }
    }
  }
  
  private static void a(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 instanceof ConditionVariable)) {
      ((ConditionVariable)paramObject1).open();
    }
    Message localMessage;
    if ((paramObject1 instanceof Messenger))
    {
      paramObject1 = (Messenger)paramObject1;
      localMessage = Message.obtain();
      obj = paramObject2;
    }
    try
    {
      ((Messenger)paramObject1).send(localMessage);
      return;
    }
    catch (RemoteException paramObject1)
    {
      new StringBuilder("Failed to send response ").append(paramObject1);
    }
  }
  
  private void a(String paramString, Object paramObject)
  {
    synchronized (getClass())
    {
      Object localObject = f.get(paramString);
      f.put(paramString, paramObject);
      a(localObject, paramObject);
      return;
    }
  }
  
  /* Error */
  private Intent b(Bundle arg1, KeyPair paramKeyPair)
  {
    // Byte code:
    //   0: new 244	android/os/ConditionVariable
    //   3: dup
    //   4: invokespecial 271	android/os/ConditionVariable:<init>	()V
    //   7: astore 7
    //   9: invokestatic 273	gau:a	()Ljava/lang/String;
    //   12: astore 6
    //   14: aload_0
    //   15: invokevirtual 220	java/lang/Object:getClass	()Ljava/lang/Class;
    //   18: astore 8
    //   20: aload 8
    //   22: monitorenter
    //   23: aload_0
    //   24: getfield 48	gau:f	Ljava/util/Map;
    //   27: aload 6
    //   29: aload 7
    //   31: invokeinterface 237 3 0
    //   36: pop
    //   37: aload 8
    //   39: monitorexit
    //   40: invokestatic 279	android/os/SystemClock:elapsedRealtime	()J
    //   43: lstore_3
    //   44: aload_0
    //   45: getfield 281	gau:o	J
    //   48: lconst_0
    //   49: lcmp
    //   50: ifeq +62 -> 112
    //   53: lload_3
    //   54: aload_0
    //   55: getfield 281	gau:o	J
    //   58: lcmp
    //   59: ifgt +53 -> 112
    //   62: new 124	java/lang/StringBuilder
    //   65: dup
    //   66: ldc_w 283
    //   69: invokespecial 127	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   72: aload_0
    //   73: getfield 281	gau:o	J
    //   76: lload_3
    //   77: lsub
    //   78: invokevirtual 286	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   81: ldc_w 288
    //   84: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: aload_0
    //   88: getfield 290	gau:n	I
    //   91: invokevirtual 136	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   94: pop
    //   95: new 292	java/io/IOException
    //   98: dup
    //   99: ldc_w 294
    //   102: invokespecial 295	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   105: athrow
    //   106: astore_1
    //   107: aload 8
    //   109: monitorexit
    //   110: aload_1
    //   111: athrow
    //   112: aload_0
    //   113: getfield 297	gau:g	Landroid/os/Messenger;
    //   116: ifnonnull +33 -> 149
    //   119: aload_0
    //   120: getfield 50	gau:e	Landroid/content/Context;
    //   123: invokestatic 299	gau:a	(Landroid/content/Context;)Ljava/lang/String;
    //   126: pop
    //   127: aload_0
    //   128: new 249	android/os/Messenger
    //   131: dup
    //   132: new 301	gav
    //   135: dup
    //   136: aload_0
    //   137: invokestatic 307	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   140: invokespecial 310	gav:<init>	(Lgau;Landroid/os/Looper;)V
    //   143: invokespecial 313	android/os/Messenger:<init>	(Landroid/os/Handler;)V
    //   146: putfield 297	gau:g	Landroid/os/Messenger;
    //   149: getstatic 32	gau:a	Ljava/lang/String;
    //   152: ifnonnull +14 -> 166
    //   155: new 292	java/io/IOException
    //   158: dup
    //   159: ldc_w 315
    //   162: invokespecial 295	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   165: athrow
    //   166: aload_0
    //   167: invokestatic 279	android/os/SystemClock:elapsedRealtime	()J
    //   170: putfield 317	gau:k	J
    //   173: new 74	android/content/Intent
    //   176: dup
    //   177: ldc 76
    //   179: invokespecial 79	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   182: astore 8
    //   184: aload 8
    //   186: getstatic 32	gau:a	Ljava/lang/String;
    //   189: invokevirtual 321	android/content/Intent:setPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   192: pop
    //   193: aload_1
    //   194: ldc_w 323
    //   197: aload_0
    //   198: getfield 50	gau:e	Landroid/content/Context;
    //   201: invokestatic 328	fyp:b	(Landroid/content/Context;)I
    //   204: invokestatic 57	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   207: invokevirtual 334	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   210: aload_1
    //   211: ldc_w 336
    //   214: getstatic 341	android/os/Build$VERSION:SDK_INT	I
    //   217: invokestatic 57	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   220: invokevirtual 334	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   223: aload_1
    //   224: ldc_w 343
    //   227: aload_0
    //   228: getfield 50	gau:e	Landroid/content/Context;
    //   231: invokestatic 345	gar:a	(Landroid/content/Context;)I
    //   234: invokestatic 57	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   237: invokevirtual 334	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   240: aload_1
    //   241: ldc_w 347
    //   244: ldc_w 349
    //   247: invokevirtual 334	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   250: aload_1
    //   251: ldc_w 351
    //   254: aload_2
    //   255: invokestatic 354	gar:a	(Ljava/security/KeyPair;)Ljava/lang/String;
    //   258: invokevirtual 334	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   261: aload_2
    //   262: invokevirtual 358	java/security/KeyPair:getPublic	()Ljava/security/PublicKey;
    //   265: invokeinterface 363 1 0
    //   270: invokestatic 202	gar:a	([B)Ljava/lang/String;
    //   273: astore 9
    //   275: aload_1
    //   276: ldc_w 365
    //   279: aload 9
    //   281: invokevirtual 334	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   284: aload_1
    //   285: ldc_w 367
    //   288: aload_2
    //   289: iconst_2
    //   290: anewarray 165	java/lang/String
    //   293: dup
    //   294: iconst_0
    //   295: aload_0
    //   296: getfield 50	gau:e	Landroid/content/Context;
    //   299: invokevirtual 370	android/content/Context:getPackageName	()Ljava/lang/String;
    //   302: aastore
    //   303: dup
    //   304: iconst_1
    //   305: aload 9
    //   307: aastore
    //   308: invokestatic 372	gau:a	(Ljava/security/KeyPair;[Ljava/lang/String;)Ljava/lang/String;
    //   311: invokevirtual 334	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   314: aload 8
    //   316: aload_1
    //   317: invokevirtual 376	android/content/Intent:putExtras	(Landroid/os/Bundle;)Landroid/content/Intent;
    //   320: pop
    //   321: aload_0
    //   322: aload 8
    //   324: invokespecial 379	gau:b	(Landroid/content/Intent;)V
    //   327: aload_0
    //   328: invokestatic 279	android/os/SystemClock:elapsedRealtime	()J
    //   331: putfield 317	gau:k	J
    //   334: aload 8
    //   336: ldc_w 381
    //   339: new 124	java/lang/StringBuilder
    //   342: dup
    //   343: ldc_w 383
    //   346: invokespecial 127	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   349: aload 6
    //   351: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   354: ldc_w 385
    //   357: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   360: invokevirtual 387	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   363: invokevirtual 391	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   366: pop
    //   367: aload 8
    //   369: ldc_w 393
    //   372: new 124	java/lang/StringBuilder
    //   375: dup
    //   376: ldc_w 383
    //   379: invokespecial 127	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   382: aload 6
    //   384: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   387: ldc_w 385
    //   390: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   393: invokevirtual 387	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   396: invokevirtual 391	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   399: pop
    //   400: ldc -108
    //   402: getstatic 32	gau:a	Ljava/lang/String;
    //   405: invokevirtual 397	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   408: istore 5
    //   410: aload 8
    //   412: ldc_w 399
    //   415: invokevirtual 403	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   418: astore_1
    //   419: aload_1
    //   420: ifnull +12 -> 432
    //   423: ldc_w 349
    //   426: aload_1
    //   427: invokevirtual 397	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   430: istore 5
    //   432: ldc -52
    //   434: iconst_3
    //   435: invokestatic 407	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   438: ifeq +22 -> 460
    //   441: new 124	java/lang/StringBuilder
    //   444: dup
    //   445: ldc_w 409
    //   448: invokespecial 127	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   451: aload 8
    //   453: invokevirtual 413	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   456: invokevirtual 268	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   459: pop
    //   460: aload_0
    //   461: getfield 415	gau:h	Landroid/os/Messenger;
    //   464: ifnull +79 -> 543
    //   467: aload 8
    //   469: ldc_w 417
    //   472: aload_0
    //   473: getfield 297	gau:g	Landroid/os/Messenger;
    //   476: invokevirtual 420	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   479: pop
    //   480: invokestatic 255	android/os/Message:obtain	()Landroid/os/Message;
    //   483: astore_1
    //   484: aload_1
    //   485: aload 8
    //   487: putfield 259	android/os/Message:obj	Ljava/lang/Object;
    //   490: aload_0
    //   491: getfield 415	gau:h	Landroid/os/Messenger;
    //   494: aload_1
    //   495: invokevirtual 263	android/os/Messenger:send	(Landroid/os/Message;)V
    //   498: aload 7
    //   500: ldc2_w 421
    //   503: invokevirtual 426	android/os/ConditionVariable:block	(J)Z
    //   506: pop
    //   507: aload_0
    //   508: invokevirtual 220	java/lang/Object:getClass	()Ljava/lang/Class;
    //   511: astore_1
    //   512: aload_1
    //   513: monitorenter
    //   514: aload_0
    //   515: getfield 48	gau:f	Ljava/util/Map;
    //   518: aload 6
    //   520: invokeinterface 429 2 0
    //   525: astore_2
    //   526: aload_2
    //   527: instanceof 74
    //   530: ifeq +130 -> 660
    //   533: aload_2
    //   534: checkcast 74	android/content/Intent
    //   537: astore_2
    //   538: aload_1
    //   539: monitorexit
    //   540: aload_2
    //   541: areturn
    //   542: astore_1
    //   543: iload 5
    //   545: ifeq +48 -> 593
    //   548: new 74	android/content/Intent
    //   551: dup
    //   552: ldc_w 431
    //   555: invokespecial 79	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   558: astore_1
    //   559: aload_1
    //   560: aload_0
    //   561: getfield 50	gau:e	Landroid/content/Context;
    //   564: invokevirtual 370	android/content/Context:getPackageName	()Ljava/lang/String;
    //   567: invokevirtual 321	android/content/Intent:setPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   570: pop
    //   571: aload_1
    //   572: ldc_w 433
    //   575: aload 8
    //   577: invokevirtual 420	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   580: pop
    //   581: aload_0
    //   582: getfield 50	gau:e	Landroid/content/Context;
    //   585: aload_1
    //   586: invokevirtual 437	android/content/Context:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   589: pop
    //   590: goto -92 -> 498
    //   593: aload 8
    //   595: ldc_w 417
    //   598: aload_0
    //   599: getfield 297	gau:g	Landroid/os/Messenger;
    //   602: invokevirtual 420	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   605: pop
    //   606: aload 8
    //   608: ldc_w 439
    //   611: ldc_w 349
    //   614: invokevirtual 391	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   617: pop
    //   618: aload_0
    //   619: getfield 441	gau:i	Lcom/google/android/gms/iid/MessengerCompat;
    //   622: ifnull +25 -> 647
    //   625: invokestatic 255	android/os/Message:obtain	()Landroid/os/Message;
    //   628: astore_1
    //   629: aload_1
    //   630: aload 8
    //   632: putfield 259	android/os/Message:obj	Ljava/lang/Object;
    //   635: aload_0
    //   636: getfield 441	gau:i	Lcom/google/android/gms/iid/MessengerCompat;
    //   639: aload_1
    //   640: invokevirtual 445	com/google/android/gms/iid/MessengerCompat:a	(Landroid/os/Message;)V
    //   643: goto -145 -> 498
    //   646: astore_1
    //   647: aload_0
    //   648: getfield 50	gau:e	Landroid/content/Context;
    //   651: aload 8
    //   653: invokevirtual 437	android/content/Context:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   656: pop
    //   657: goto -159 -> 498
    //   660: aload_2
    //   661: instanceof 165
    //   664: ifeq +20 -> 684
    //   667: new 292	java/io/IOException
    //   670: dup
    //   671: aload_2
    //   672: checkcast 165	java/lang/String
    //   675: invokespecial 295	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   678: athrow
    //   679: astore_2
    //   680: aload_1
    //   681: monitorexit
    //   682: aload_2
    //   683: athrow
    //   684: new 124	java/lang/StringBuilder
    //   687: dup
    //   688: ldc_w 447
    //   691: invokespecial 127	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   694: aload_2
    //   695: invokevirtual 268	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   698: pop
    //   699: new 292	java/io/IOException
    //   702: dup
    //   703: ldc_w 449
    //   706: invokespecial 295	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   709: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	710	0	this	gau
    //   0	710	2	paramKeyPair	KeyPair
    //   43	34	3	l1	long
    //   408	136	5	bool	boolean
    //   12	507	6	str1	String
    //   7	492	7	localConditionVariable	ConditionVariable
    //   18	634	8	localObject	Object
    //   273	33	9	str2	String
    // Exception table:
    //   from	to	target	type
    //   23	40	106	finally
    //   107	110	106	finally
    //   490	498	542	android/os/RemoteException
    //   635	643	646	android/os/RemoteException
    //   514	540	679	finally
    //   660	679	679	finally
    //   680	682	679	finally
    //   684	710	679	finally
  }
  
  private void b(Intent paramIntent)
  {
    try
    {
      if (j == null)
      {
        Intent localIntent = new Intent();
        localIntent.setPackage("com.google.example.invalidpackage");
        j = PendingIntent.getBroadcast(e, 0, localIntent, 0);
      }
      paramIntent.putExtra("app", j);
      return;
    }
    finally {}
  }
  
  Intent a(Bundle paramBundle, KeyPair paramKeyPair)
  {
    Intent localIntent2 = b(paramBundle, paramKeyPair);
    Intent localIntent1 = localIntent2;
    if (localIntent2 != null)
    {
      localIntent1 = localIntent2;
      if (localIntent2.hasExtra("google.messenger")) {
        localIntent1 = b(paramBundle, paramKeyPair);
      }
    }
    return localIntent1;
  }
  
  void a(Intent paramIntent)
  {
    if (paramIntent == null) {}
    do
    {
      return;
      localObject1 = paramIntent.getAction();
      if (("com.google.android.c2dm.intent.REGISTRATION".equals(localObject1)) || ("com.google.android.gms.iid.InstanceID".equals(localObject1))) {
        break;
      }
    } while (!Log.isLoggable("InstanceID/Rpc", 3));
    new StringBuilder("Unexpected response ").append(paramIntent.getAction());
    return;
    Object localObject1 = paramIntent.getStringExtra("registration_id");
    if (localObject1 == null) {
      localObject1 = paramIntent.getStringExtra("unregistered");
    }
    for (;;)
    {
      Object localObject3;
      Context localContext;
      if (localObject1 == null)
      {
        localObject3 = paramIntent.getStringExtra("error");
        if (localObject3 == null)
        {
          new StringBuilder("Unexpected response, no error or registration id ").append(paramIntent.getExtras());
          return;
        }
        if (Log.isLoggable("InstanceID/Rpc", 3)) {}
        localObject2 = null;
        localContext = null;
        localObject1 = localObject3;
        if (((String)localObject3).startsWith("|"))
        {
          localObject1 = ((String)localObject3).split("\\|");
          if (("ID".equals(localObject1[1])) || (localObject1.length > 2))
          {
            localContext = localObject1[2];
            localObject3 = localObject1[3];
            localObject2 = localContext;
            localObject1 = localObject3;
            if (((String)localObject3).startsWith(":"))
            {
              localObject1 = ((String)localObject3).substring(1);
              localObject2 = localContext;
            }
            paramIntent.putExtra("error", (String)localObject1);
          }
        }
        else
        {
          if (localObject2 != null) {
            break label322;
          }
          a(localObject1);
        }
        for (;;)
        {
          long l1 = paramIntent.getLongExtra("Retry-After", 0L);
          if (l1 <= 0L) {
            break label333;
          }
          l = SystemClock.elapsedRealtime();
          n = ((int)l1 * 1000);
          o = (SystemClock.elapsedRealtime() + n);
          new StringBuilder("Explicit request from server to backoff: ").append(n);
          return;
          localObject1 = "UNKNOWN";
          localObject2 = localContext;
          break;
          label322:
          a((String)localObject2, localObject1);
        }
        label333:
        if (((!"SERVICE_NOT_AVAILABLE".equals(localObject1)) && (!"AUTHENTICATION_FAILED".equals(localObject1))) || (!"com.google.android.gsf".equals(a))) {
          break;
        }
        m += 1;
        if (m < 3) {
          break;
        }
        if (m == 3) {
          n = (new Random().nextInt(1000) + 1000);
        }
        n <<= 1;
        o = (SystemClock.elapsedRealtime() + n);
        new StringBuilder("Backoff due to ").append((String)localObject1).append(" for ").append(n);
        return;
      }
      k = SystemClock.elapsedRealtime();
      o = 0L;
      m = 0;
      n = 0;
      if (Log.isLoggable("InstanceID/Rpc", 3)) {
        new StringBuilder("AppIDResponse: ").append((String)localObject1).append(" ").append(paramIntent.getExtras());
      }
      Object localObject2 = null;
      if (((String)localObject1).startsWith("|"))
      {
        localObject1 = ((String)localObject1).split("\\|");
        if (!"ID".equals(localObject1[1])) {}
        localObject2 = localObject1[2];
        if (localObject1.length > 4)
        {
          if (!"SYNC".equals(localObject1[3])) {
            break label692;
          }
          localContext = e;
          localObject3 = new Intent("com.google.android.gms.iid.InstanceID");
          ((Intent)localObject3).setPackage(localContext.getPackageName());
          ((Intent)localObject3).putExtra(gas.d, "SYNC");
          localContext.startService((Intent)localObject3);
        }
      }
      label692:
      while (!"RST".equals(localObject1[3]))
      {
        localContext = localObject1[(localObject1.length - 1)];
        localObject1 = localContext;
        if (localContext.startsWith(":")) {
          localObject1 = localContext.substring(1);
        }
        paramIntent.putExtra("registration_id", (String)localObject1);
        if (localObject2 != null) {
          break;
        }
        a(paramIntent);
        return;
      }
      localObject1 = e;
      gar.b(e);
      gas.a((Context)localObject1, gar.c);
      paramIntent.removeExtra("registration_id");
      a((String)localObject2, paramIntent);
      return;
      a((String)localObject2, paramIntent);
      return;
    }
  }
  
  public void a(Message paramMessage)
  {
    if (paramMessage == null) {}
    while (!(obj instanceof Intent)) {
      return;
    }
    Object localObject = (Intent)obj;
    ((Intent)localObject).setExtrasClassLoader(MessengerCompat.class.getClassLoader());
    if (((Intent)localObject).hasExtra("google.messenger"))
    {
      localObject = ((Intent)localObject).getParcelableExtra("google.messenger");
      if ((localObject instanceof MessengerCompat)) {
        i = ((MessengerCompat)localObject);
      }
      if ((localObject instanceof Messenger)) {
        h = ((Messenger)localObject);
      }
    }
    a((Intent)obj);
  }
}

/* Location:
 * Qualified Name:     gau
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */