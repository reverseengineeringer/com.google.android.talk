import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ComponentName;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;

public final class fgk
{
  public static final String a;
  public static final String b = "androidPackageName";
  private static final ComponentName c = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
  private static final ComponentName d = new ComponentName("com.google.android.gms", "com.google.android.gms.recovery.RecoveryService");
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    a = "callerUid";
    i = Build.VERSION.SDK_INT;
  }
  
  private static String a(Context paramContext, Account paramAccount, String paramString, Bundle paramBundle)
  {
    return b(paramContext, paramAccount, paramString, paramBundle).getString("authtoken");
  }
  
  @Deprecated
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, new Account(paramString1, "com.google"), paramString2, new Bundle());
  }
  
  private static void a(Context paramContext)
  {
    try
    {
      fhr.b(paramContext);
      return;
    }
    catch (fhq paramContext)
    {
      throw new fgl(paramContext.a(), paramContext.getMessage(), paramContext.b());
    }
    catch (fhp paramContext)
    {
      throw new fgj(paramContext.getMessage());
    }
  }
  
  @Deprecated
  public static void a(Context paramContext, String paramString)
  {
    AccountManager.get(paramContext).invalidateAuthToken("com.google", paramString);
  }
  
  /* Error */
  private static Bundle b(Context paramContext, Account paramAccount, String paramString, Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 117	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   4: astore 6
    //   6: ldc 119
    //   8: invokestatic 124	aal:x	(Ljava/lang/String;)V
    //   11: aload 6
    //   13: invokestatic 126	fgk:a	(Landroid/content/Context;)V
    //   16: aload_3
    //   17: ifnonnull +131 -> 148
    //   20: new 51	android/os/Bundle
    //   23: dup
    //   24: invokespecial 64	android/os/Bundle:<init>	()V
    //   27: astore_3
    //   28: aload_0
    //   29: invokevirtual 130	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   32: getfield 135	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   35: astore_0
    //   36: aload_3
    //   37: ldc -119
    //   39: aload_0
    //   40: invokevirtual 140	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: aload_3
    //   44: getstatic 26	fgk:b	Ljava/lang/String;
    //   47: invokevirtual 55	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   50: invokestatic 146	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   53: ifeq +11 -> 64
    //   56: aload_3
    //   57: getstatic 26	fgk:b	Ljava/lang/String;
    //   60: aload_0
    //   61: invokevirtual 140	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   64: new 148	fmu
    //   67: dup
    //   68: invokespecial 149	fmu:<init>	()V
    //   71: astore_0
    //   72: aload 6
    //   74: invokestatic 154	flo:a	(Landroid/content/Context;)Lflo;
    //   77: astore 6
    //   79: aload 6
    //   81: getstatic 38	fgk:c	Landroid/content/ComponentName;
    //   84: aload_0
    //   85: ldc -100
    //   87: invokevirtual 159	flo:a	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    //   90: ifeq +358 -> 448
    //   93: aload_0
    //   94: invokevirtual 162	fmu:a	()Landroid/os/IBinder;
    //   97: invokestatic 167	gbw:a	(Landroid/os/IBinder;)Lgbv;
    //   100: aload_1
    //   101: aload_2
    //   102: aload_3
    //   103: invokeinterface 172 4 0
    //   108: astore_2
    //   109: aload_2
    //   110: ifnonnull +50 -> 160
    //   113: new 93	fgj
    //   116: dup
    //   117: ldc -82
    //   119: invokespecial 97	fgj:<init>	(Ljava/lang/String;)V
    //   122: athrow
    //   123: astore_1
    //   124: new 176	java/io/IOException
    //   127: dup
    //   128: ldc -78
    //   130: invokespecial 179	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   133: athrow
    //   134: astore_1
    //   135: aload 6
    //   137: getstatic 38	fgk:c	Landroid/content/ComponentName;
    //   140: aload_0
    //   141: ldc -100
    //   143: invokevirtual 182	flo:b	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    //   146: aload_1
    //   147: athrow
    //   148: new 51	android/os/Bundle
    //   151: dup
    //   152: aload_3
    //   153: invokespecial 185	android/os/Bundle:<init>	(Landroid/os/Bundle;)V
    //   156: astore_3
    //   157: goto -129 -> 28
    //   160: aload_2
    //   161: ldc 49
    //   163: invokevirtual 55	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   166: invokestatic 146	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   169: istore 5
    //   171: iload 5
    //   173: ifne +16 -> 189
    //   176: aload 6
    //   178: getstatic 38	fgk:c	Landroid/content/ComponentName;
    //   181: aload_0
    //   182: ldc -100
    //   184: invokevirtual 182	flo:b	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    //   187: aload_2
    //   188: areturn
    //   189: aload_2
    //   190: ldc -69
    //   192: invokevirtual 55	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   195: astore_1
    //   196: aload_2
    //   197: ldc -67
    //   199: invokevirtual 193	android/os/Bundle:getParcelable	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   202: checkcast 195	android/content/Intent
    //   205: astore_2
    //   206: ldc -59
    //   208: aload_1
    //   209: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   212: ifne +246 -> 458
    //   215: ldc -51
    //   217: aload_1
    //   218: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   221: ifne +237 -> 458
    //   224: ldc -49
    //   226: aload_1
    //   227: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   230: ifne +228 -> 458
    //   233: ldc -47
    //   235: aload_1
    //   236: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   239: ifne +219 -> 458
    //   242: ldc -45
    //   244: aload_1
    //   245: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   248: ifne +210 -> 458
    //   251: ldc -43
    //   253: aload_1
    //   254: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   257: ifne +201 -> 458
    //   260: ldc -41
    //   262: aload_1
    //   263: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   266: ifne +192 -> 458
    //   269: getstatic 221	fgn:u	Lfgn;
    //   272: invokevirtual 223	fgn:a	()Ljava/lang/String;
    //   275: aload_1
    //   276: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   279: ifne +179 -> 458
    //   282: getstatic 226	fgn:v	Lfgn;
    //   285: invokevirtual 223	fgn:a	()Ljava/lang/String;
    //   288: aload_1
    //   289: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   292: ifne +166 -> 458
    //   295: getstatic 229	fgn:w	Lfgn;
    //   298: invokevirtual 223	fgn:a	()Ljava/lang/String;
    //   301: aload_1
    //   302: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   305: ifne +153 -> 458
    //   308: getstatic 231	fgn:x	Lfgn;
    //   311: invokevirtual 223	fgn:a	()Ljava/lang/String;
    //   314: aload_1
    //   315: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   318: ifne +140 -> 458
    //   321: getstatic 234	fgn:y	Lfgn;
    //   324: invokevirtual 223	fgn:a	()Ljava/lang/String;
    //   327: aload_1
    //   328: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   331: ifne +127 -> 458
    //   334: getstatic 237	fgn:z	Lfgn;
    //   337: invokevirtual 223	fgn:a	()Ljava/lang/String;
    //   340: aload_1
    //   341: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   344: ifne +114 -> 458
    //   347: getstatic 240	fgn:s	Lfgn;
    //   350: invokevirtual 223	fgn:a	()Ljava/lang/String;
    //   353: aload_1
    //   354: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   357: ifeq +32 -> 389
    //   360: goto +98 -> 458
    //   363: iload 4
    //   365: ifeq +30 -> 395
    //   368: new 242	fgm
    //   371: dup
    //   372: aload_1
    //   373: aload_2
    //   374: invokespecial 245	fgm:<init>	(Ljava/lang/String;Landroid/content/Intent;)V
    //   377: athrow
    //   378: astore_1
    //   379: new 93	fgj
    //   382: dup
    //   383: ldc -9
    //   385: invokespecial 97	fgj:<init>	(Ljava/lang/String;)V
    //   388: athrow
    //   389: iconst_0
    //   390: istore 4
    //   392: goto -29 -> 363
    //   395: ldc -7
    //   397: aload_1
    //   398: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   401: ifne +63 -> 464
    //   404: ldc -82
    //   406: aload_1
    //   407: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   410: ifne +54 -> 464
    //   413: ldc -5
    //   415: aload_1
    //   416: invokevirtual 203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   419: ifeq +51 -> 470
    //   422: goto +42 -> 464
    //   425: iload 4
    //   427: ifeq +12 -> 439
    //   430: new 176	java/io/IOException
    //   433: dup
    //   434: aload_1
    //   435: invokespecial 179	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   438: athrow
    //   439: new 93	fgj
    //   442: dup
    //   443: aload_1
    //   444: invokespecial 97	fgj:<init>	(Ljava/lang/String;)V
    //   447: athrow
    //   448: new 176	java/io/IOException
    //   451: dup
    //   452: ldc -3
    //   454: invokespecial 179	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   457: athrow
    //   458: iconst_1
    //   459: istore 4
    //   461: goto -98 -> 363
    //   464: iconst_1
    //   465: istore 4
    //   467: goto -42 -> 425
    //   470: iconst_0
    //   471: istore 4
    //   473: goto -48 -> 425
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	476	0	paramContext	Context
    //   0	476	1	paramAccount	Account
    //   0	476	2	paramString	String
    //   0	476	3	paramBundle	Bundle
    //   363	109	4	i	int
    //   169	3	5	bool	boolean
    //   4	173	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   93	109	123	android/os/RemoteException
    //   113	123	123	android/os/RemoteException
    //   160	171	123	android/os/RemoteException
    //   189	360	123	android/os/RemoteException
    //   368	378	123	android/os/RemoteException
    //   395	422	123	android/os/RemoteException
    //   430	439	123	android/os/RemoteException
    //   439	448	123	android/os/RemoteException
    //   93	109	134	finally
    //   113	123	134	finally
    //   124	134	134	finally
    //   160	171	134	finally
    //   189	360	134	finally
    //   368	378	134	finally
    //   379	389	134	finally
    //   395	422	134	finally
    //   430	439	134	finally
    //   439	448	134	finally
    //   93	109	378	java/lang/InterruptedException
    //   113	123	378	java/lang/InterruptedException
    //   160	171	378	java/lang/InterruptedException
    //   189	360	378	java/lang/InterruptedException
    //   368	378	378	java/lang/InterruptedException
    //   395	422	378	java/lang/InterruptedException
    //   430	439	378	java/lang/InterruptedException
    //   439	448	378	java/lang/InterruptedException
  }
  
  @Deprecated
  public static String b(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, new Account(paramString1, "com.google"), paramString2, null);
  }
  
  /* Error */
  public static void b(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 117	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   4: astore_2
    //   5: ldc 119
    //   7: invokestatic 124	aal:x	(Ljava/lang/String;)V
    //   10: aload_2
    //   11: invokestatic 126	fgk:a	(Landroid/content/Context;)V
    //   14: new 51	android/os/Bundle
    //   17: dup
    //   18: invokespecial 64	android/os/Bundle:<init>	()V
    //   21: astore_3
    //   22: aload_0
    //   23: invokevirtual 130	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   26: getfield 135	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   29: astore_0
    //   30: aload_3
    //   31: ldc -119
    //   33: aload_0
    //   34: invokevirtual 140	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   37: aload_3
    //   38: getstatic 26	fgk:b	Ljava/lang/String;
    //   41: invokevirtual 257	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   44: ifne +11 -> 55
    //   47: aload_3
    //   48: getstatic 26	fgk:b	Ljava/lang/String;
    //   51: aload_0
    //   52: invokevirtual 140	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   55: new 148	fmu
    //   58: dup
    //   59: invokespecial 149	fmu:<init>	()V
    //   62: astore_0
    //   63: aload_2
    //   64: invokestatic 154	flo:a	(Landroid/content/Context;)Lflo;
    //   67: astore_2
    //   68: aload_2
    //   69: getstatic 38	fgk:c	Landroid/content/ComponentName;
    //   72: aload_0
    //   73: ldc -100
    //   75: invokevirtual 159	flo:a	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    //   78: ifeq +90 -> 168
    //   81: aload_0
    //   82: invokevirtual 162	fmu:a	()Landroid/os/IBinder;
    //   85: invokestatic 167	gbw:a	(Landroid/os/IBinder;)Lgbv;
    //   88: aload_1
    //   89: aload_3
    //   90: invokeinterface 260 3 0
    //   95: astore_1
    //   96: aload_1
    //   97: ldc -69
    //   99: invokevirtual 55	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   102: astore_3
    //   103: aload_1
    //   104: ldc_w 262
    //   107: invokevirtual 265	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   110: ifne +36 -> 146
    //   113: new 93	fgj
    //   116: dup
    //   117: aload_3
    //   118: invokespecial 97	fgj:<init>	(Ljava/lang/String;)V
    //   121: athrow
    //   122: astore_1
    //   123: new 176	java/io/IOException
    //   126: dup
    //   127: ldc -78
    //   129: invokespecial 179	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   132: athrow
    //   133: astore_1
    //   134: aload_2
    //   135: getstatic 38	fgk:c	Landroid/content/ComponentName;
    //   138: aload_0
    //   139: ldc -100
    //   141: invokevirtual 182	flo:b	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    //   144: aload_1
    //   145: athrow
    //   146: aload_2
    //   147: getstatic 38	fgk:c	Landroid/content/ComponentName;
    //   150: aload_0
    //   151: ldc -100
    //   153: invokevirtual 182	flo:b	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    //   156: return
    //   157: astore_1
    //   158: new 93	fgj
    //   161: dup
    //   162: ldc -9
    //   164: invokespecial 97	fgj:<init>	(Ljava/lang/String;)V
    //   167: athrow
    //   168: new 176	java/io/IOException
    //   171: dup
    //   172: ldc -3
    //   174: invokespecial 179	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   177: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	178	0	paramContext	Context
    //   0	178	1	paramString	String
    //   4	143	2	localObject1	Object
    //   21	97	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   81	122	122	android/os/RemoteException
    //   81	122	133	finally
    //   123	133	133	finally
    //   158	168	133	finally
    //   81	122	157	java/lang/InterruptedException
  }
  
  private static Bundle c(Context paramContext, Account paramAccount, String paramString, Bundle paramBundle)
  {
    try
    {
      paramAccount = b(paramContext, paramAccount, paramString, paramBundle);
      fhr.c(paramContext);
      return paramAccount;
    }
    catch (fgl paramAccount)
    {
      fhr.a(paramAccount.a(), paramContext);
      throw new fgj("User intervention required. Notification has been pushed.", (byte)0);
    }
    catch (fgm paramAccount)
    {
      fhr.c(paramContext);
      throw new fgj("User intervention required. Notification has been pushed.", (byte)0);
    }
  }
  
  @Deprecated
  public static String c(Context paramContext, String paramString1, String paramString2)
  {
    paramString1 = new Account(paramString1, "com.google");
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("handle_notification", true);
    return c(paramContext, paramString1, paramString2, localBundle).getString("authtoken");
  }
  
  public static Account[] c(Context paramContext, String paramString)
  {
    int i = 1;
    fho localfho = fho.b;
    fho.b(paramContext);
    aal.v(paramString);
    if (aal.o(22)) {
      if (!aal.o(23)) {}
    }
    while (i != 0)
    {
      return d(paramContext, paramString);
      switch (Build.VERSION.CODENAME.charAt(0))
      {
      }
      i = 0;
    }
    return AccountManager.get(paramContext).getAccountsByType(paramString);
  }
  
  private static Account[] d(Context paramContext, String paramString)
  {
    int i = 0;
    paramContext = ((Context)aal.d(paramContext)).getContentResolver().acquireContentProviderClient("com.google.android.gms.auth.accounts");
    if (paramContext == null) {
      return new Account[0];
    }
    try
    {
      paramString = paramContext.call("get_accounts", paramString, new Bundle()).getParcelableArray("accounts");
      Account[] arrayOfAccount = new Account[paramString.length];
      while (i < paramString.length)
      {
        arrayOfAccount[i] = ((Account)paramString[i]);
        i += 1;
      }
      return arrayOfAccount;
    }
    finally
    {
      paramContext.release();
    }
  }
}

/* Location:
 * Qualified Name:     fgk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */