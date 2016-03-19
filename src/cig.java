import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.HangoutActivity;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cig
  extends au
  implements DialogInterface.OnClickListener
{
  private boolean aj;
  
  public Dialog a(Bundle paramBundle)
  {
    paramBundle = getActivity().getResources();
    paramBundle = new AlertDialog.Builder(getActivity()).setMessage(StressMode.di).setTitle(paramBundle.getString(StressMode.dj)).setPositiveButton(paramBundle.getString(StressMode.dg), this).setNegativeButton(paramBundle.getString(StressMode.dh), this).create();
    paramBundle.setOnShowListener(new cih(this));
    paramBundle.setCanceledOnTouchOutside(false);
    return paramBundle;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == -1)
    {
      startActivity(aal.o(aal.a(aal.oJ, "babel_google_voice_add_balance_url", "https://www.google.com/voice/m/billing")));
      aj = true;
    }
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (cfc.a().r() == null)
    {
      paramDialogInterface = (HangoutActivity)getActivity();
      if (paramDialogInterface != null) {
        if (aj) {
          break label36;
        }
      }
    }
    label36:
    for (boolean bool = true;; bool = false)
    {
      paramDialogInterface.b(bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     cig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */