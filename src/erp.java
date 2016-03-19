import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.apps.hangouts.telephony.TeleFeedback.FeedbackActivity;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

public final class erp
  extends au
  implements DialogInterface.OnClickListener
{
  private List<CharSequence> aj;
  
  private int q()
  {
    return getArguments().getInt("rating");
  }
  
  private boolean r()
  {
    return getArguments().getBoolean("should_show_audio_issues");
  }
  
  public Dialog a(Bundle paramBundle)
  {
    int i;
    AlertDialog.Builder localBuilder;
    if (r())
    {
      i = aal.qd;
      aj = new LinkedList(Arrays.asList(getResources().getTextArray(i)));
      if (q() == 1) {
        aj.remove(getResources().getText(aal.qw));
      }
      if (getArguments().getBoolean("is_incoming")) {
        aj.remove(getResources().getText(aal.qv));
      }
      paramBundle = (CharSequence[])aj.toArray(new CharSequence[aj.size()]);
      localBuilder = new AlertDialog.Builder(getActivity());
      if (!r()) {
        break label172;
      }
      i = aal.qu;
    }
    for (;;)
    {
      return localBuilder.setTitle(i).setItems(paramBundle, this).setCancelable(false).setIcon(aal.qo).create();
      i = aal.qe;
      break;
      label172:
      if (q() == 0) {
        i = aal.qz;
      } else {
        i = aal.qy;
      }
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    DialogInterface localDialogInterface = null;
    TeleFeedback.FeedbackActivity localFeedbackActivity;
    Resources localResources;
    if (getActivity() != null)
    {
      localFeedbackActivity = (TeleFeedback.FeedbackActivity)getActivity();
      paramDialogInterface = ((CharSequence)aj.get(paramInt)).toString();
      localResources = getResources();
      if (r())
      {
        localDialogInterface = paramDialogInterface;
        if (localResources.getString(aal.qt).equals(paramDialogInterface)) {
          localDialogInterface = null;
        }
        localFeedbackActivity.a(localDialogInterface);
      }
    }
    else
    {
      return;
    }
    boolean bool;
    if (localResources.getString(aal.qx).equals(paramDialogInterface))
    {
      bool = false;
      paramDialogInterface = localDialogInterface;
    }
    for (;;)
    {
      localFeedbackActivity.a(paramDialogInterface, bool);
      return;
      if (localResources.getString(aal.qw).equals(paramDialogInterface)) {
        bool = true;
      } else {
        bool = false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     erp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */