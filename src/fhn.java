import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;

public final class fhn
  extends DialogFragment
{
  Dialog a = null;
  DialogInterface.OnCancelListener b = null;
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    if (b != null) {
      b.onCancel(paramDialogInterface);
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    if (a == null) {
      setShowsDialog(false);
    }
    return a;
  }
  
  public void show(FragmentManager paramFragmentManager, String paramString)
  {
    super.show(paramFragmentManager, paramString);
  }
}

/* Location:
 * Qualified Name:     fhn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */