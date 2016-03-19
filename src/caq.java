import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class caq
  extends au
{
  String aj;
  private String[] ak;
  
  public Dialog a(Bundle paramBundle)
  {
    paramBundle = getArguments();
    ak = ((String[])paramBundle.getSerializable("dump_files"));
    aj = paramBundle.getString("action");
    paramBundle = getActivity().getLayoutInflater().inflate(aal.fy, null);
    ((ListView)paramBundle.findViewById(aen.bK)).setAdapter(new car(this, getActivity(), ak));
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
    Resources localResources = getResources();
    if ("load".equals(aj)) {
      localBuilder.setTitle(localResources.getString(StressMode.fd));
    }
    for (;;)
    {
      localBuilder.setView(paramBundle);
      return localBuilder.create();
      if ("email".equals(aj)) {
        localBuilder.setTitle(localResources.getString(StressMode.bL));
      }
    }
  }
}

/* Location:
 * Qualified Name:     caq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */