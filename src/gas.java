import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.iid.MessengerCompat;
import java.io.IOException;

public final class gas
  extends Service
{
  static String a = "action";
  static String d = "CMD";
  private static String g = "google.com/iid";
  private static String h = "gcm.googleapis.com/refresh";
  MessengerCompat b;
  BroadcastReceiver c;
  int e;
  int f;
  
  private void a()
  {
    try
    {
      e -= 1;
      if (e == 0) {
        stopSelf(f);
      }
      if (Log.isLoggable("InstanceID", 3)) {
        new StringBuilder("Stop ").append(e).append(" ").append(f);
      }
      return;
    }
    finally {}
  }
  
  static void a(Context paramContext, gaz paramgaz)
  {
    paramgaz.b();
    paramgaz = new Intent("com.google.android.gms.iid.InstanceID");
    paramgaz.putExtra(d, "RST");
    paramgaz.setPackage(paramContext.getPackageName());
    paramContext.startService(paramgaz);
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    if ((paramIntent != null) && ("com.google.android.gms.iid.InstanceID".equals(paramIntent.getAction()))) {
      return b.a();
    }
    return null;
  }
  
  public void onCreate()
  {
    IntentFilter localIntentFilter = new IntentFilter("com.google.android.c2dm.intent.REGISTRATION");
    localIntentFilter.addCategory(getPackageName());
    registerReceiver(c, localIntentFilter, "com.google.android.c2dm.permission.RECEIVE", null);
  }
  
  public void onDestroy()
  {
    unregisterReceiver(c);
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    try
    {
      e += 1;
      if (paramInt2 > f) {
        f = paramInt2;
      }
      if (paramIntent == null)
      {
        a();
        return 2;
      }
    }
    finally {}
    for (;;)
    {
      Object localObject1;
      String str;
      Object localObject2;
      try
      {
        if ("com.google.android.gms.iid.InstanceID".equals(paramIntent.getAction()))
        {
          if (Build.VERSION.SDK_INT <= 18)
          {
            localObject1 = (Intent)paramIntent.getParcelableExtra("GSF");
            if (localObject1 != null)
            {
              startService((Intent)localObject1);
              return 1;
            }
          }
          str = paramIntent.getStringExtra("subtype");
          if (str == null)
          {
            localObject1 = gar.b(this);
            localObject2 = paramIntent.getStringExtra(d);
            if ((paramIntent.getStringExtra("error") == null) && (paramIntent.getStringExtra("registration_id") == null)) {
              continue;
            }
            if (Log.isLoggable("InstanceID", 3)) {}
            gar.d.a(paramIntent);
          }
        }
        else
        {
          a();
          if (paramIntent.getStringExtra("from") != null) {
            fyo.a(paramIntent);
          }
          return 2;
        }
        localObject1 = new Bundle();
        ((Bundle)localObject1).putString("subtype", str);
        localObject1 = gar.a(this, (Bundle)localObject1);
        continue;
        if (Log.isLoggable("InstanceID", 3)) {
          new StringBuilder("Service command ").append(str).append(" ").append((String)localObject2).append(" ").append(paramIntent.getExtras());
        }
        if (paramIntent.getStringExtra("unregistered") != null)
        {
          localObject2 = gar.c;
          localObject1 = str;
          if (str == null) {
            localObject1 = "";
          }
          ((gaz)localObject2).d((String)localObject1);
          gar.d.a(paramIntent);
          continue;
        }
        if (!h.equals(paramIntent.getStringExtra("from"))) {
          break label325;
        }
      }
      finally
      {
        a();
      }
      gar.c.d(str);
      continue;
      label325:
      if ("RST".equals(localObject2))
      {
        ((gar)localObject1).a();
      }
      else if ("RST_FULL".equals(localObject2))
      {
        if (!gar.c.a()) {
          gar.c.b();
        }
      }
      else if ("SYNC".equals(localObject2))
      {
        gar.c.d(str);
      }
      else
      {
        boolean bool = "PING".equals(localObject2);
        if (bool) {
          try
          {
            fyp.a(this).a(g, gau.a(), paramIntent.getExtras());
          }
          catch (IOException localIOException) {}
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     gas
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */