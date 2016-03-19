import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cfv
  extends au
  implements DialogInterface.OnClickListener
{
  hkx aj;
  private final cfc ak = cfc.a();
  private final cfw al = new cfw(this);
  
  public Dialog a(Bundle paramBundle)
  {
    aj = ak.a(getArguments().getString("key_participant_id"));
    Object localObject = getActivity();
    paramBundle = new AlertDialog.Builder((Context)localObject);
    Resources localResources = ((Activity)localObject).getResources();
    localObject = View.inflate((Context)localObject, aal.fJ, null);
    paramBundle.setView((View)localObject);
    paramBundle.setPositiveButton(localResources.getString(StressMode.gZ), this);
    paramBundle.setNegativeButton(localResources.getString(StressMode.U), this);
    ((TextView)((View)localObject).findViewById(aen.cD)).setText(Html.fromHtml(localResources.getString(StressMode.cL, new Object[] { aj.b() })));
    ((TextView)((View)localObject).findViewById(aen.cC)).setText(Html.fromHtml(localResources.getString(StressMode.cK, new Object[] { aj.b() })));
    cfc.a();
    return paramBundle.create();
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    cfc.a();
    if (paramInt == -1) {
      ak.d(aj.a());
    }
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
  }
  
  public void onStart()
  {
    super.onStart();
    ak.a(al);
  }
  
  public void onStop()
  {
    super.onStop();
    ak.b(al);
  }
}

/* Location:
 * Qualified Name:     cfv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */