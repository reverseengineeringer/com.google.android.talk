import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.os.PowerManager;
import java.util.Map;

public final class cex
{
  public static final Map<cey, Integer> a = ksm.a(cey.a, Integer.valueOf(2805), cey.b, Integer.valueOf(2806), cey.c, Integer.valueOf(2803), cey.d, Integer.valueOf(2804));
  cfa b;
  private final Context c;
  private final cez d;
  
  public cex(Context paramContext)
  {
    c = paramContext;
    d = new cez(this);
  }
  
  public void a()
  {
    if (b != null)
    {
      localObject = new IntentFilter("android.intent.action.BATTERY_CHANGED");
      localObject = c.registerReceiver(null, (IntentFilter)localObject);
      if (((Intent)localObject).getIntExtra("plugged", -1) != 2)
      {
        int i = ((Intent)localObject).getIntExtra("level", -1);
        int j = ((Intent)localObject).getIntExtra("scale", -1);
        if ((int)(100.0D * i / j) <= 15) {
          b.a(cey.a);
        }
      }
      if ((Build.VERSION.SDK_INT >= 21) && (((PowerManager)c.getSystemService("power")).isPowerSaveMode())) {
        b.a(cey.c);
      }
    }
    Object localObject = c;
    cez localcez = d;
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.BATTERY_LOW");
    localIntentFilter.addAction("android.intent.action.BATTERY_OKAY");
    if (Build.VERSION.SDK_INT >= 21) {
      localIntentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
    }
    ((Context)localObject).registerReceiver(localcez, localIntentFilter);
  }
  
  public void a(cfa paramcfa)
  {
    b = paramcfa;
  }
  
  public void b()
  {
    c.unregisterReceiver(d);
  }
}

/* Location:
 * Qualified Name:     cex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */