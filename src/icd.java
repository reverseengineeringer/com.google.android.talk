import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;

public final class icd
  extends ime
  implements DialogInterface.OnClickListener
{
  private iad aj;
  
  public Dialog a(Bundle paramBundle)
  {
    paramBundle = new AlertDialog.Builder(getActivity());
    paramBundle.setTitle(aal.uz);
    paramBundle.setMessage(aal.ux);
    paramBundle.setPositiveButton(aal.uy, this);
    paramBundle.setNegativeButton(17039360, this);
    return paramBundle.create();
  }
  
  protected void e(Bundle paramBundle)
  {
    super.e(paramBundle);
    aj = ((iad)an.a(iad.class));
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    aj.c();
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == -1)
    {
      aj.d();
      return;
    }
    aj.c();
  }
}

/* Location:
 * Qualified Name:     icd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */