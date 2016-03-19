import android.os.Handler;
import com.google.android.apps.hangouts.hangout.IncomingRingActivity;
import com.google.android.apps.hangouts.hangout.multiwaveview.GlowPadView;

public final class chp
  implements Runnable
{
  public chp(IncomingRingActivity paramIncomingRingActivity) {}
  
  public void run()
  {
    if (a.k != null) {
      a.k.ping();
    }
    if (a.l != null) {
      a.l.postDelayed(this, 2000L);
    }
  }
}

/* Location:
 * Qualified Name:     chp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */