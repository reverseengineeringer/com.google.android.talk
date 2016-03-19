import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;

public final class byl
  extends au
{
  private DialogInterface.OnCancelListener aj;
  
  public Dialog a(Bundle paramBundle)
  {
    paramBundle = new ProgressDialog(getActivity());
    paramBundle.setMessage(getArguments().getString("message"));
    paramBundle.setProgressStyle(0);
    return paramBundle;
  }
  
  public void a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    aj = paramOnCancelListener;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    if (aj != null) {
      aj.onCancel(paramDialogInterface);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getParentFragment() == null) {
      setRetainInstance(true);
    }
  }
  
  public void onDestroyView()
  {
    if ((c() != null) && (getRetainInstance())) {
      c().setDismissMessage(null);
    }
    super.onDestroyView();
  }
}

/* Location:
 * Qualified Name:     byl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */