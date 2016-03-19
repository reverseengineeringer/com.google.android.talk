import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import java.io.File;

public final class ine
  extends au
  implements DialogInterface.OnClickListener
{
  public Dialog a(Bundle paramBundle)
  {
    localObject = null;
    ba localba = getActivity();
    try
    {
      PackageManager localPackageManager = localba.getPackageManager();
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(localba.getPackageName(), 0);
      paramBundle = (Bundle)localObject;
      if (localApplicationInfo != null) {
        paramBundle = localPackageManager.getApplicationLabel(localApplicationInfo);
      }
    }
    catch (PackageManager.NameNotFoundException paramBundle)
    {
      for (;;)
      {
        paramBundle = (Bundle)localObject;
      }
    }
    localObject = paramBundle;
    if (paramBundle == null) {
      localObject = localba.getString(aal.vc);
    }
    paramBundle = new AlertDialog.Builder(localba);
    paramBundle.setTitle(localba.getString(aal.ve, new Object[] { localObject }));
    paramBundle.setMessage(localba.getString(aal.vd, new Object[] { localObject }));
    paramBundle.setPositiveButton(17039370, this);
    paramBundle.setCancelable(true);
    return paramBundle.create();
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    paramDialogInterface = getActivity();
    if (paramDialogInterface != null) {
      paramDialogInterface.finish();
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    ba localba = getActivity();
    new File(localba.getFilesDir(), "corrupted_install").delete();
    paramDialogInterface = String.valueOf(localba.getPackageName());
    if (paramDialogInterface.length() != 0) {}
    for (paramDialogInterface = "market://details?id=".concat(paramDialogInterface);; paramDialogInterface = new String("market://details?id="))
    {
      localba.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramDialogInterface)));
      localba.finish();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     ine
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */