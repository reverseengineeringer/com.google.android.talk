import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

public final class ewk
  extends av
{
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(aal.rk, paramViewGroup, false);
    ((TextView)paramLayoutInflater.findViewById(16908310)).setText(getActivity().getString(aal.rp));
    ((TextView)paramLayoutInflater.findViewById(16908299)).setText(getActivity().getString(aal.ro));
    paramViewGroup = (Button)paramLayoutInflater.findViewById(aal.rg);
    paramViewGroup.setText(getActivity().getString(aal.rn));
    paramViewGroup.setOnClickListener(new ewl(this));
    ((Button)paramLayoutInflater.findViewById(aal.rf)).setOnClickListener(new ewm(this));
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     ewk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */