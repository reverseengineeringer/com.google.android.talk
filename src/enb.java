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
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

public class enb
{
  private static final boolean a = false;
  private static final AtomicLong b = new AtomicLong(1L);
  private static final Uri c = Uri.parse("content://hangoutsmmsdownload");
  private static ConcurrentHashMap<Long, enc> e = new ConcurrentHashMap();
  private final SmsManager d;
  
  static
  {
    imx localimx = ezi.r;
  }
  
  public enb(SmsManager paramSmsManager)
  {
    d = paramSmsManager;
  }
  
  private static adw a(byte[] paramArrayOfByte, Context paramContext)
  {
    Object localObject = null;
    try
    {
      adg localadg = new adq(paramArrayOfByte).a();
      localObject = localadg;
    }
    catch (RuntimeException localRuntimeException)
    {
      for (;;)
      {
        ezi.d("Babel_SMS", "MmsDownloader: Parsing retrieved PDU failure", localRuntimeException);
      }
    }
    if ((enn.i()) && (localObject != null)) {
      enn.a(paramArrayOfByte, (adg)localObject, paramContext);
    }
    return (adw)localObject;
  }
  
  private enc a(Context paramContext, String paramString)
  {
    Object localObject1;
    if (a)
    {
      localObject1 = String.valueOf(paramString);
      if (((String)localObject1).length() == 0) {
        break label247;
      }
      "MmsDownloader.downloadMessage: ".concat((String)localObject1);
    }
    Object localObject2;
    long l3;
    for (;;)
    {
      localObject2 = MmsFileProvider.a(paramContext);
      localObject1 = new enc((Uri)localObject2);
      l3 = b.getAndIncrement();
      if (a)
      {
        String str1 = String.valueOf("MmsDownloader: downloading MMS. contentLocation=");
        String str2 = String.valueOf(localObject2);
        new StringBuilder(String.valueOf(str1).length() + 47 + String.valueOf(paramString).length() + String.valueOf(str2).length()).append(str1).append(paramString).append(" destinationUri=").append(str2).append(" requestId=").append(l3);
      }
      try
      {
        e.put(Long.valueOf(l3), localObject1);
        a(paramContext, paramString, (Uri)localObject2, new Intent("com.google.android.apps.hangouts.sms.SendStatusReceiver.MMS_DOWNLOADED", ContentUris.withAppendedId(c, l3), paramContext, SendStatusReceiver.class));
        long l2 = ((bdp)ilh.a(paramContext, bdp.class)).a("babel_mms_network_acquire_timeout_in_millis", 180000L);
        long l4 = SystemClock.elapsedRealtime();
        long l1 = l2;
        label212:
        if (l1 > 0L) {
          try
          {
            localObject1.wait(l1);
            if (!b)
            {
              l1 = SystemClock.elapsedRealtime();
              l1 = l2 - (l1 - l4);
              break label212;
              label247:
              new String("MmsDownloader.downloadMessage: ");
            }
          }
          catch (InterruptedException paramContext)
          {
            for (;;)
            {
              ezi.e("Babel_SMS", "MmsDownloader: sending wait interrupted", new Object[0]);
            }
          }
        } else {
          e.remove(Long.valueOf(l3));
        }
      }
      finally {}
    }
    if (a)
    {
      paramContext = String.valueOf("MmsDownloader: download completed. contentLocation=");
      localObject2 = String.valueOf(localObject1);
      new StringBuilder(String.valueOf(paramContext).length() + 8 + String.valueOf(paramString).length() + String.valueOf(localObject2).length()).append(paramContext).append(paramString).append(" result=").append((String)localObject2);
    }
    return (enc)localObject1;
  }
  
  public adw a(Context paramContext, byte[] paramArrayOfByte, String paramString)
  {
    Object localObject;
    if (a)
    {
      localObject = String.valueOf(paramString);
      if (((String)localObject).length() == 0) {
        break label110;
      }
      "MmsDownloader.retrieveMmsPdu: ".concat((String)localObject);
    }
    for (;;)
    {
      aal.x();
      localObject = a(paramContext, paramString);
      if (a)
      {
        String str = String.valueOf(localObject);
        new StringBuilder(String.valueOf(str).length() + 35).append("MmsDownloader: downloadMms result: ").append(str);
      }
      if (b) {
        break;
      }
      ezi.d("Babel_SMS", "MmsDownloader: timed out waiting for MMS download", new Object[0]);
      throw new enk("Timeout waiting for MMS download");
      label110:
      new String("MmsDownloader.retrieveMmsPdu: ");
    }
    int i;
    switch (((enc)localObject).a())
    {
    case 0: 
    default: 
      localObject = a(a, paramString, paramContext);
      if (localObject == null)
      {
        ezi.e("Babel_SMS", "MmsDownloader: empty bytes received", new Object[0]);
        throw new end(137, "MmsDownloader got empty or invalid response");
      }
      break;
    case 1: 
      i = c;
      ezi.d("Babel_SMS", 61 + "MmsDownloader: temporary failure with status code " + i, new Object[0]);
      throw new enk("Temporary failure downloading MMS");
    case 2: 
      i = c;
      ezi.e("Babel_SMS", 61 + "MmsDownloader: permanent failure with status code " + i, new Object[0]);
      throw new end();
    }
    ((eni)ilh.a(paramContext, eni.class)).a(paramContext, paramArrayOfByte, paramString);
    return (adw)localObject;
  }
  
  adw a(Uri paramUri, String paramString, Context paramContext)
  {
    Object localObject = MmsFileProvider.a(paramUri, paramContext);
    String str1 = ((File)localObject).getAbsolutePath();
    paramUri = new File(str1);
    try
    {
      paramUri = aal.a(aal.a(paramUri, false));
      if (((File)localObject).exists())
      {
        ((File)localObject).delete();
        if (a)
        {
          String str2 = String.valueOf(str1);
          if (str2.length() == 0) {
            break label228;
          }
          "MmsDownloader: Deleted temp file with downloaded MMS pdu: ".concat(str2);
        }
      }
      if ((paramUri != null) && (paramUri.length > 0))
      {
        if (a)
        {
          localObject = String.valueOf("MmsDownloader: retrieved MMS data from file. contentLocation=");
          int i = paramUri.length;
          new StringBuilder(String.valueOf(localObject).length() + 31 + String.valueOf(paramString).length() + String.valueOf(str1).length()).append((String)localObject).append(paramString).append(" filePath=").append(str1).append(" numBytes=").append(i);
        }
        return a(paramUri, paramContext);
      }
    }
    catch (IOException paramUri)
    {
      for (;;)
      {
        paramUri = String.valueOf(str1);
        if (paramUri.length() != 0) {}
        for (paramUri = "MmsDownloader: error reading bytes from file ".concat(paramUri);; paramUri = new String("MmsDownloader: error reading bytes from file "))
        {
          ezi.e("Babel_SMS", paramUri, new Object[0]);
          paramUri = null;
          break;
        }
        label228:
        new String("MmsDownloader: Deleted temp file with downloaded MMS pdu: ");
      }
      paramContext = String.valueOf("MmsDownloader: Read 0 bytes from MMS destination file. contentLocation=");
      localObject = String.valueOf(((File)localObject).getPath());
      if (paramUri != null) {}
    }
    for (paramUri = "null";; paramUri = Integer.valueOf(paramUri.length))
    {
      paramUri = String.valueOf(paramUri);
      ezi.d("Babel_SMS", String.valueOf(paramContext).length() + 20 + String.valueOf(paramString).length() + String.valueOf(localObject).length() + String.valueOf(paramUri).length() + paramContext + paramString + " fileName=" + (String)localObject + " numBytes=" + paramUri, new Object[0]);
      return null;
    }
  }
  
  public void a(long paramLong, int paramInt1, int paramInt2)
  {
    if (paramInt1 != -1)
    {
      localObject1 = String.valueOf("MmsDownloader: failure in downloading mms.  requestId=");
      ezi.e("Babel_SMS", String.valueOf(localObject1).length() + 70 + (String)localObject1 + paramLong + " resultCode=" + paramInt1 + " httpStatusCode=" + paramInt2, new Object[0]);
    }
    for (;;)
    {
      if (paramLong >= 0L)
      {
        localObject1 = (enc)e.get(Long.valueOf(paramLong));
        if (localObject1 == null) {}
      }
      try
      {
        ((enc)localObject1).a(paramInt1, paramInt2);
        localObject1.notifyAll();
        return;
      }
      finally {}
      if (a)
      {
        localObject1 = String.valueOf("MmsDownloader: received result.  requestId=");
        new StringBuilder(String.valueOf(localObject1).length() + 70).append((String)localObject1).append(paramLong).append(" resultCode=").append(paramInt1).append(" httpStatusCode=").append(paramInt2);
      }
    }
  }
  
  void a(Context paramContext, String paramString, Uri paramUri, Intent paramIntent)
  {
    paramIntent = PendingIntent.getBroadcast(paramContext, 0, paramIntent, 134217728);
    d.downloadMultimediaMessage(paramContext, paramString, paramUri, emy.b, paramIntent);
  }
}

/* Location:
 * Qualified Name:     enb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */