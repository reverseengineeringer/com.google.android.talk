package com.google.android.apps.hangouts.service;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.text.TextUtils;
import cwn;
import cwo;
import ezi;
import ilh;
import imx;

public class NetworkConnectionCheckingService
  extends IntentService
{
  private static final boolean a = false;
  
  static
  {
    imx localimx = ezi.q;
  }
  
  public NetworkConnectionCheckingService()
  {
    super(NetworkConnectionCheckingService.class.getName());
  }
  
  /* Error */
  private static boolean a(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_3
    //   5: aload 4
    //   7: astore_2
    //   8: aload_0
    //   9: ldc 34
    //   11: invokestatic 39	ilh:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   14: checkcast 34	bdp
    //   17: astore_0
    //   18: aload 4
    //   20: astore_2
    //   21: aload_0
    //   22: ldc 41
    //   24: ldc 43
    //   26: invokeinterface 46 3 0
    //   31: astore 5
    //   33: aload 4
    //   35: astore_2
    //   36: aload_0
    //   37: ldc 48
    //   39: sipush 5000
    //   42: invokeinterface 51 3 0
    //   47: istore_1
    //   48: aload 4
    //   50: astore_2
    //   51: new 53	java/net/URL
    //   54: dup
    //   55: aload 5
    //   57: invokespecial 54	java/net/URL:<init>	(Ljava/lang/String;)V
    //   60: invokevirtual 58	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   63: checkcast 60	java/net/HttpURLConnection
    //   66: astore_0
    //   67: aload_0
    //   68: iload_1
    //   69: invokevirtual 64	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   72: aload_0
    //   73: iload_1
    //   74: invokevirtual 67	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   77: aload_0
    //   78: iconst_0
    //   79: invokevirtual 71	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   82: aload_0
    //   83: iconst_1
    //   84: invokevirtual 74	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   87: aload_0
    //   88: invokevirtual 78	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   91: pop
    //   92: aload_0
    //   93: invokevirtual 82	java/net/HttpURLConnection:getResponseCode	()I
    //   96: istore_1
    //   97: iload_1
    //   98: sipush 204
    //   101: if_icmpeq +13 -> 114
    //   104: aload_0
    //   105: ifnull +7 -> 112
    //   108: aload_0
    //   109: invokevirtual 85	java/net/HttpURLConnection:disconnect	()V
    //   112: iconst_1
    //   113: ireturn
    //   114: aload_0
    //   115: ifnull +7 -> 122
    //   118: aload_0
    //   119: invokevirtual 85	java/net/HttpURLConnection:disconnect	()V
    //   122: iconst_0
    //   123: ireturn
    //   124: astore_2
    //   125: aconst_null
    //   126: astore_0
    //   127: ldc 87
    //   129: ldc 89
    //   131: aload_2
    //   132: invokestatic 93	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   135: aload_0
    //   136: ifnull -14 -> 122
    //   139: aload_0
    //   140: invokevirtual 85	java/net/HttpURLConnection:disconnect	()V
    //   143: goto -21 -> 122
    //   146: astore_2
    //   147: aload_3
    //   148: astore_0
    //   149: aload_2
    //   150: astore_3
    //   151: aload_0
    //   152: astore_2
    //   153: ldc 87
    //   155: ldc 95
    //   157: aload_3
    //   158: invokestatic 93	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   161: aload_0
    //   162: ifnull -40 -> 122
    //   165: aload_0
    //   166: invokevirtual 85	java/net/HttpURLConnection:disconnect	()V
    //   169: goto -47 -> 122
    //   172: astore_0
    //   173: aload_2
    //   174: ifnull +7 -> 181
    //   177: aload_2
    //   178: invokevirtual 85	java/net/HttpURLConnection:disconnect	()V
    //   181: aload_0
    //   182: athrow
    //   183: astore_3
    //   184: aload_0
    //   185: astore_2
    //   186: aload_3
    //   187: astore_0
    //   188: goto -15 -> 173
    //   191: astore_3
    //   192: aload_0
    //   193: astore_2
    //   194: aload_3
    //   195: astore_0
    //   196: goto -23 -> 173
    //   199: astore_3
    //   200: goto -49 -> 151
    //   203: astore_2
    //   204: goto -77 -> 127
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	207	0	paramContext	Context
    //   47	55	1	i	int
    //   7	44	2	localObject1	Object
    //   124	8	2	localMalformedURLException1	java.net.MalformedURLException
    //   146	4	2	localIOException1	java.io.IOException
    //   152	42	2	localContext	Context
    //   203	1	2	localMalformedURLException2	java.net.MalformedURLException
    //   4	154	3	localObject2	Object
    //   183	4	3	localObject3	Object
    //   191	4	3	localObject4	Object
    //   199	1	3	localIOException2	java.io.IOException
    //   1	48	4	localObject5	Object
    //   31	25	5	str	String
    // Exception table:
    //   from	to	target	type
    //   8	18	124	java/net/MalformedURLException
    //   21	33	124	java/net/MalformedURLException
    //   36	48	124	java/net/MalformedURLException
    //   51	67	124	java/net/MalformedURLException
    //   8	18	146	java/io/IOException
    //   21	33	146	java/io/IOException
    //   36	48	146	java/io/IOException
    //   51	67	146	java/io/IOException
    //   8	18	172	finally
    //   21	33	172	finally
    //   36	48	172	finally
    //   51	67	172	finally
    //   153	161	172	finally
    //   67	97	183	finally
    //   127	135	191	finally
    //   67	97	199	java/io/IOException
    //   67	97	203	java/net/MalformedURLException
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent == null) {}
    cwo localcwo;
    cwn localcwn;
    do
    {
      do
      {
        do
        {
          return;
          paramIntent = paramIntent.getExtras();
          localObject = paramIntent.getString("update_type", null);
          localcwo = (cwo)ilh.a(getApplicationContext(), cwo.class);
          localcwn = localcwo.a();
        } while (TextUtils.isEmpty((CharSequence)localObject));
        if (!"initialize_connection_state".equals(localObject)) {
          break;
        }
        if (localcwn == cwn.a) {
          break label126;
        }
      } while (!a);
      paramIntent = String.valueOf(localcwn);
      new StringBuilder(String.valueOf(paramIntent).length() + 38).append("connection state already initialized: ").append(paramIntent);
      return;
    } while (("verify_connection_state".equals(localObject)) && (localcwn.a() == paramIntent.getBoolean("expected_connectivity")));
    label126:
    paramIntent = getApplicationContext();
    Object localObject = ((ConnectivityManager)paramIntent.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localObject == null) {
      paramIntent = cwn.b;
    }
    for (;;)
    {
      localcwo.a(paramIntent);
      return;
      if (!((NetworkInfo)localObject).isConnected()) {
        paramIntent = cwn.b;
      } else if (a(paramIntent)) {
        paramIntent = cwn.c;
      } else {
        paramIntent = cwn.d;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.service.NetworkConnectionCheckingService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */