import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.widget.EditText;

final class dgv
  implements DialogInterface.OnClickListener
{
  dgv(dgu paramdgu, efh[] paramArrayOfefh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    dgu localdgu = b;
    efh localefh = a[paramInt];
    paramDialogInterface = a.getString(f, null);
    EditText localEditText = new EditText(b.a);
    localEditText.setInputType(16);
    localEditText.setHint(g.a());
    localEditText.setId(localefh.ordinal());
    if (paramDialogInterface != null) {
      localEditText.setText(paramDialogInterface);
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(b.a);
    paramDialogInterface = String.valueOf(localefh.toString());
    if (paramDialogInterface.length() != 0) {}
    for (paramDialogInterface = "Change endpoint for ".concat(paramDialogInterface);; paramDialogInterface = new String("Change endpoint for "))
    {
      localBuilder.setTitle(paramDialogInterface);
      localBuilder.setView(localEditText);
      localBuilder.setNegativeButton("Cancel", new dgw(localdgu));
      localBuilder.setNeutralButton("Set to default", new dgx(localdgu, localefh));
      localBuilder.setPositiveButton("Set it!", new dgy(localdgu, localefh, localEditText));
      localBuilder.show();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dgv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */