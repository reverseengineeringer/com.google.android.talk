import android.os.Handler;
import android.widget.ListView;
import com.google.android.apps.hangouts.realtimechat.wakelock.impl.DebugWakelocksActivity;
import java.util.concurrent.ConcurrentHashMap;

public final class eed
  implements Runnable
{
  public eed(DebugWakelocksActivity paramDebugWakelocksActivity) {}
  
  public void run()
  {
    Object localObject = a.c;
    aal.y().removeCallbacks((Runnable)localObject);
    localObject = a.b;
    DebugWakelocksActivity localDebugWakelocksActivity = a;
    ((ListView)localObject).setAdapter(new eeh(localDebugWakelocksActivity, localDebugWakelocksActivity, aen.jT, aal.pX, aen.b(a.b.values())));
    aal.a(this, 100L);
  }
}

/* Location:
 * Qualified Name:     eed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */