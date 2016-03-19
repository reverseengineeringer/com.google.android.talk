import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

final class ban
  extends BroadcastReceiver
{
  ban(bah parambah) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    a.g.dismiss();
    if (paramIntent.getIntExtra("set_callerid_result", -1) != 0) {
      Toast.makeText(paramContext, paramContext.getString(aal.iA), 0).show();
    }
    for (;;)
    {
      fi.a(paramContext).a(a.f);
      return;
      a.e.a_(false);
    }
  }
}

/* Location:
 * Qualified Name:     ban
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */