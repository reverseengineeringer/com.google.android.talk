import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.Resources;
import android.os.Bundle;

public final class cls
  extends ime
  implements DialogInterface.OnClickListener
{
  private DialogInterface.OnDismissListener aj;
  
  public Dialog a(Bundle paramBundle)
  {
    ezi.a("Babel", "Showing disable knocking dialog", new Object[0]);
    aal.c(1666);
    paramBundle = getActivity();
    Resources localResources = paramBundle.getResources();
    String str1 = localResources.getString(aen.ip);
    String str2 = localResources.getString(aen.io);
    return new AlertDialog.Builder(paramBundle).setTitle(str1).setMessage(str2).setPositiveButton(localResources.getString(aen.iq), this).setNegativeButton(localResources.getString(aen.in), this).setCancelable(false).create();
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    aj = paramOnDismissListener;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      hbs.a("Unrecognized button click");
      return;
    case -1: 
      ezi.c("Babel", "Knocking to be disabled", new Object[0]);
      aal.c(1667);
      ((clp)ilh.a(getActivity(), clp.class)).a(false);
      return;
    }
    ezi.c("Babel", "Knocking will not be disabled", new Object[0]);
    aal.c(1668);
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (aj != null) {
      aj.onDismiss(paramDialogInterface);
    }
  }
}

/* Location:
 * Qualified Name:     cls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */