import android.content.Context;
import android.view.inputmethod.InputMethodManager;
import com.google.android.apps.hangouts.peoplelistv2.impl.DeleteOnEmptyEditText;
import com.google.android.apps.hangouts.peoplelistv2.impl.EditParticipantsView;

public final class dan
  implements Runnable
{
  dan(EditParticipantsView paramEditParticipantsView) {}
  
  public void run()
  {
    a.e.clearFocus();
    a.e.requestFocus();
    a.e.setCursorVisible(true);
    ((InputMethodManager)a.getContext().getSystemService("input_method")).showSoftInput(a.e, 1);
    a.e.sendAccessibilityEvent(4);
  }
}

/* Location:
 * Qualified Name:     dan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */