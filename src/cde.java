import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cde
  extends au
{
  public Dialog a(Bundle paramBundle)
  {
    Object localObject = getArguments().getString("name");
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
    View localView = getActivity().getLayoutInflater().inflate(aal.fr, null);
    paramBundle = (EditText)localView.findViewById(aen.bp);
    paramBundle.setText((CharSequence)localObject);
    paramBundle.setSelection(0, paramBundle.getText().toString().length());
    localBuilder.setTitle(StressMode.id).setView(localView).setPositiveButton(getString(StressMode.ie), new cdg(this, paramBundle)).setNegativeButton(getString(StressMode.ic), new cdf(this));
    localObject = localBuilder.create();
    paramBundle.addTextChangedListener(new cdh(this, (AlertDialog)localObject));
    ((AlertDialog)localObject).getWindow().setSoftInputMode(5);
    return (Dialog)localObject;
  }
}

/* Location:
 * Qualified Name:     cde
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */