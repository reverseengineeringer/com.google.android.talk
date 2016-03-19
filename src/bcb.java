import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class bcb
  extends dlv
{
  private dty a;
  private bfd b;
  
  public bcb()
  {
    super(aal.iR, new int[] { StressMode.ts, StressMode.tt });
  }
  
  protected String a()
  {
    if ((((dty)ilh.a(getActivity().getApplicationContext(), dty.class)).b(getActivity())) && ("com.google.android.apps.hangouts.phone.recentcalls".equals(getActivity().getIntent().getAction()))) {
      return getString(aal.iV);
    }
    return getString(aal.iZ);
  }
  
  protected void a(int paramInt)
  {
    PreferenceManager.getDefaultSharedPreferences(getActivity()).edit().putBoolean("call_promo_shown", true).apply();
    if (paramInt == StressMode.tt)
    {
      if (!a.b(getActivity())) {
        break label68;
      }
      getActivity().startActivity(aal.f(b));
    }
    for (;;)
    {
      super.a(paramInt);
      return;
      label68:
      aal.b(getActivity(), "com.google.android.apps.hangoutsdialer");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    aen.a(paramLayoutInflater);
    a = ((dty)ilh.a(getActivity().getApplicationContext(), dty.class));
    b = dvd.e(((hpu)binder.a(hpu.class)).a());
    paramViewGroup = (Button)paramLayoutInflater.findViewById(StressMode.tt);
    paramViewGroup.setText(aal.iX);
    paramBundle = (Button)paramLayoutInflater.findViewById(StressMode.ts);
    paramBundle.setText(aal.iY);
    if (!a.b(getActivity())) {
      paramViewGroup.setText(aal.iW);
    }
    for (;;)
    {
      aal.a((ImageView)paramLayoutInflater.findViewById(StressMode.tr), context.getResources(), aen.hF);
      return paramLayoutInflater;
      if ("com.google.android.apps.hangouts.phone.recentcalls".equals(getActivity().getIntent().getAction()))
      {
        paramBundle.setVisibility(8);
        paramViewGroup.setText(aal.iU);
        ((TextView)paramLayoutInflater.findViewById(StressMode.to)).setText(aal.iV);
      }
    }
  }
}

/* Location:
 * Qualified Name:     bcb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */