import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.HangoutActivity;
import com.google.android.apps.hangouts.hangout.HangoutFragment;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cif
  extends ime
  implements DialogInterface.OnClickListener, CompoundButton.OnCheckedChangeListener
{
  private boolean aj;
  private Button ak;
  private CheckBox al;
  
  public Dialog a(Bundle paramBundle)
  {
    paramBundle = new AlertDialog.Builder(getActivity());
    aj = aal.a(dvd.e(((hpu)an.a(hpu.class)).a()), bhh.d);
    if (aj)
    {
      paramBundle.setTitle(StressMode.en);
      Object localObject = View.inflate(getActivity(), aal.fO, null);
      paramBundle.setView((View)localObject);
      ((TextView)((View)localObject).findViewById(aen.dm)).setText(Html.fromHtml(getResources().getString(StressMode.em)));
      al = ((CheckBox)((View)localObject).findViewById(aen.dl));
      al.setOnCheckedChangeListener(this);
      localObject = getActivity().getResources();
      paramBundle.setPositiveButton(((Resources)localObject).getString(StressMode.hI), this);
      paramBundle.setNegativeButton(((Resources)localObject).getString(StressMode.U), this);
    }
    for (;;)
    {
      return paramBundle.create();
      paramBundle.setTitle(StressMode.en);
      paramBundle.setMessage(StressMode.cU);
      paramBundle.setNeutralButton(getResources().getString(StressMode.gZ), this);
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    ((HangoutActivity)getActivity()).p();
  }
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    ak.setEnabled(paramBoolean);
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == -1)
    {
      ((HangoutActivity)getActivity()).o().q();
      return;
    }
    onCancel(paramDialogInterface);
  }
  
  public void onStart()
  {
    super.onStart();
    AlertDialog localAlertDialog = (AlertDialog)c();
    if (aj)
    {
      ak = localAlertDialog.getButton(-1);
      onCheckedChanged(al, al.isChecked());
    }
  }
}

/* Location:
 * Qualified Name:     cif
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */