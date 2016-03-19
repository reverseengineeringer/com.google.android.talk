import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.EditText;
import android.widget.Toast;

final class dgy
  implements DialogInterface.OnClickListener
{
  dgy(dgu paramdgu, efh paramefh, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = c.a.edit();
    paramDialogInterface.putString(a.f, b.getText().toString());
    paramDialogInterface.apply();
    Toast.makeText(c.b.a, "You may need to restart the app for changes to take effect", 0).show();
  }
}

/* Location:
 * Qualified Name:     dgy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */