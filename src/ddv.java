import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.view.inputmethod.InputMethodManager;
import com.google.android.apps.hangouts.phone.BabelHomeActivity;
import com.google.android.apps.hangouts.views.MainViewPager;

public final class ddv
  extends ly
{
  public ddv(BabelHomeActivity paramBabelHomeActivity) {}
  
  public void a(int paramInt)
  {
    a.p();
    a.y_();
    ((InputMethodManager)a.getSystemService("input_method")).hideSoftInputFromWindow(a.p.getWindowToken(), 0);
    fcn localfcn = a.p.i();
    PreferenceManager.getDefaultSharedPreferences(a).edit().putString("last_selected_tab", d).apply();
  }
}

/* Location:
 * Qualified Name:     ddv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */