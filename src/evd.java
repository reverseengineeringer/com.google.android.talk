import android.content.Context;
import android.content.Intent;

public final class evd
{
  public etk a;
  public final Intent b;
  public final Context c;
  
  public evd(Context paramContext, etk parametk, Intent paramIntent)
  {
    c = paramContext;
    a = parametk;
    b = paramIntent;
  }
  
  public void a()
  {
    ezi.c("Babel_telephony", "TeleSetupController.ShowDialogCallback.onError", new Object[0]);
    if (a != null)
    {
      String str = aal.a(c, "babel_outgoing_wifi_call_show_dialog_error_action", "cellular");
      a.a(str, b);
    }
  }
  
  public void b()
  {
    ezi.c("Babel_telephony", "TeleSetupController.ShowDialogCallback.onTimeout", new Object[0]);
    if (a != null)
    {
      String str = aal.a(c, "babel_outgoing_wifi_call_show_dialog_timeout_action", "cellular");
      a.a(str, b);
    }
  }
  
  public void c()
  {
    a = null;
  }
}

/* Location:
 * Qualified Name:     evd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */