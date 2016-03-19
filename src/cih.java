import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.widget.Button;

final class cih
  implements DialogInterface.OnShowListener
{
  cih(cig paramcig) {}
  
  public void onShow(DialogInterface paramDialogInterface)
  {
    paramDialogInterface = (AlertDialog)paramDialogInterface;
    if (paramDialogInterface == null) {}
    do
    {
      return;
      Button localButton = paramDialogInterface.getButton(-1);
      if (localButton != null) {
        localButton.setAllCaps(true);
      }
      paramDialogInterface = paramDialogInterface.getButton(-2);
    } while (paramDialogInterface == null);
    paramDialogInterface.setAllCaps(true);
  }
}

/* Location:
 * Qualified Name:     cih
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */