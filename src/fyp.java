import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Messenger;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class fyp
{
  public static int a = 5000000;
  public static int b = 6500000;
  public static int c = 7000000;
  static fyp d;
  private static final AtomicInteger i = new AtomicInteger(1);
  final Messenger e = new Messenger(new fyq(this, Looper.getMainLooper()));
  private Context f;
  private PendingIntent g;
  private Map<String, Handler> h = Collections.synchronizedMap(new HashMap());
  private final BlockingQueue<Intent> j = new LinkedBlockingQueue();
  
  @Deprecated
  private Intent a(Bundle paramBundle)
  {
    if (Looper.getMainLooper() == Looper.myLooper()) {
      throw new IOException("MAIN_THREAD");
    }
    if (b(f) < 0) {
      throw new IOException("Google Play Services missing");
    }
    Intent localIntent = new Intent("com.google.android.c2dm.intent.REGISTER");
    localIntent.setPackage(gau.a(f));
    a(localIntent);
    localIntent.putExtra("google.message_id", "google.rpc" + String.valueOf(i.getAndIncrement()));
    localIntent.putExtras(paramBundle);
    localIntent.putExtra("google.messenger", e);
    f.startService(localIntent);
    try
    {
      paramBundle = (Intent)j.poll(30000L, TimeUnit.MILLISECONDS);
      return paramBundle;
    }
    catch (InterruptedException paramBundle)
    {
      throw new IOException(paramBundle.getMessage());
    }
  }
  
  public static fyp a(Context paramContext)
  {
    try
    {
      if (d == null)
      {
        fyp localfyp = new fyp();
        d = localfyp;
        f = paramContext.getApplicationContext();
      }
      paramContext = d;
      return paramContext;
    }
    finally {}
  }
  
  private void a(Intent paramIntent)
  {
    try
    {
      if (g == null)
      {
        Intent localIntent = new Intent();
        localIntent.setPackage("com.google.example.invalidpackage");
        g = PendingIntent.getBroadcast(f, 0, localIntent, 0);
      }
      paramIntent.putExtra("app", g);
      return;
    }
    finally {}
  }
  
  public static int b(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      int k = getPackageInfoa0versionCode;
      return k;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return -1;
  }
  
  @Deprecated
  public String a(String... paramVarArgs)
  {
    Object localObject;
    Intent localIntent;
    do
    {
      try
      {
        paramVarArgs = paramVarArgs[0];
        localObject = new Bundle();
        if (gau.a(f).contains(".gsf"))
        {
          ((Bundle)localObject).putString("legacy.sender", paramVarArgs);
          paramVarArgs = gar.b(f).a(paramVarArgs, "GCM", (Bundle)localObject);
          return paramVarArgs;
        }
        ((Bundle)localObject).putString("sender", paramVarArgs);
        localIntent = a((Bundle)localObject);
        if (localIntent == null) {
          throw new IOException("SERVICE_NOT_AVAILABLE");
        }
      }
      finally {}
      localObject = localIntent.getStringExtra("registration_id");
      paramVarArgs = (String[])localObject;
    } while (localObject != null);
    paramVarArgs = localIntent.getStringExtra("error");
    if (paramVarArgs != null) {
      throw new IOException(paramVarArgs);
    }
    throw new IOException("SERVICE_NOT_AVAILABLE");
  }
  
  public void a(String paramString1, String paramString2, Bundle paramBundle)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("Missing 'to'");
    }
    Object localObject1 = new Intent("com.google.android.gcm.intent.SEND");
    if (paramBundle != null) {
      ((Intent)localObject1).putExtras(paramBundle);
    }
    a((Intent)localObject1);
    ((Intent)localObject1).setPackage(gau.a(f));
    ((Intent)localObject1).putExtra("google.to", paramString1);
    ((Intent)localObject1).putExtra("google.message_id", paramString2);
    ((Intent)localObject1).putExtra("google.ttl", Long.toString(0L));
    ((Intent)localObject1).putExtra("google.delay", Integer.toString(-1));
    if (gau.a(f).contains(".gsf"))
    {
      localObject1 = new Bundle();
      Iterator localIterator = paramBundle.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject2 = paramBundle.get(str);
        if ((localObject2 instanceof String)) {
          ((Bundle)localObject1).putString("gcm." + str, (String)localObject2);
        }
      }
      ((Bundle)localObject1).putString("google.to", paramString1);
      ((Bundle)localObject1).putString("google.message_id", paramString2);
      gar.b(f).b("GCM", "upstream", (Bundle)localObject1);
      return;
    }
    f.sendOrderedBroadcast((Intent)localObject1, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
  }
}

/* Location:
 * Qualified Name:     fyp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */