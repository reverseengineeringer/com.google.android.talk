import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.SwitchPreference;

final class ewf
  implements Preference.OnPreferenceClickListener
{
  ewf(ewb paramewb, SwitchPreference paramSwitchPreference) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    eut.a(b.getActivity()).c(a.isChecked());
    b.b();
    return true;
  }
}

/* Location:
 * Qualified Name:     ewf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */