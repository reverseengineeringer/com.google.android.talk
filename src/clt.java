import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.google.android.apps.hangouts.views.AvatarView;

public final class clt
  extends ime
  implements DialogInterface.OnClickListener
{
  static clt a(khk paramkhk)
  {
    Bundle localBundle = new Bundle();
    localBundle.putByteArray("key_participant", lyi.a(paramkhk));
    paramkhk = new clt();
    paramkhk.setArguments(localBundle);
    return paramkhk;
  }
  
  private khk q()
  {
    try
    {
      khk localkhk = new khk();
      byte[] arrayOfByte = getArguments().getByteArray("key_participant");
      lyi.b(localkhk, arrayOfByte, arrayOfByte.length);
      return localkhk;
    }
    catch (lyg locallyg)
    {
      hbs.a("Invalid participant supplied to knocking dialog");
      a();
    }
    return null;
  }
  
  public Dialog a(Bundle paramBundle)
  {
    khk localkhk = q();
    if (localkhk == null) {
      return null;
    }
    paramBundle = String.valueOf(b);
    ba localba;
    Resources localResources;
    View localView;
    int i;
    label102:
    TextView localTextView;
    String str;
    int j;
    label149:
    int k;
    if (paramBundle.length() != 0)
    {
      paramBundle = "Showing knocking dialog for participant ".concat(paramBundle);
      ezi.a("Babel", paramBundle, new Object[0]);
      aal.c(1497);
      localba = getActivity();
      localResources = localba.getResources();
      localView = View.inflate(localba, aal.mc, null);
      if ((!TextUtils.isEmpty(c)) || (aal.a(n, 0) == 5)) {
        break label371;
      }
      i = 1;
      localTextView = (TextView)localView.findViewById(aal.ma);
      paramBundle = d;
      str = ((clp)ilh.a(getActivity(), clp.class)).c();
      if (TextUtils.isEmpty(paramBundle)) {
        break label376;
      }
      j = 1;
      if (TextUtils.isEmpty(str)) {
        break label381;
      }
      k = 1;
      label160:
      if ((i == 0) || (j == 0) || (k == 0)) {
        break label387;
      }
      paramBundle = localResources.getString(aen.iD, new Object[] { paramBundle, str });
      label195:
      localTextView.setText(paramBundle);
      paramBundle = (AvatarView)localView.findViewById(aal.lX);
      if (i == 0) {
        break label511;
      }
      paramBundle.setVisibility(8);
    }
    for (;;)
    {
      paramBundle = (TextView)localView.findViewById(aal.lY);
      localTextView = (TextView)localView.findViewById(aal.lZ);
      if (!TextUtils.isEmpty(x))
      {
        paramBundle.setText(localResources.getString(aen.iz));
        localTextView.setText(localResources.getString(aen.iy, new Object[] { x }));
        paramBundle.setVisibility(0);
        localTextView.setVisibility(0);
      }
      b(false);
      return new AlertDialog.Builder(localba).setView(localView).setPositiveButton(localResources.getString(aen.iu), this).setNegativeButton(localResources.getString(aen.ix), this).setCancelable(false).create();
      paramBundle = new String("Showing knocking dialog for participant ");
      break;
      label371:
      i = 0;
      break label102;
      label376:
      j = 0;
      break label149;
      label381:
      k = 0;
      break label160;
      label387:
      if ((i != 0) && (j != 0))
      {
        paramBundle = localResources.getString(aen.iE, new Object[] { paramBundle });
        break label195;
      }
      if ((j != 0) && (k != 0))
      {
        paramBundle = localResources.getString(aen.iC, new Object[] { paramBundle, str });
        break label195;
      }
      if (j != 0)
      {
        paramBundle = localResources.getString(aen.iF, new Object[] { paramBundle });
        break label195;
      }
      if (k != 0)
      {
        paramBundle = localResources.getString(aen.iG, new Object[] { str });
        break label195;
      }
      paramBundle = localResources.getString(aen.iH);
      break label195;
      label511:
      paramBundle.a(e, d, aal.h());
      paramBundle.a(0);
      paramBundle.b(2);
      paramBundle.a();
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    cln localcln = (cln)ilh.a(getActivity(), cln.class);
    khk localkhk = q();
    if (localkhk == null) {
      return;
    }
    switch (paramInt)
    {
    default: 
      hbs.a("Unrecognized button click");
      return;
    case -1: 
      paramDialogInterface = String.valueOf(b);
      if (paramDialogInterface.length() != 0) {}
      for (paramDialogInterface = "Accept button clicked for knocking participant ".concat(paramDialogInterface);; paramDialogInterface = new String("Accept button clicked for knocking participant "))
      {
        ezi.c("Babel", paramDialogInterface, new Object[0]);
        aal.c(1498);
        localcln.a(localkhk);
        return;
      }
    }
    paramDialogInterface = String.valueOf(b);
    if (paramDialogInterface.length() != 0) {}
    for (paramDialogInterface = "Reject button clicked for knocking participant ".concat(paramDialogInterface);; paramDialogInterface = new String("Reject button clicked for knocking participant "))
    {
      ezi.c("Babel", paramDialogInterface, new Object[0]);
      aal.c(1499);
      localcln.b(localkhk);
      return;
    }
  }
  
  public void onStart()
  {
    super.onStart();
    ((AlertDialog)c()).setCanceledOnTouchOutside(false);
  }
}

/* Location:
 * Qualified Name:     clt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */