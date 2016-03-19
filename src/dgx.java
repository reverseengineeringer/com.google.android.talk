import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.Toast;

final class dgx
  implements DialogInterface.OnClickListener
{
  dgx(dgu paramdgu, efh paramefh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = b.a.edit();
    paramDialogInterface.remove(a.f);
    paramDialogInterface.apply();
    Toast.makeText(b.b.a, "You may need to restart the app for changes to take effect", 0).show();
  }
}

/* Location:
 * Qualified Name:     dgx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */