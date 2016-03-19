import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;

public final class clr
  extends ime
  implements DialogInterface.OnClickListener
{
  public Dialog a(Bundle paramBundle)
  {
    ezi.a("Babel", "Showing allow externals dialog", new Object[0]);
    ba localba = getActivity();
    Resources localResources = localba.getResources();
    String str = ((clp)ilh.a(am, clp.class)).c();
    if (TextUtils.isEmpty(str))
    {
      paramBundle = localResources.getString(aen.ii);
      if (!TextUtils.isEmpty(str)) {
        break label136;
      }
    }
    label136:
    for (str = localResources.getString(aen.ig);; str = localResources.getString(aen.if, new Object[] { str }))
    {
      return new AlertDialog.Builder(localba).setTitle(paramBundle).setMessage(str).setPositiveButton(localResources.getString(aen.id), this).setNegativeButton(localResources.getString(aen.ie), this).create();
      paramBundle = localResources.getString(aen.ih, new Object[] { str });
      break;
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      hbs.a("Unrecognized button click");
      return;
    case -1: 
      ezi.c("Babel", "Allowing external users to join the call", new Object[0]);
      aal.c(1501);
      ((clp)ilh.a(am, clp.class)).a(true);
      return;
    }
    ezi.c("Babel", "Not allowing external users to join the call", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     clr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */