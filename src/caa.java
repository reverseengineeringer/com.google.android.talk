import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class caa
  extends ime
  implements DialogInterface.OnClickListener
{
  CheckBox aj;
  CheckBox ak;
  cad al;
  
  public static caa a(int paramInt, String paramString)
  {
    caa localcaa = new caa();
    Bundle localBundle = new Bundle();
    localBundle.putInt("account_id", paramInt);
    localBundle.putString("dialog_inviter_name", paramString);
    localcaa.setArguments(localBundle);
    return localcaa;
  }
  
  public Dialog a(Bundle paramBundle)
  {
    paramBundle = getActivity().getResources();
    View localView = View.inflate(getActivity(), aal.gg, null);
    ak = ((CheckBox)localView.findViewById(aen.cN));
    aj = ((CheckBox)localView.findViewById(aen.cL));
    Object localObject = getArguments().getString("dialog_inviter_name");
    bfd localbfd = dvd.e(getArguments().getInt("account_id"));
    ((TextView)localView.findViewById(aen.cM)).setText(Html.fromHtml(paramBundle.getString(StressMode.dx, new Object[] { localObject })));
    ((TextView)localView.findViewById(aen.cK)).setText(Html.fromHtml(paramBundle.getString(StressMode.dy, new Object[] { localObject })));
    localObject = (TextView)localView.findViewById(aen.dA);
    aal.a((TextView)localObject, getActivity(), paramBundle, "https://www.google.com/support/hangouts/?hl=%locale%", "blocking", StressMode.cD);
    aj.setOnCheckedChangeListener(new cab(this, (TextView)localObject));
    return new AlertDialog.Builder(getActivity()).setView(localView).setPositiveButton(paramBundle.getString(StressMode.gZ), new cac(this, localbfd)).setNegativeButton(paramBundle.getString(StressMode.U), null).create();
  }
  
  public void a(cad paramcad)
  {
    al = paramcad;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {}
}

/* Location:
 * Qualified Name:     caa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */