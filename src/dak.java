import android.content.Context;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import com.google.android.apps.hangouts.peoplelistv2.impl.EditParticipantsView;

public final class dak
  implements View.OnFocusChangeListener
{
  public dak(EditParticipantsView paramEditParticipantsView) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      paramView = a;
      ((InputMethodManager)paramView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
    }
  }
}

/* Location:
 * Qualified Name:     dak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */