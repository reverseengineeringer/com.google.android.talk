import android.support.v4.widget.DrawerLayout;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.google.android.apps.hangouts.navigation.NavigationDrawerFragment;
import com.google.android.gms.people.accountswitcherview.SelectedAccountNavigationView;

public final class cuu
  implements AdapterView.OnItemClickListener
{
  public cuu(NavigationDrawerFragment paramNavigationDrawerFragment) {}
  
  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    hbs.a("Expected null", a.ao);
    a.b.i(a.getView());
    int i = a.e.b();
    switch (a.e.b())
    {
    default: 
      a.ao = null;
      hbs.a(36 + "Unknown navigation mode: " + i);
      return;
    case 0: 
      paramAdapterView = (cve)a.aj.getItemAtPosition(paramInt);
      hbs.b("Expected non-null", paramAdapterView);
      a.ao = new cuv(this, paramAdapterView);
      return;
    }
    paramInt -= a.aj.getHeaderViewsCount();
    i = a.i.getItemViewType(paramInt);
    paramAdapterView = a.i.a(paramInt);
    a.ao = new cuw(this, i, paramAdapterView);
  }
}

/* Location:
 * Qualified Name:     cuu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */