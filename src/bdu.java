import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bdu
  extends BroadcastReceiver
{
  bdu(bds parambds) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("com.google.gservices.intent.action.GSERVICES_CHANGED")) {
      new bdv(this).execute(new Void[0]);
    }
  }
}

/* Location:
 * Qualified Name:     bdu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */