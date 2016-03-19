import android.content.BroadcastReceiver;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.android.libraries.quantum.snackbar.Snackbar;

public final class bap
  extends dlv
{
  Button a;
  Button b;
  int c;
  String d;
  ProgressBar e;
  TextView f;
  TextView g;
  BroadcastReceiver h;
  bba i;
  
  public bap()
  {
    super(aal.in, new int[] { aen.hA, aen.hB });
  }
  
  public static bap a(boolean paramBoolean, String paramString)
  {
    bap localbap = new bap();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("callerid_from_promo_flow", paramBoolean);
    localBundle.putString("callerid_current_sim_number", paramString);
    localbap.setArguments(localBundle);
    return localbap;
  }
  
  protected String a()
  {
    return getString(aal.iN);
  }
  
  protected void a(int paramInt)
  {
    ill localill = context;
    int j = c;
    ((hpz)ilh.a(localill, hpz.class)).b(j).b("callerid_promo_shown", true).d();
    super.a(paramInt);
  }
  
  protected void b()
  {
    b.setEnabled(true);
    a.setEnabled(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    c = ((hpu)binder.a(hpu.class)).a();
    i = new bba(context, c);
    boolean bool = aal.a(c, ezm.f());
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    aen.a(paramLayoutInflater);
    f = ((TextView)paramLayoutInflater.findViewById(aen.hz));
    g = ((TextView)paramLayoutInflater.findViewById(aen.hy));
    d = getArguments().getString("callerid_current_sim_number");
    aal.a(g, context, context.getString(aal.iL, new Object[] { ezm.o(d), aal.e("https://www.google.com/support/hangouts/?hl=%locale%", "android_caller_id").toString() }));
    a = ((Button)paramLayoutInflater.findViewById(aen.hA));
    b = ((Button)paramLayoutInflater.findViewById(aen.hB));
    e = ((ProgressBar)paramLayoutInflater.findViewById(aen.hv));
    b.setText(aal.iE);
    a.setText(aal.iH);
    aal.a((ImageView)paramLayoutInflater.findViewById(aen.hx), context.getResources(), aen.hD);
    if (getArguments().getBoolean("callerid_from_promo_flow"))
    {
      i.a(2252);
      if (bool) {
        i.a(2253);
      }
      b.setEnabled(false);
      a.setEnabled(false);
      getActivity().f().b(1, null, new bat(this)).u();
    }
    for (;;)
    {
      paramViewGroup = (Snackbar)paramLayoutInflater.findViewById(aen.hC);
      paramViewGroup.a(context.getString(aal.iF, new Object[] { ((hpu)binder.a(hpu.class)).c().b("account_name") }));
      paramViewGroup.setVisibility(0);
      f.setText(context.getString(aal.iN, new Object[] { ezm.p(d) }));
      b.setOnClickListener(new baq(this));
      return paramLayoutInflater;
      a.setText(context.getString(aal.iG));
    }
  }
  
  public void onPause()
  {
    super.onPause();
    fi.a(context).a(h);
  }
}

/* Location:
 * Qualified Name:     bap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */