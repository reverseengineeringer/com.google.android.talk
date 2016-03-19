import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.google.android.apps.hangouts.telephony.TeleActivityRecognitionService;
import com.google.android.gms.common.ConnectionResult;

final class etv
  implements fif, fih
{
  etx a;
  private final Context b;
  private final BroadcastReceiver c = new etw(this);
  private final ety d;
  private final fic e;
  
  etv(Context paramContext)
  {
    b = paramContext;
    if (fhr.a(paramContext) == 0)
    {
      e = new fid(paramContext).a(gdj.b).a(this).a(this).b();
      d = new ety(this);
      return;
    }
    ezi.d("Babel_telephony", "TeleUserActivityMonitor.TeleUserActivityMonitor: Wifi call activity recognition API can not be started. Google Play service is not available.", new Object[0]);
    e = null;
    d = null;
  }
  
  private PendingIntent b()
  {
    Intent localIntent = new Intent(b, TeleActivityRecognitionService.class);
    return PendingIntent.getService(b, 0, localIntent, 134217728);
  }
  
  public static String b(int paramInt)
  {
    switch (paramInt)
    {
    case 4: 
    case 6: 
    default: 
      return "UNKNOWN";
    case 0: 
      return "IN_VEHICLE";
    case 1: 
      return "ON_BICYCLE";
    case 2: 
      return "ON_FOOT";
    case 7: 
      return "WALKING";
    case 3: 
      return "STILL";
    case 5: 
      return "TILTING";
    }
    return "RUNNING";
  }
  
  public void a()
  {
    a = null;
    if (e.e())
    {
      fic localfic = e;
      PendingIntent localPendingIntent = b();
      gdj.c.a(localfic, localPendingIntent);
    }
    e.d();
    b.unregisterReceiver(c);
  }
  
  public void a(int paramInt)
  {
    ezi.c("Babel_telephony", "TeleUserActivityMonitor.onConnectionSuspended, suspended activity recognition API connection.", new Object[0]);
  }
  
  public void a(ConnectionResult paramConnectionResult)
  {
    ezi.c("Babel_telephony", "TeleUserActivityMonitor.onConnectionFailed, connection to activity recognition API failed.", new Object[0]);
  }
  
  public void a(etx parametx)
  {
    ezi.c("Babel_telephony", "TeleUserActivityMonitor.register", new Object[0]);
    a = parametx;
    e.b();
    parametx = new IntentFilter();
    parametx.addAction("com.google.android.apps.hangouts.user_activity_action");
    b.registerReceiver(c, parametx);
  }
  
  public void a_(Bundle paramBundle)
  {
    ezi.c("Babel_telephony", "TeleUserActivityMonitor.onConnected, connection to activity recognition API established.", new Object[0]);
    paramBundle = e;
    PendingIntent localPendingIntent = b();
    gdj.c.a(paramBundle, 0L, localPendingIntent);
  }
}

/* Location:
 * Qualified Name:     etv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */