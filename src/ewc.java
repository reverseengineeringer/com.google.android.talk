import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.SwitchPreference;

final class ewc
  implements Preference.OnPreferenceClickListener
{
  ewc(ewb paramewb, SwitchPreference paramSwitchPreference) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    boolean bool = a.isChecked();
    eut.a(b.getActivity()).a(bool);
    if (bool) {
      ((ewi)ilh.a(b.getActivity(), ewi.class)).a(b.getActivity(), b);
    }
    for (;;)
    {
      return true;
      b.b();
    }
  }
}

/* Location:
 * Qualified Name:     ewc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */