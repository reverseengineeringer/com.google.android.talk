import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.HangoutActivity;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cge
  extends au
  implements DialogInterface.OnClickListener
{
  public static cge a(String paramString, int paramInt)
  {
    cge localcge = new cge();
    Bundle localBundle = new Bundle();
    localBundle.putString("key_error_message", paramString);
    localBundle.putInt("KEY_ERROR", paramInt);
    localcge.setArguments(localBundle);
    return localcge;
  }
  
  public static String a(Context paramContext, String paramString, int paramInt)
  {
    if (paramString != null) {
      return paramString;
    }
    int j = StressMode.db;
    int i = j;
    switch (paramInt)
    {
    default: 
      hbs.a(41 + "Unknown/unexpected error code:" + paramInt);
      i = j;
    }
    for (;;)
    {
      return paramContext.getResources().getString(i);
      i = StressMode.cV;
      continue;
      i = StressMode.es;
      continue;
      i = StressMode.cS;
      continue;
      i = StressMode.cT;
      continue;
      i = StressMode.cM;
      continue;
      i = StressMode.cN;
      continue;
      i = StressMode.cP;
      continue;
      i = StressMode.cR;
      continue;
      hbs.a("This should be handled differently");
      i = j;
      continue;
      i = StressMode.cO;
      continue;
      i = StressMode.dd;
      continue;
      i = StressMode.cy;
      continue;
      i = StressMode.ct;
      continue;
      i = StressMode.cQ;
      continue;
      i = StressMode.cW;
      continue;
      i = StressMode.dc;
      continue;
      i = StressMode.cX;
      continue;
      i = StressMode.eD;
      continue;
      i = StressMode.de;
      continue;
      i = StressMode.es;
      continue;
      i = StressMode.cU;
    }
  }
  
  public Dialog a(Bundle paramBundle)
  {
    paramBundle = new AlertDialog.Builder(getActivity());
    Bundle localBundle = getArguments();
    paramBundle.setMessage(a(getContext(), localBundle.getString("key_error_message"), localBundle.getInt("KEY_ERROR")));
    paramBundle.setPositiveButton(getActivity().getResources().getString(StressMode.gZ), this);
    return paramBundle.create();
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    paramDialogInterface = (HangoutActivity)getActivity();
    if (paramDialogInterface != null) {
      paramDialogInterface.n();
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    hbs.a(Integer.valueOf(paramInt), Integer.valueOf(-1));
    onCancel(paramDialogInterface);
    a();
  }
}

/* Location:
 * Qualified Name:     cge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */