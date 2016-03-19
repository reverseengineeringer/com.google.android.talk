import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

final class cpp
  implements DialogInterface.OnKeyListener
{
  cpp(cpm paramcpm) {}
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 1))
    {
      paramDialogInterface = a.getActivity();
      if (paramDialogInterface != null) {
        paramDialogInterface.finish();
      }
      a.a();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     cpp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */