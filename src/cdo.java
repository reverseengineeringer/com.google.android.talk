import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.ArrayList;
import java.util.List;

public final class cdo
  extends au
{
  public Dialog a(Bundle paramBundle)
  {
    paramBundle = new AlertDialog.Builder(getActivity());
    View localView = getActivity().getLayoutInflater().inflate(aal.gJ, null);
    ListView localListView = (ListView)localView.findViewById(aen.cq);
    Resources localResources = getActivity().getResources();
    String str = enu.a(enu.b());
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(localResources.getString(StressMode.aI));
    localArrayList.add(localResources.getString(StressMode.aP, new Object[] { str }));
    localArrayList.add(localResources.getString(StressMode.A, new Object[] { str }));
    localListView.setAdapter(new cdp(this, getActivity(), localArrayList));
    paramBundle.setTitle(StressMode.jM).setView(localView);
    return paramBundle.create();
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    ((cdn)getTargetFragment()).getActivity().finish();
  }
}

/* Location:
 * Qualified Name:     cdo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */