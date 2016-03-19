import android.content.Context;
import android.content.IntentFilter;
import com.google.android.libraries.hangouts.video.internal.Stats.GlobalStats;

public final class hef
{
  private final Context a;
  private final heg b;
  
  public hef(Context paramContext)
  {
    a = paramContext;
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    b = new heg(this);
    paramContext.registerReceiver(b, localIntentFilter);
  }
  
  void a()
  {
    a.unregisterReceiver(b);
  }
  
  public void a(Stats.GlobalStats paramGlobalStats)
  {
    hdf localhdf = hdf.a;
    paramGlobalStats.b(localhdf.b());
    paramGlobalStats.c(localhdf.d() / 1000);
    paramGlobalStats.d(localhdf.e());
    paramGlobalStats.a(b.a());
    paramGlobalStats.e(b.b());
  }
}

/* Location:
 * Qualified Name:     hef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */