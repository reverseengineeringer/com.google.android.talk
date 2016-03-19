import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.WindowInsets;
import com.google.android.apps.hangouts.navigation.NavigationDrawerFragment;
import com.google.android.gms.people.accountswitcherview.SelectedAccountNavigationView;

public final class cvc
  implements View.OnApplyWindowInsetsListener
{
  cvc(NavigationDrawerFragment paramNavigationDrawerFragment) {}
  
  public WindowInsets onApplyWindowInsets(View paramView, WindowInsets paramWindowInsets)
  {
    int i = paramWindowInsets.getSystemWindowInsetTop();
    a.au.a(i);
    a.e.a(i);
    return paramWindowInsets;
  }
}

/* Location:
 * Qualified Name:     cvc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */