import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.TextView;

public final class dkp
  extends img
{
  BroadcastReceiver a;
  private haw aj;
  View b;
  String c;
  private String d;
  private TextView e;
  private TextView f;
  private View g;
  private View h;
  private Button i;
  
  void a()
  {
    g.setVisibility(8);
    if (c.equals("phone_verification_success"))
    {
      h.setVisibility(0);
      f.setVisibility(8);
      e.setText(getActivity().getString(aal.pa, new Object[] { gw.a().a(ezm.a(d, ezp.c), hh.a) }));
      if (Build.VERSION.SDK_INT >= 17) {
        e.setTextAlignment(4);
      }
    }
    do
    {
      return;
      aj.a(2406).d();
      e.setText(getActivity().getResources().getString(aal.pe));
      f.setText(getActivity().getResources().getString(aal.pd));
    } while (i == null);
    i.setVisibility(0);
    i.setText(getActivity().getResources().getString(aal.oS));
  }
  
  protected void a(int paramInt)
  {
    if (paramInt == gbi.g)
    {
      if (!c.equals("phone_verification_success")) {
        break label69;
      }
      aj.a(2197).d();
    }
    for (;;)
    {
      ba localba = getActivity();
      if (localba != null) {
        ((InputMethodManager)localba.getSystemService("input_method")).hideSoftInputFromWindow(localba.findViewById(16908290).getWindowToken(), 0);
      }
      return;
      label69:
      aj.a(2284).d();
    }
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    int j = ((hpu)binder.a(hpu.class)).a();
    aj = ((hba)binder.a(hba.class)).a(j);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    d = getArguments().getString("phone_number", "");
    b = paramLayoutInflater.inflate(aal.oQ, paramViewGroup, false);
    e = ((TextView)b.findViewById(gbi.u));
    f = ((TextView)b.findViewById(gbi.o));
    g = b.findViewById(gbi.s);
    h = b.findViewById(gbi.n);
    i = ((Button)getActivity().findViewById(gbi.f));
    if (paramBundle == null)
    {
      if (i != null) {
        i.setVisibility(4);
      }
      c = "";
    }
    for (;;)
    {
      return b;
      c = paramBundle.getString("verification_outcome");
      a();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putString("verification_outcome", c);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    a = new dkq(this);
    fi.a(getActivity()).a(a, new IntentFilter("phone_verification_outcome"));
  }
  
  public void onStop()
  {
    fi.a(getActivity()).a(a);
    super.onStop();
  }
}

/* Location:
 * Qualified Name:     dkp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */