import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class cbs
  implements DialogInterface.OnCancelListener
{
  cbs(cbr paramcbr) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    a.finish();
  }
}

/* Location:
 * Qualified Name:     cbs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */