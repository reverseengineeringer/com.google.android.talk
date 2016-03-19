import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.widget.ListView;
import com.google.android.libraries.social.settings.PreferenceScreen;

public class ijj
  extends av
  implements ijv
{
  private boolean a;
  private boolean b;
  private Handler c = new ijk(this);
  public ijs d;
  ListView e;
  private final Runnable f = new ijl(this);
  private View.OnKeyListener g = new ijm(this);
  
  public void a(PreferenceScreen paramPreferenceScreen)
  {
    if ((d.a(paramPreferenceScreen)) && (paramPreferenceScreen != null))
    {
      a = true;
      if ((b) && (!c.hasMessages(1))) {
        c.obtainMessage(1).sendToTarget();
      }
    }
  }
  
  public boolean a(ijc paramijc)
  {
    if ((paramijc.k() != null) && ((getActivity() instanceof ijn))) {
      return ((ijn)getActivity()).a();
    }
    return false;
  }
  
  public ijs b()
  {
    return d;
  }
  
  public PreferenceScreen c()
  {
    return d.d();
  }
  
  void d()
  {
    PreferenceScreen localPreferenceScreen = c();
    if (localPreferenceScreen != null) {
      localPreferenceScreen.a(e());
    }
  }
  
  public ListView e()
  {
    if (e == null)
    {
      View localView = getView();
      if (localView == null) {
        throw new IllegalStateException("Content view not yet created");
      }
      localView = localView.findViewById(16908298);
      if (!(localView instanceof ListView)) {
        throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
      }
      e = ((ListView)localView);
      if (e == null) {
        throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
      }
      e.setOnKeyListener(g);
      c.post(f);
    }
    return e;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (a) {
      d();
    }
    b = true;
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getBundle("settings:preferences");
      if (paramBundle != null)
      {
        PreferenceScreen localPreferenceScreen = c();
        if (localPreferenceScreen != null) {
          localPreferenceScreen.d(paramBundle);
        }
      }
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    d.a(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    d = new ijs(getActivity());
    d.a(this);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(aal.uU, paramViewGroup, false);
  }
  
  public void onDestroy()
  {
    d.i();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    e = null;
    c.removeCallbacks(f);
    c.removeMessages(1);
    super.onDestroyView();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    PreferenceScreen localPreferenceScreen = c();
    if (localPreferenceScreen != null)
    {
      Bundle localBundle = new Bundle();
      localPreferenceScreen.b(localBundle);
      paramBundle.putBundle("settings:preferences", localBundle);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    d.a(this);
  }
  
  public void onStop()
  {
    super.onStop();
    d.h();
    d.a(null);
  }
}

/* Location:
 * Qualified Name:     ijj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */