import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.Toast;

final class dhe
  implements DialogInterface.OnClickListener
{
  dhe(dhd paramdhd) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.a.edit();
    paramDialogInterface.putString(af, "https://staging-www.sandbox.googleapis.com/chat/v1/");
    paramDialogInterface.putString(cf, "https://staging-www.sandbox.googleapis.com/hangouts/v1_preprod/");
    paramDialogInterface.putBoolean("use_staging_servers", true);
    paramDialogInterface.apply();
    Toast.makeText(a.b.a, "You may need to restart the app for changes to take effect", 0).show();
  }
}

/* Location:
 * Qualified Name:     dhe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */