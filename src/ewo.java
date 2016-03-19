import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public final class ewo
  extends av
{
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(aal.rl, paramViewGroup, false);
    paramViewGroup = getActivity().getString(aal.rr);
    paramBundle = getActivity().getString(aal.rq);
    ListView localListView = (ListView)paramLayoutInflater.findViewById(16908298);
    localListView.setAdapter(new ArrayAdapter(getActivity(), 17367043, new String[] { paramViewGroup, paramBundle }));
    localListView.setOnItemClickListener(new ewp(this));
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     ewo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */