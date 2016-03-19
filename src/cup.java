import android.os.Build.VERSION;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewStub.OnInflateListener;
import android.widget.FrameLayout;
import android.widget.ListView;
import com.google.android.apps.hangouts.navigation.NavigationDrawerFragment;
import com.google.android.gms.people.accountswitcherview.SelectedAccountNavigationView;

public final class cup
  implements ViewStub.OnInflateListener
{
  public cup(NavigationDrawerFragment paramNavigationDrawerFragment, LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup) {}
  
  public void onInflate(ViewStub paramViewStub, View paramView)
  {
    c.aj = ((ListView)paramView);
    c.e = ((SelectedAccountNavigationView)a.inflate(aal.eR, b));
    c.e.a();
    c.e.a(c.f);
    c.e.a(c.g);
    c.e.a(c);
    c.e.a(c);
    c.e.a(aal.gF, c.ay, c.az);
    c.e.c(0);
    if (c.al != null) {
      c.e.a(c.al);
    }
    c.e.a(c.am, c.an);
    paramViewStub = c;
    paramView = c.e;
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramView = (FrameLayout)paramView;
      paramView.setFitsSystemWindows(true);
      paramView.setOnApplyWindowInsetsListener(new cvc(paramViewStub));
      paramView.setForegroundGravity(55);
      au = new gms();
      paramView.setForeground(au);
    }
    c.aj.addHeaderView(c.e);
    c.aj.setAdapter(c.h);
    c.aj.addHeaderView(a.inflate(aal.gt, c.aj, false));
    c.aj.setOnItemClickListener(c.av);
  }
}

/* Location:
 * Qualified Name:     cup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */