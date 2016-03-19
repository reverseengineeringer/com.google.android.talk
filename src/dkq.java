import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.View;

final class dkq
  extends BroadcastReceiver
{
  dkq(dkp paramdkp) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    a.c = paramIntent.getStringExtra("phone_verification_result");
    a.a();
    a.b.sendAccessibilityEvent(32);
  }
}

/* Location:
 * Qualified Name:     dkq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */