import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;

public final class ewb
  extends PreferenceFragment
  implements ewj
{
  public void a()
  {
    if (getActivity() != null) {
      b();
    }
  }
  
  void b()
  {
    eut localeut = eut.a(getActivity());
    boolean bool = localeut.c();
    ((SwitchPreference)findPreference("wifi_calling_enabled_key")).setChecked(bool);
    Object localObject = findPreference("account_key");
    if (localObject != null)
    {
      ((Preference)localObject).setSummary(dvd.a(getActivity(), localeut.b()));
      ((Preference)localObject).setEnabled(bool);
    }
    localObject = (SwitchPreference)findPreference("ask_each_call_key");
    if (localObject != null)
    {
      ((SwitchPreference)localObject).setChecked(localeut.e());
      ((SwitchPreference)localObject).setEnabled(bool);
    }
    localObject = (SwitchPreference)findPreference("request_feedback_key");
    if (localObject != null)
    {
      ((SwitchPreference)localObject).setChecked(localeut.j());
      ((SwitchPreference)localObject).setEnabled(bool);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int j = 1;
    super.onCreate(paramBundle);
    addPreferencesFromResource(aal.rs);
    paramBundle = (SwitchPreference)findPreference("wifi_calling_enabled_key");
    paramBundle.setOnPreferenceClickListener(new ewc(this, paramBundle));
    paramBundle = findPreference("account_key");
    eut.a(getActivity());
    int i;
    if (eut.a().length <= 1)
    {
      i = 0;
      if (i != 0) {
        break label202;
      }
      getPreferenceScreen().removePreference(paramBundle);
      label75:
      paramBundle = (SwitchPreference)findPreference("ask_each_call_key");
      i = j;
      if (!eut.a(getActivity()).e())
      {
        i = j;
        if (!"hangouts_testing_users".equals(aal.a(getActivity(), "babel_user_to_allow_wifi_calling_for", "tycho_users"))) {
          i = 0;
        }
      }
      if (i != 0) {
        break label217;
      }
      getPreferenceScreen().removePreference(paramBundle);
      label136:
      paramBundle = (SwitchPreference)findPreference("request_feedback_key");
      if (aal.a(getActivity(), "babel_request_call_feedback", false)) {
        break label233;
      }
      getPreferenceScreen().removePreference(paramBundle);
    }
    for (;;)
    {
      b();
      return;
      if (!"hangouts_testing_users".equals(aal.a(getActivity(), "babel_user_to_allow_wifi_calling_for", "tycho_users")))
      {
        i = 0;
        break;
      }
      i = 1;
      break;
      label202:
      paramBundle.setOnPreferenceClickListener(new ewd(this));
      break label75;
      label217:
      paramBundle.setOnPreferenceClickListener(new ewe(this, paramBundle));
      break label136;
      label233:
      paramBundle.setOnPreferenceClickListener(new ewf(this, paramBundle));
    }
  }
}

/* Location:
 * Qualified Name:     ewb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */