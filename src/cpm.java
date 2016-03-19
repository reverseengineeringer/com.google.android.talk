import android.app.Dialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public final class cpm
  extends hpj<hpl>
{
  cps aj;
  
  public Dialog a(Bundle paramBundle)
  {
    paramBundle = super.a(paramBundle);
    paramBundle.setOnKeyListener(new cpp(this));
    return paramBundle;
  }
  
  void a(cps paramcps)
  {
    aj = paramcps;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    b(false);
    paramViewGroup = (hpu)ilh.a(getContext(), hpu.class);
    paramBundle = (hba)ilh.a(getContext(), hba.class);
    paramBundle.a(paramViewGroup.a()).a(3031).d();
    setRetainInstance(true);
    ((ImageView)paramLayoutInflater.findViewById(aen.kc)).setImageDrawable(getResources().getDrawable(aal.na));
    ((TextView)paramLayoutInflater.findViewById(aen.kf)).setText(getResources().getString(aal.nc));
    Button localButton = (Button)paramLayoutInflater.findViewById(aen.kh);
    localButton.setText(getResources().getString(aal.ne));
    localButton.setTextColor(getResources().getColor(aal.mX));
    localButton.setOnClickListener(new cpn(this, paramBundle, paramViewGroup));
    localButton = (Button)paramLayoutInflater.findViewById(aen.kb);
    localButton.setBackground(getResources().getDrawable(aal.mZ));
    localButton.setText(getResources().getString(aal.nb));
    localButton.setTextColor(getResources().getColor(aal.mY));
    localButton.setOnClickListener(new cpo(this, paramBundle, paramViewGroup));
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    if ((c() != null) && (getRetainInstance())) {
      c().setDismissMessage(null);
    }
    super.onDestroyView();
  }
  
  protected int q()
  {
    return 2;
  }
  
  protected String r()
  {
    return getResources().getString(aal.nd);
  }
  
  protected AdapterView.OnItemClickListener s()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     cpm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */