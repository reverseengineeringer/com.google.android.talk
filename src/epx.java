import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.google.android.apps.hangouts.statusmessage.impl.StatusMessageSettingsFragment;

final class epx
  implements View.OnClickListener
{
  epx(epv paramepv) {}
  
  public void onClick(View paramView)
  {
    paramView = a;
    ((InputMethodManager)a.getSystemService("input_method")).hideSoftInputFromWindow(e.getWindowToken(), 0);
    b.getActivity().finish();
  }
}

/* Location:
 * Qualified Name:     epx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */