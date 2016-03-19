import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.Toast;

final class dhf
  implements DialogInterface.OnClickListener
{
  dhf(dhd paramdhd) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.a.edit();
    paramDialogInterface.remove(af);
    paramDialogInterface.remove(cf);
    paramDialogInterface.remove("use_staging_servers");
    paramDialogInterface.apply();
    Toast.makeText(a.b.a, "You may need to restart the app for changes to take effect", 0).show();
  }
}

/* Location:
 * Qualified Name:     dhf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */