import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.HangoutActivity;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class chf
  extends ime
  implements DialogInterface.OnClickListener, CompoundButton.OnCheckedChangeListener
{
  hkx aj;
  private hpu ak;
  private CheckBox al;
  private TextView ap;
  private final cfc aq = cfc.a();
  private final chg ar = new chg(this);
  
  public Dialog a(Bundle paramBundle)
  {
    aj = aq.a(getArguments().getString("key_participant_id"));
    paramBundle = getActivity();
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramBundle);
    Resources localResources = paramBundle.getResources();
    View localView = View.inflate(paramBundle, aal.fN, null);
    localBuilder.setView(localView);
    localBuilder.setPositiveButton(localResources.getString(StressMode.gZ), this);
    localBuilder.setNegativeButton(localResources.getString(StressMode.U), this);
    ap = ((TextView)localView.findViewById(aen.cv));
    aal.a(ap, paramBundle, localResources, "https://www.google.com/support/hangouts/?hl=%locale%", "blocking", StressMode.cD);
    al = ((CheckBox)localView.findViewById(aen.cw));
    al.setOnCheckedChangeListener(this);
    ap.setVisibility(8);
    ((TextView)localView.findViewById(aen.cJ)).setText(Html.fromHtml(localResources.getString(StressMode.dm, new Object[] { aj.b() })));
    ((TextView)localView.findViewById(aen.cI)).setText(Html.fromHtml(localResources.getString(StressMode.dl, new Object[] { aj.b() })));
    return localBuilder.create();
  }
  
  protected void e(Bundle paramBundle)
  {
    super.e(paramBundle);
    ak = ((hpu)an.a(hpu.class));
  }
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    paramCompoundButton = ap;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      paramCompoundButton.setVisibility(i);
      return;
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == -1)
    {
      aal.c(349);
      hgd.a().a(aj.a());
      paramDialogInterface = (HangoutActivity)getActivity();
      if (al.isChecked())
      {
        aal.c(263);
        aal.a(paramDialogInterface, dvd.e(ak.a()), aj.b(), aj.h(), null, false);
      }
    }
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
  }
  
  public void onStart()
  {
    super.onStart();
    aal.c(671);
    aq.a(ar);
  }
  
  public void onStop()
  {
    super.onStop();
    aq.b(ar);
  }
}

/* Location:
 * Qualified Name:     chf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */