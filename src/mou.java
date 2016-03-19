import android.accounts.AccountManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class mou
  extends BroadcastReceiver
{
  mou(mot parammot, Context paramContext) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    a.unregisterReceiver(this);
    b.a.b.getAuthToken(b.a.e, b.a.d, b.a.c, true, new mot(b.b, b.a), null);
  }
}

/* Location:
 * Qualified Name:     mou
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */