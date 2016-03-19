import android.app.PendingIntent;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.SystemClock;
import android.telephony.SmsManager;
import com.google.android.apps.hangouts.sms.MmsFileProvider;
import com.google.android.apps.hangouts.sms.SendStatusReceiver;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

public class eni
{
  private static final boolean a = false;
  private static final AtomicLong b = new AtomicLong(1L);
  private static final Uri c = Uri.parse("content://hangoutsmmssend");
  private final SmsManager d;
  private ConcurrentHashMap<Long, enj> e = new ConcurrentHashMap();
  
  static
  {
    imx localimx = ezi.r;
  }
  
  public eni(SmsManager paramSmsManager)
  {
    d = paramSmsManager;
  }
  
  private adx a(Context paramContext, String paramString, adg paramadg, boolean paramBoolean)
  {
    Uri localUri = a(paramContext, paramadg);
    paramadg = new enj(localUri, paramBoolean);
    long l3 = b.getAndIncrement();
    if (a)
    {
      String str2 = String.valueOf(localUri);
      new StringBuilder(String.valueOf(paramString).length() + 51 + String.valueOf(str2).length()).append("MmsSender: sending MMS. locationUrl=").append(paramString).append(" pduContentUri=").append(str2);
    }
    long l1;
    try
    {
      e.put(Long.valueOf(l3), paramadg);
      a(paramContext, localUri, paramString, new Intent("com.google.android.apps.hangouts.sms.SendStatusReceiver.MMS_SENT", ContentUris.withAppendedId(c, l3), paramContext, SendStatusReceiver.class));
      long l2 = ((bdp)ilh.a(paramContext, bdp.class)).a("babel_mms_network_acquire_timeout_in_millis", 180000L);
      long l4 = SystemClock.elapsedRealtime();
      l1 = l2;
      for (;;)
      {
        if (l1 > 0L) {
          try
          {
            paramadg.wait(l1);
            if (!c) {
              l1 = l2 - (SystemClock.elapsedRealtime() - l4);
            }
          }
          catch (InterruptedException localInterruptedException)
          {
            for (;;)
            {
              ezi.e("Babel_SMS", "MmsSender: sending wait interrupted", new Object[0]);
            }
          }
        }
      }
      e.remove(Long.valueOf(l3));
    }
    finally {}
    if (a)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() == 0) {
        break label284;
      }
      "MmsSender: send completed. locationUrl=".concat(paramString);
    }
    for (;;)
    {
      if (c) {
        break;
      }
      ezi.d("Babel_SMS", "MmsSender: timed out waiting for MMS send", new Object[0]);
      throw new enk("Timeout waiting for MMS send");
      label284:
      new String("MmsSender: send completed. locationUrl=");
    }
    int i;
    switch (paramadg.a())
    {
    case 0: 
    default: 
      paramContext = MmsFileProvider.a(a, paramContext);
      if (paramContext.exists())
      {
        paramContext.delete();
        if (a)
        {
          paramString = String.valueOf("MmsSender: Deleted temp file with outgoing MMS [pduContentUri=");
          String str1 = String.valueOf(a);
          l1 = paramContext.length();
          new StringBuilder(String.valueOf(paramString).length() + 29 + String.valueOf(str1).length()).append(paramString).append(str1).append(", size=").append(l1).append("].");
        }
      }
      if (b) {
        return a(e);
      }
      break;
    case 1: 
      i = d;
      ezi.d("Babel_SMS", 57 + "MmsSender: temporary failure with status code " + i, new Object[0]);
      throw new enk("Temporary failure sending MMS");
    case 2: 
      i = d;
      ezi.e("Babel_SMS", 57 + "MmsSender: permanent failure with status code " + i, new Object[0]);
      throw new end();
    }
    return null;
  }
  
  public adx a(Context paramContext, ady paramady)
  {
    return a(paramContext, null, paramady, true);
  }
  
  adx a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      paramArrayOfByte = new adq(paramArrayOfByte).a();
      if (paramArrayOfByte == null) {
        break label45;
      }
      if ((paramArrayOfByte instanceof adx)) {
        return (adx)paramArrayOfByte;
      }
      ezi.e("Babel_SMS", "MmsSender: send response not SendConf", new Object[0]);
    }
    for (;;)
    {
      return null;
      label45:
      ezi.e("Babel_SMS", "MmsSender: send invalid response", new Object[0]);
    }
  }
  
  /* Error */
  Uri a(Context paramContext, adg paramadg)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 252	com/google/android/apps/hangouts/sms/MmsFileProvider:a	(Landroid/content/Context;)Landroid/net/Uri;
    //   4: astore 6
    //   6: aload 6
    //   8: aload_1
    //   9: invokestatic 181	com/google/android/apps/hangouts/sms/MmsFileProvider:a	(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;
    //   12: astore 5
    //   14: aload 5
    //   16: invokevirtual 256	java/io/File:getParentFile	()Ljava/io/File;
    //   19: invokevirtual 259	java/io/File:mkdirs	()Z
    //   22: pop
    //   23: new 261	java/io/FileOutputStream
    //   26: dup
    //   27: aload 5
    //   29: invokespecial 264	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   32: astore 4
    //   34: aload 4
    //   36: astore_3
    //   37: new 266	adk
    //   40: dup
    //   41: aload_1
    //   42: aload_2
    //   43: invokespecial 269	adk:<init>	(Landroid/content/Context;Ladg;)V
    //   46: invokevirtual 272	adk:a	()[B
    //   49: astore_1
    //   50: aload_1
    //   51: ifnonnull +100 -> 151
    //   54: aload 4
    //   56: astore_3
    //   57: new 274	java/lang/IllegalArgumentException
    //   60: dup
    //   61: ldc_w 276
    //   64: invokespecial 277	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   67: athrow
    //   68: astore_1
    //   69: aload 5
    //   71: ifnull +12 -> 83
    //   74: aload 4
    //   76: astore_3
    //   77: aload 5
    //   79: invokevirtual 190	java/io/File:delete	()Z
    //   82: pop
    //   83: aload 4
    //   85: astore_3
    //   86: aload 5
    //   88: invokevirtual 280	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   91: invokestatic 75	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   94: astore_2
    //   95: aload 4
    //   97: astore_3
    //   98: aload_2
    //   99: invokevirtual 81	java/lang/String:length	()I
    //   102: ifeq +66 -> 168
    //   105: aload 4
    //   107: astore_3
    //   108: ldc_w 282
    //   111: aload_2
    //   112: invokevirtual 160	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   115: astore_2
    //   116: aload 4
    //   118: astore_3
    //   119: ldc -111
    //   121: aload_2
    //   122: aload_1
    //   123: invokestatic 285	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   126: aload 4
    //   128: astore_3
    //   129: new 166	enk
    //   132: dup
    //   133: ldc_w 287
    //   136: invokespecial 171	enk:<init>	(Ljava/lang/String;)V
    //   139: athrow
    //   140: astore_1
    //   141: aload_3
    //   142: ifnull +7 -> 149
    //   145: aload_3
    //   146: invokevirtual 290	java/io/FileOutputStream:close	()V
    //   149: aload_1
    //   150: athrow
    //   151: aload 4
    //   153: astore_3
    //   154: aload 4
    //   156: aload_1
    //   157: invokevirtual 293	java/io/FileOutputStream:write	([B)V
    //   160: aload 4
    //   162: invokevirtual 290	java/io/FileOutputStream:close	()V
    //   165: aload 6
    //   167: areturn
    //   168: aload 4
    //   170: astore_3
    //   171: new 71	java/lang/String
    //   174: dup
    //   175: ldc_w 282
    //   178: invokespecial 172	java/lang/String:<init>	(Ljava/lang/String;)V
    //   181: astore_2
    //   182: goto -66 -> 116
    //   185: aload 5
    //   187: ifnull +12 -> 199
    //   190: aload 4
    //   192: astore_3
    //   193: aload 5
    //   195: invokevirtual 190	java/io/File:delete	()Z
    //   198: pop
    //   199: aload 4
    //   201: astore_3
    //   202: ldc -111
    //   204: ldc_w 295
    //   207: aload_1
    //   208: invokestatic 285	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   211: aload 4
    //   213: astore_3
    //   214: new 227	end
    //   217: dup
    //   218: aload_1
    //   219: invokespecial 298	end:<init>	(Ljava/lang/Throwable;)V
    //   222: athrow
    //   223: astore_1
    //   224: aload 6
    //   226: areturn
    //   227: astore_2
    //   228: goto -79 -> 149
    //   231: astore_1
    //   232: aconst_null
    //   233: astore_3
    //   234: goto -93 -> 141
    //   237: astore_1
    //   238: goto -53 -> 185
    //   241: astore_1
    //   242: aconst_null
    //   243: astore 4
    //   245: goto -176 -> 69
    //   248: astore_1
    //   249: aconst_null
    //   250: astore 4
    //   252: goto -67 -> 185
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	255	0	this	eni
    //   0	255	1	paramContext	Context
    //   0	255	2	paramadg	adg
    //   36	198	3	localFileOutputStream1	java.io.FileOutputStream
    //   32	219	4	localFileOutputStream2	java.io.FileOutputStream
    //   12	182	5	localFile	File
    //   4	221	6	localUri	Uri
    // Exception table:
    //   from	to	target	type
    //   37	50	68	java/io/IOException
    //   57	68	68	java/io/IOException
    //   154	160	68	java/io/IOException
    //   37	50	140	finally
    //   57	68	140	finally
    //   77	83	140	finally
    //   86	95	140	finally
    //   98	105	140	finally
    //   108	116	140	finally
    //   119	126	140	finally
    //   129	140	140	finally
    //   154	160	140	finally
    //   171	182	140	finally
    //   193	199	140	finally
    //   202	211	140	finally
    //   214	223	140	finally
    //   160	165	223	java/io/IOException
    //   145	149	227	java/io/IOException
    //   14	34	231	finally
    //   37	50	237	java/lang/OutOfMemoryError
    //   57	68	237	java/lang/OutOfMemoryError
    //   154	160	237	java/lang/OutOfMemoryError
    //   14	34	241	java/io/IOException
    //   14	34	248	java/lang/OutOfMemoryError
  }
  
  public void a(long paramLong, int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    if (paramInt1 != -1)
    {
      localObject = String.valueOf("MmsSender: failure in sending mms.  requestId=");
      ezi.e("Babel_SMS", String.valueOf(localObject).length() + 70 + (String)localObject + paramLong + " resultCode=" + paramInt1 + " httpStatusCode=" + paramInt2, new Object[0]);
    }
    for (;;)
    {
      if (paramLong >= 0L)
      {
        localObject = (enj)e.get(Long.valueOf(paramLong));
        if (localObject == null) {}
      }
      try
      {
        ((enj)localObject).a(paramInt1, paramInt2, paramArrayOfByte);
        localObject.notifyAll();
        return;
      }
      finally {}
      if (a)
      {
        localObject = String.valueOf("MmsSender: received result.  requestId=");
        new StringBuilder(String.valueOf(localObject).length() + 70).append((String)localObject).append(paramLong).append(" resultCode=").append(paramInt1).append(" httpStatusCode=").append(paramInt2);
      }
    }
  }
  
  void a(Context paramContext, Uri paramUri, String paramString, Intent paramIntent)
  {
    paramIntent = PendingIntent.getBroadcast(paramContext, 0, paramIntent, 134217728);
    d.sendMultimediaMessage(paramContext, paramUri, paramString, emy.b, paramIntent);
  }
  
  public void a(Context paramContext, byte[] paramArrayOfByte, String paramString)
  {
    if (emy.a().s()) {
      if (a)
      {
        String str = String.valueOf(paramString);
        if (str.length() == 0) {
          break label63;
        }
        "MmsSender: sending NotifyResp. locationUrl=".concat(str);
      }
    }
    for (;;)
    {
      a(paramContext, paramString, new adg(paramArrayOfByte, 129), false);
      return;
      paramString = null;
      break;
      label63:
      new String("MmsSender: sending NotifyResp. locationUrl=");
    }
  }
}

/* Location:
 * Qualified Name:     eni
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */