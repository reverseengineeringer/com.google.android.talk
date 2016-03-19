import android.content.res.Resources;
import android.os.Build.VERSION;
import android.view.View;
import android.view.Window;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.navigation.NavigationDrawerFragment;
import com.google.android.gms.people.accountswitcherview.SelectedAccountNavigationView;

public final class cuz
  extends oq
{
  public cuz(NavigationDrawerFragment paramNavigationDrawerFragment)
  {
    super(paramNavigationDrawerFragment.getActivity(), b, StressMode.gw, StressMode.gv);
  }
  
  private void c(int paramInt)
  {
    j.getActivity().getWindow().setStatusBarColor(j.getResources().getColor(paramInt));
  }
  
  private bfd e()
  {
    return dvd.e(j.ar.a());
  }
  
  public void a(int paramInt)
  {
    super.a(paramInt);
    if (j.ao != null) {
      j.ao = null;
    }
    if (paramInt != 0)
    {
      j.b();
      j.h.a(true);
    }
  }
  
  public final void a(View paramView)
  {
    super.a(paramView);
    j.getActivity().y_();
    j.a();
    aal.a(e(), 1558);
  }
  
  public final void a(View paramView, float paramFloat)
  {
    super.a(paramView, 0.0F);
    if (paramFloat == 0.0F) {
      j.ap = false;
    }
    for (;;)
    {
      if (Build.VERSION.SDK_INT >= 21)
      {
        if (paramFloat <= 0.0F) {
          break;
        }
        c(aal.cT);
      }
      return;
      if ((!j.ap) && (paramFloat > 0.0F))
      {
        j.ap = true;
        aen.b(j.getActivity().getCurrentFocus());
      }
    }
    c(aal.dh);
  }
  
  public final void b(View paramView)
  {
    super.b(paramView);
    if (Build.VERSION.SDK_INT >= 21) {
      c(aal.dh);
    }
    j.h.a();
    j.h.a(false);
    paramView = j.getActivity();
    if (paramView != null) {
      paramView.y_();
    }
    aal.a(e(), 1559);
    if (j.ao != null)
    {
      j.ao.run();
      j.ao = null;
    }
    j.e.c(0);
    j.b(j.e);
  }
}

/* Location:
 * Qualified Name:     cuz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */