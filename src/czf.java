import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.HangoutActivity;

public final class czf
  extends hpj<ArrayAdapter<String>>
{
  int aj;
  czi ak;
  
  void a(czi paramczi)
  {
    ak = paramczi;
  }
  
  void b(int paramInt)
  {
    aj = paramInt;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    aal.c(2834);
    ((HangoutActivity)getActivity()).n();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    ((ImageView)paramLayoutInflater.findViewById(aen.kc)).setImageResource(aal.nW);
    ((TextView)paramLayoutInflater.findViewById(aen.kf)).setText(aal.nZ);
    paramViewGroup = aal.e("https://www.google.com/support/hangouts/?hl=%locale%", "peer2peer");
    paramBundle = (Button)paramLayoutInflater.findViewById(aen.kh);
    paramBundle.setText(aal.nY);
    paramBundle.setTextColor(getResources().getColor(aal.nU));
    paramBundle.setOnClickListener(new czg(this, paramViewGroup));
    paramViewGroup = (Button)paramLayoutInflater.findViewById(aen.kb);
    paramViewGroup.setText(aal.nX);
    paramViewGroup.setBackgroundResource(aal.nV);
    paramViewGroup.setTextColor(-1);
    paramViewGroup.setOnClickListener(new czh(this));
    return paramLayoutInflater;
  }
  
  public void onStart()
  {
    super.onStart();
    aal.c(2832);
  }
  
  public void onStop()
  {
    super.onStop();
    aal.c(2834);
    ((HangoutActivity)getActivity()).n();
  }
  
  protected int q()
  {
    return 2;
  }
  
  protected String r()
  {
    return getActivity().getString(aal.oa);
  }
  
  protected AdapterView.OnItemClickListener s()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     czf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */