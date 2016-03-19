import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.util.Log;

public final class fla
  implements DialogInterface.OnClickListener
{
  private final Activity a;
  private final av b;
  private final Intent c;
  private final int d;
  
  public fla(Activity paramActivity, Intent paramIntent, int paramInt)
  {
    a = paramActivity;
    b = null;
    c = paramIntent;
    d = paramInt;
  }
  
  public fla(av paramav, Intent paramIntent, int paramInt)
  {
    a = null;
    b = paramav;
    c = paramIntent;
    d = paramInt;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      if ((c != null) && (b != null)) {
        b.startActivityForResult(c, d);
      }
      for (;;)
      {
        paramDialogInterface.dismiss();
        return;
        if (c != null) {
          a.startActivityForResult(c, d);
        }
      }
      return;
    }
    catch (ActivityNotFoundException paramDialogInterface)
    {
      Log.e("SettingsRedirect", "Can't redirect to app settings for Google Play services");
    }
  }
}

/* Location:
 * Qualified Name:     fla
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */