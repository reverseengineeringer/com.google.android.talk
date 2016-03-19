import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cdr
  extends au
{
  public Dialog a(Bundle paramBundle)
  {
    int i = getArguments().getInt("action_index");
    if ((i < 0) || (i > 2)) {
      return null;
    }
    AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(getActivity());
    AlertDialog.Builder localBuilder2 = localBuilder1.setTitle(StressMode.jM);
    paramBundle = getActivity().getResources();
    switch (i)
    {
    default: 
      throw new IllegalArgumentException(62 + "SmsStorageLowWarningFragment: invalid action index " + i);
    case 0: 
      paramBundle = paramBundle.getString(StressMode.aJ, new Object[] { cdn.b });
    }
    for (;;)
    {
      localBuilder2.setMessage(paramBundle).setNegativeButton(17039360, new cdt(this)).setPositiveButton(17039370, new cds(this, i));
      return localBuilder1.create();
      paramBundle = paramBundle.getString(StressMode.aQ, new Object[] { cdn.b });
      continue;
      paramBundle = paramBundle.getString(StressMode.B, new Object[] { cdn.b });
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    ((cdn)getTargetFragment()).getActivity().finish();
  }
}

/* Location:
 * Qualified Name:     cdr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */